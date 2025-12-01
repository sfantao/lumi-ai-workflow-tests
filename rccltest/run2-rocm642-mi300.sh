#!/bin/bash -eux
BASENAME="$(basename $0 | sed 's/.sh$//' | sed 's/^run2-//')"
SIF=$(realpath $SIF)

mkdir -p $BASENAME.runfolder
cd $BASENAME.runfolder
mkdir -p tb-logs

mpicmd="undefined mpicommand"

#
# BP0: x1001c4s3b0n0
#
cat > rankfile << EOF
rank 0=x1001c4s3b0n0 slots=48-55
rank 1=x1001c4s3b0n0 slots=56-63
rank 2=x1001c4s3b0n0 slots=16-23
rank 3=x1001c4s3b0n0 slots=24-31
rank 4=x1001c4s3b0n0 slots=0-7
rank 5=x1001c4s3b0n0 slots=8-15
rank 6=x1001c4s3b0n0 slots=32-39
rank 7=x1001c4s3b0n0 slots=40-47
EOF

if [ $(hostname) = "x1001c4s3b0n0" ] ; then
    mpicmd="/opt/ompi-5.0.3/bin/mpirun \
                -np 8 \
                --map-by rankfile:file=rankfile \
                --report-bindings \
                docker run \
                    --cap-add=SYS_PTRACE \
                    --ipc=host \
                    --privileged=true \
                    --shm-size=128GB \
                    --network=host \
                    --device=/dev/kfd \
                    --device=/dev/dri \
                    --group-add video \
                    -w /workdir \
                    -v $(pwd):/workdir \
                    --rm $TAG"
fi

#
# Lockhart
#
if [ $(hostname) = "lockhart-login1" ] ; then

    module load singularity
    
    Nodes=1
    c=fe
    MYMASKS="0x${c}000000000000,0x${c}00000000000000,0x${c}0000,0x${c}000000,0x${c},0x${c}00,0x${c}00000000,0x${c}0000000000"

    #export MASTER_ADDR=\$(scontrol show hostname "\$SLURM_NODELIST" | head -n1)

    mpicmd="srun \
        --mpi=pmi2 \
        -p MI300A_A1_COS_OK \
        --time 1:00:00 \
        --mem 0 \
        --exclusive \
        --threads-per-core=1 \
        -c 24 \
        -N $Nodes \
        -n $((Nodes*4)) \
        --gpus $((Nodes*4)) \
        singularity exec \
            -B /var/spool/slurm \
            -B $(pwd):/workdir \
            -B /home/sfantao/lumi-ai/megatron:/megatron \
            --pwd /workdir \
            $SIF"

    # Doesn't work due to libc version incompatibilty with the container.
    # SIF=/home/sfantao/lumi-ai-workflow-tests/lumi-rocm-rocm-6.2.4.sif
    # mpicmd="srun \
    #     --mpi=pmi2 \
    #     -p MI250X_A1_COS_OK \
    #     --time 1:00:00 \
    #     --mem 0 \
    #     --exclusive \
    #     --threads-per-core=1 \
    #     -c 8 \
    #     -N $Nodes \
    #     -n $((Nodes*8)) \
    #     --cpu-bind=mask_cpu:$MYMASKS \
    #     --gpus $((Nodes*8)) \
    #     singularity exec \
    #         -B /opt/cray \
    #         -B /lib64/libc.so.6 \
    #         -B /var/spool/slurm \
    #         -B $(pwd):/workdir \
    #         --pwd /workdir \
    #         $SIF"
fi

#
# LUMI
#
if [[ $(hostname) == "uan"* ]] ; then
    
    Nodes=8
    c=fe
    MYMASKS="0x${c}000000000000,0x${c}00000000000000,0x${c}0000,0x${c}000000,0x${c},0x${c}00,0x${c}00000000,0x${c}0000000000"

    #export MASTER_ADDR=\$(scontrol show hostname "\$SLURM_NODELIST" | head -n1)
    

    mpicmd="srun \
        --mpi=pmi2 \
        -p dev-g \
        --time 1:00:00 \
        --mem 0 \
        --exclusive \
        --threads-per-core=1 \
        -c 7 \
        -N $Nodes \
        -n $((Nodes*8)) \
        --cpu-bind=mask_cpu:$MYMASKS \
        --gpus $((Nodes*8)) \
        singularity exec \
            -B /var/spool/slurmd \
            -B $(pwd):/workdir \
            --pwd /workdir \
            $SIF"

    # SIF=/appl/local/containers/sif-images/lumi-rocm-rocm-6.2.4.sif
    # mpicmd="srun \
    #     -p dev-g \
    #     --time 1:00:00 \
    #     --mem 0 \
    #     --exclusive \
    #     --threads-per-core=1 \
    #     -c 7 \
    #     -N $Nodes \
    #     -n $((Nodes*8)) \
    #     --cpu-bind=mask_cpu:$MYMASKS \
    #     --gpus $((Nodes*8)) \
    #     singularity exec \
    #         -B /opt/cray \
    #         -B /var/spool/slurmd \
    #         -B $(pwd):/workdir \
    #         --pwd /workdir \
    #         $SIF"
fi

#
# Thera
#
if [[ $(hostname) == "TheraS02"* ]] ; then

    module load singularity
    jobid=''
    jobid="--jobid $(squeue --me | awk '{print $1}' | tail -n1)"
    #jobid='--jobid 257055'

    Nodes=1
    c=fe
    MYMASKS="0x${c}000000000000,0x${c}00000000000000,0x${c}0000,0x${c}000000,0x${c},0x${c}00,0x${c}00000000,0x${c}0000000000"

    #export MASTER_ADDR=\$(scontrol show hostname "\$SLURM_NODELIST" | head -n1)

    mpicmd="srun -l \
        $jobid \
        --mpi=pmi2 \
        -p MI300x \
        --time 4:00:00 \
        --mem 0 \
        --exclusive \
        --threads-per-core=1 \
        -c 16 \
        -N $Nodes \
        -n $((Nodes*8)) \
        --gpus $((Nodes*8)) \
        singularity exec \
            -B /var/spool/slurmd \
            -B $(pwd):/workdir \
            -B /mnt/thera/data/incoming/sfantao/lumi-ai/megatron:/megatron \
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

source venv/bin/activate

# For machines with no slingshot
export NCCL_SOCKET_IFNAME=ens51np0
unset NCCL_SOCKET_IFNAME

export PMIX_MCA_psec=^munge
#export NCCL_NET_PLUGIN=librccl-net.so

# export FI_MR_CACHE_MONITOR=userfaultfd
# export FI_CXI_DEFAULT_CQ_SIZE=131072
# export FI_CXI_RX_MATCH_MODE=software
# export FI_CXI_RDZV_PROTO=alt_read

# export NCCL_DEBUG=INFO
# export NCCL_DEBUG_SUBSYS=INIT,COLL

export AITER_JIT_DIR=/tmp/my-aiter-jit-dir-\$SLURM_LOCALID
# rm -rf \$AITER_JIT_DIR
# mkdir -p \$AITER_JIT_DIR
# cd \$AITER_JIT_DIR
# tar -xf ~/aiter.tar

cd /megatron

export MASTER_ADDR=TheraC18 #\$(echo \$SLURM_NODELIST | cut -d, -f1)
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

NLAYERS=$((112/4))
NHIDDEN=$((12288/4))
NHEADS=$((96))
FFN_HIDDEN_SIZE=$((43008/4))
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
    --train-iters 1 \
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
    --eval-iters 1 \
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

TP_SIZE=8
PP_SIZE=1
CP_SIZE=1
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
    --num-workers 8 \
    --micro-batch-size \$MICRO_BATCH_SIZE \
	--recompute-activations \
    \
    "

    # --transformer-impl=transformer_engine \
    #         --fp8-format=hybrid \
    #         --fp8-margin=0 \
    #         --fp8-interval=1 \
    #         --fp8-amax-history-len=1024 \
    #         --fp8-amax-compute-algo=max \
    #         --attention-softmax-in-fp32 \
#    --profile-ranks 3 \
#    --profile-step-start 3 \
#    --profile-step-end 4 \
#    --use-pytorch-profiler \
#    --profile --tensorboard-dir /workdir/tb-logs \
#

CMD=" \
    Megatron-LM/pretrain_gpt.py \
    \$FIXED_GPT_ARGS \
	\$GPT_ARGS \
    "
#Distributed args
export RANK=\$SLURM_PROCID
export LOCAL_RANK=\$SLURM_LOCALID
export LOCAL_WORLD_SIZE=\$SLURM_TASKS_PER_NODE
export WORLD_SIZE=\$SLURM_NPROCS

if [ "\${RANK}" = "100000" ]; then
	echo \$CMD
    rocprof-compute profile --device 0 --roof-only -n thera300x -- python -u \$CMD
else
    python -u \$CMD
fi

#python -u \$CMD
EOF
chmod +x run.sh 

$mpicmd ./run.sh |& tee res.log

exit 0

