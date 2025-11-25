#!/bin/bash -eux
#SBATCH --job-name Megatron-LM_test
#SBATCH -p standard-g 
#SBATCH --threads-per-core 1
#SBATCH --exclusive
#SBATCH --gpus-per-node 8 
#SBATCH -N ##Nodes##
#SBATCH -c 56
#SBATCH -t 3:00:00
#SBATCH --mem 0
#SBATCH -o job-stdout.txt
#SBATCH -e job-stderr.txt

BASENAME=rocm642 #"$(basename $0 | sed 's/.sh$//' | sed 's/^run2-//')"
SIF=$(realpath $SIF)

mkdir -p $BASENAME.runfolder
cd $BASENAME.runfolder
mkdir -p tb-logs

mpicmd="undefined mpicommand"

#
# LUMI
#
if true ; then
    
    Nodes=$SLURM_NNODES
    c=fe
    MYMASKS="0x${c}000000000000,0x${c}00000000000000,0x${c}0000,0x${c}000000,0x${c},0x${c}00,0x${c}00000000,0x${c}0000000000"
    MYMASKS="0x${c}000000000000,0x${c}0000,0x${c},0x${c}00000000"


    #export MASTER_ADDR=\$(scontrol show hostname "\$SLURM_NODELIST" | head -n1)
    
    mpicmd="srun -l \
        --time 3:00:00 \
        --mem 0 \
        --exclusive \
        --threads-per-core=1 \
        -c 14 \
        -N $Nodes \
        -n $((Nodes*4)) --tasks-per-node 4 \
        --cpu-bind=mask_cpu:$MYMASKS \
        --gpus $((Nodes*8)) \
        singularity exec \
            -B /var/spool/slurmd \
            -B /opt/cray \
            -B $(pwd):/workdir \
            -B /pfs/lustrep2/scratch/project_462000125/samantao/lumi-ai/megatron:/megatron \
            --pwd /workdir \
            $SIF"


fi

#
# RCCL test
#
if [ 1 -eq 0 ] ; then

    rm -rf run.sh 
    cat > run.sh << EOF
#!/bin/bash -e
set -x

export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

export PMIX_MCA_psec=^munge
export NCCL_NET_PLUGIN=librccl-net.so

# export FI_MR_CACHE_MONITOR=userfaultfd
# export FI_CXI_DEFAULT_CQ_SIZE=131072
# export FI_CXI_RX_MATCH_MODE=software
# export FI_CXI_RDZV_PROTO=alt_read

# export NCCL_DEBUG=INFO
# export NCCL_DEBUG_SUBSYS=INIT,COLL

# -b minbytes
# -e maxbytes
# -f increment factor
# -g gpus per thread
/opt/rccltests/\$COLL_TYPE -z 1 -b 4 -e 2048M -f 2 -g 1 -t 1 -R 1 -n 20 -w 5 -d half


#/opt/rccltests/all_reduce_perf -z 1 -b 4 -e 2048M -f 2 -g 1 -t 1 -R 1 -n 20 -w 5 -d half

EOF
chmod +x run.sh 

for i in \
    all_gather_perf \
    all_reduce_perf \
    alltoall_perf \
    alltoallv_perf \
    broadcast_perf \
    gather_perf \
    hypercube_perf \
    reduce_perf \
    reduce_scatter_perf \
    scatter_perf \
    sendrecv_perf ; do

    if [[ "$i" == "c_"* ]] ; then continue; fi
    if [[ "$i" == "x_"* ]] ; then continue; fi
    if [[ "$i" == "h_"* ]] ; then continue; fi

export COLL_TYPE=$i
$mpicmd ./run.sh |& tee res.log

done
fi

#
# Megatron
#

rm -rf run.sh 
cat > run.sh << EOF
#!/bin/bash -e
set -x

export HIP_VISIBLE_DEVICES=0,2,4,6

# For machines with no slingshot
# unset NCCL_SOCKET_IFNAME

export PMIX_MCA_psec=^munge
export NCCL_NET_PLUGIN=librccl-net.so

export FI_MR_CACHE_MONITOR=userfaultfd
export FI_CXI_DEFAULT_CQ_SIZE=131072
# export FI_CXI_RX_MATCH_MODE=software
# export FI_CXI_RDZV_PROTO=alt_read

export HSA_ENABLE_SDMA=0
export RCCL_MSCCL_FORCE_ENABLE=1
export OMP_NUM_THREADS=1 

# export NCCL_DEBUG=INFO
# export NCCL_DEBUG_SUBSYS=INIT,COLL

export AITER_JIT_DIR=/tmp/my-aiter-jit-dir-\$SLURM_LOCALID

cd /megatron

#export MASTER_ADDR=\$(echo \$SLURM_NODELIST | cut -d, -f1)
export MASTER_PORT=45678

set -eox pipefail

export CUDA_DEVICE_MAX_CONNECTIONS=1                    #This is needed for sequence paralellism
export PYTHONWARNINGS=ignore
export TRITON_ALWAYS_COMPILE=1                          #Always compile ops again instead of caching. TE Triton ops are compiled ahead of time anyway though

######################################################
### GPT TRAINING ARGUMENTS FIXED FOR THE BENCHMARK ###
######################################################

#LEARNING RATE
LR=1.5e-4
MIN_LR=1.5e-5
INIT_METHOD_STD=0.00747017

TRAIN_DATA=data/fineweb-10BT-BPE_text_document
MERGES=data/merges.txt
VOCAB=data/vocab.json

NLAYERS=$((112))
NHIDDEN=$((12288))
NHEADS=$((96))
FFN_HIDDEN_SIZE=$((43008))
SEQ_LEN=$((8192))
NUM_QUERY_GROUPS=$((24))

GLOBAL_BATCH_SIZE=512

FIXED_GPT_ARGS=" \
    --num-layers \$NLAYERS \
    --hidden-size \$NHIDDEN \
    --num-attention-heads \$NHEADS \
    --ffn-hidden-size \$FFN_HIDDEN_SIZE \
    --max-position-embeddings \$SEQ_LEN \
    --seq-length \$SEQ_LEN \
    --train-iters 5 \
    --tokenizer-type GPT2BPETokenizer \
    --vocab-file \$VOCAB \
    --merge-file \$MERGES \
    --data-path \$TRAIN_DATA \
    --global-batch-size \$GLOBAL_BATCH_SIZE \
    --disable-bias-linear \
    --init-method-std \$INIT_METHOD_STD \
    --normalization RMSNorm \
    --seed 42 \
    --untie-embeddings-and-output-weights \
    --swiglu \
    --attention-dropout 0 \
    --hidden-dropout 0 \
    --use-rotary-position-embeddings \
    --group-query-attention \
    --num-query-groups \$NUM_QUERY_GROUPS \
    --use-flash-attn \
    --eval-iters 5 \
    --log-throughput \
    --log-progress \
    --log-params-norm \
    --log-interval 1 \
    --optimizer adam \
    --adam-beta1 0.9 \
    --adam-beta2 0.95 \
    --adam-eps 1e-5 \
    --lr \$LR \
    --min-lr \$MIN_LR \
    --lr-decay-style cosine \
    --clip-grad 1.0 \
    --weight-decay 1e-1 \
    "

######################################################
######### ADJUSTABLE GPT TRAINING ARGUMENTS ##########
######################################################

# Original
TP_SIZE=8
PP_SIZE=8
CP_SIZE=2
MICRO_BATCH_SIZE=1

TP_SIZE=4
PP_SIZE=16
CP_SIZE=2
MICRO_BATCH_SIZE=1

GPT_ARGS=" \
    --bf16 \
    --attention-softmax-in-fp32 \
    --accumulate-allreduce-grads-in-fp32 \
    --distributed-timeout-minutes 10 \
    --no-gradient-accumulation-fusion \
    --no-bias-swiglu-fusion \
    --use-distributed-optimizer \
    --tensor-model-parallel-size \$TP_SIZE \
    --pipeline-model-parallel-size \$PP_SIZE \
    --context-parallel-size \$CP_SIZE \
    --sequence-parallel \
    --dataloader-type single \
    --num-workers 7 \
    --micro-batch-size \$MICRO_BATCH_SIZE \
	--recompute-activations \
    \
    "

#    --profile-ranks 0 \
#    --profile-step-start 3 \
#    --profile-step-end 4 \
#    --use-pytorch-profiler \
#    --profile --tensorboard-dir /workdir/tb-logs \
#

CMD=" \
    Megatron-LM-f612bdf/pretrain_gpt.py \
    \$FIXED_GPT_ARGS \
	\$GPT_ARGS \
    "
#Distributed args
export RANK=\$SLURM_PROCID
export LOCAL_RANK=\$SLURM_LOCALID
export LOCAL_WORLD_SIZE=\$SLURM_TASKS_PER_NODE
export WORLD_SIZE=\$SLURM_NPROCS

if [ "\${RANK}" = "0" ]; then
	echo \$CMD
fi

python -u \$CMD |& tee /workdir/tb-logs/logs.\$SLURM_PROCID.txt
EOF
chmod +x run.sh 

export CC=gcc-12
export CXX=g++-12
export MASTER_ADDR=$(hostname)

$mpicmd ./run.sh |& tee res.log

exit 0

