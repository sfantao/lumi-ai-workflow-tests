++ basename ./run1-rocm642-mi300.sh
++ sed 's/.sh$//'
++ sed 's/^run1-//'
+ BASENAME=rocm642-mi300
+++ pwd
++ basename /data1/sfantao/lumi-ai-workflow-tests/rccltest
+ TAG=lumi-ai-workflow-tests/rccltest:rocm642-mi300
+++ pwd
++ basename /data1/sfantao/lumi-ai-workflow-tests/rccltest
+ SIF=rccltest-rocm642-mi300.sif
+++ pwd
++ basename /data1/sfantao/lumi-ai-workflow-tests/rccltest
+ TESTNAME=rccltest
+ '[' 1 -eq 1 ']'
+ rm -rf /tmp/sfantao-sif-build-pipe
+ mkdir /tmp/sfantao-sif-build-pipe
+ TAG=rocm/megatron-lm:v25.9_gfx942
+ SIF=megatron-lm-v25.9_gfx942.sif
+ rsync -avhc --progress run2-rocm642-mi300.sh lockhart-login1:/home/sfantao/lumi-ai-workflow-tests/rccltest/
sending incremental file list
run2-rocm642-mi300.sh
            700   8%    0.00kB/s    0:00:00            8.59K 100%    7.53MB/s    0:00:00 (xfr#1, to-chk=0/1)

sent 888 bytes  received 113 bytes  400.40 bytes/sec
total size is 8.59K  speedup is 8.59
+ ssh lockhart-login1 'bash -eux -c '\''cd /home/sfantao/lumi-ai-workflow-tests/rccltest ; TAG=rocm/megatron-lm:v25.9_gfx942 SIF=megatron-lm-v25.9_gfx942.sif ./run2-rocm642-mi300.sh '\'''
+ '[' -z '' ']'
+ case "$-" in
+ __lmod_vx=x
+ '[' -n x ']'
+ set +x
Shell debugging temporarily silenced: export LMOD_SH_DBG_ON=1 for this output (/opt/cray/pe/lmod/lmod/init/bash)
Shell debugging restarted
+ unset __lmod_vx
+ cd /home/sfantao/lumi-ai-workflow-tests/rccltest
+ TAG=rocm/megatron-lm:v25.9_gfx942
+ SIF=megatron-lm-v25.9_gfx942.sif
+ ./run2-rocm642-mi300.sh
+ '[' -z '' ']'
+ case "$-" in
+ __lmod_vx=x
+ '[' -n x ']'
+ set +x
Shell debugging temporarily silenced: export LMOD_SH_DBG_ON=1 for this output (/opt/cray/pe/lmod/lmod/init/bash)
Shell debugging restarted
+ unset __lmod_vx
++ sed 's/^run2-//'
++ sed 's/.sh$//'
++ basename ./run2-rocm642-mi300.sh
+ BASENAME=rocm642-mi300
++ realpath megatron-lm-v25.9_gfx942.sif
+ SIF=/home/sfantao/lumi-ai-workflow-tests/rccltest/megatron-lm-v25.9_gfx942.sif
+ mkdir -p rocm642-mi300.runfolder
+ cd rocm642-mi300.runfolder
+ mpicmd='undefined mpicommand'
+ cat
++ hostname
+ '[' lockhart-login1 = x1001c4s3b0n0 ']'
++ hostname
+ '[' lockhart-login1 = lockhart-login1 ']'
+ module load singularity
+ '[' -z '' ']'
+ case "$-" in
+ __lmod_sh_dbg=x
+ '[' -n x ']'
+ set +x
Shell debugging temporarily silenced: export LMOD_SH_DBG_ON=1 for Lmod's output
Shell debugging restarted
+ unset __lmod_sh_dbg
+ return 0
+ Nodes=1
+ c=fe
+ MYMASKS=0xfe000000000000,0xfe00000000000000,0xfe0000,0xfe000000,0xfe,0xfe00,0xfe00000000,0xfe0000000000
++ pwd
+ mpicmd='srun         --mpi=pmi2         -p MI300A_A1_COS_OK         --time 1:00:00         --mem 0         --exclusive         --threads-per-core=1         -c 24         -N 1         -n 4         --gpus 4         singularity exec             -B /var/spool/slurm             -B /home/sfantao/lumi-ai-workflow-tests/rccltest/rocm642-mi300.runfolder:/workdir             -B /home/sfantao/lumi-ai/megatron:/megatron             --pwd /workdir             /home/sfantao/lumi-ai-workflow-tests/rccltest/megatron-lm-v25.9_gfx942.sif'
++ hostname
+ [[ lockhart-login1 == \u\a\n* ]]
+ '[' 1 -eq 0 ']'
+ rm -rf run.sh
+ cat
+ chmod +x run.sh
+ tee res.log
+ srun --mpi=pmi2 -p MI300A_A1_COS_OK --time 1:00:00 --mem 0 --exclusive --threads-per-core=1 -c 24 -N 1 -n 4 --gpus 4 singularity exec -B /var/spool/slurm -B /home/sfantao/lumi-ai-workflow-tests/rccltest/rocm642-mi300.runfolder:/workdir -B /home/sfantao/lumi-ai/megatron:/megatron --pwd /workdir /home/sfantao/lumi-ai-workflow-tests/rccltest/megatron-lm-v25.9_gfx942.sif ./run.sh
+ export 'PMIX_MCA_psec=^munge'
+ PMIX_MCA_psec='^munge'
+ export NCCL_NET_PLUGIN=librccl-net.so
+ NCCL_NET_PLUGIN=librccl-net.so
+ export AITER_JIT_DIR=/tmp/my-aiter-jit-dir-0
+ AITER_JIT_DIR=/tmp/my-aiter-jit-dir-0
+ cd /megatron
+ export 'PMIX_MCA_psec=^munge'
+ PMIX_MCA_psec='^munge'
+ export NCCL_NET_PLUGIN=librccl-net.so
+ NCCL_NET_PLUGIN=librccl-net.so
+ export AITER_JIT_DIR=/tmp/my-aiter-jit-dir-1
+ AITER_JIT_DIR=/tmp/my-aiter-jit-dir-1
+ cd /megatron
++ echo x1001c0s4b0n0
++ echo x1001c0s4b0n0
++ cut -d, -f1
++ cut -d, -f1
+ export MASTER_ADDR=x1001c0s4b0n0
+ MASTER_ADDR=x1001c0s4b0n0
+ export MASTER_PORT=45678
+ MASTER_PORT=45678
+ set -eox pipefail
+ export CUDA_DEVICE_MAX_CONNECTIONS=1
+ CUDA_DEVICE_MAX_CONNECTIONS=1
+ export PYTHONWARNINGS=ignore
+ PYTHONWARNINGS=ignore
+ export MASTER_ADDR=x1001c0s4b0n0
+ MASTER_ADDR=x1001c0s4b0n0
+ export TRITON_ALWAYS_COMPILE=1
+ TRITON_ALWAYS_COMPILE=1
+ LR=1.5e-4
+ MIN_LR=1.5e-5
+ INIT_METHOD_STD=0.00747017
+ export MASTER_PORT=45678
+ MASTER_PORT=45678
+ TRAIN_DATA=data/fineweb-10BT-BPE_text_document
+ MERGES=data/merges.txt
+ VOCAB=data/vocab.json
+ set -eox pipefail
+ NLAYERS=28
+ NHIDDEN=3072
+ NHEADS=24
+ FFN_HIDDEN_SIZE=10752
+ SEQ_LEN=2048
+ export CUDA_DEVICE_MAX_CONNECTIONS=1
+ CUDA_DEVICE_MAX_CONNECTIONS=1
+ export PYTHONWARNINGS=ignore
+ PYTHONWARNINGS=ignore
+ NUM_QUERY_GROUPS=24
+ GLOBAL_BATCH_SIZE=512
+ export TRITON_ALWAYS_COMPILE=1
+ TRITON_ALWAYS_COMPILE=1
+ LR=1.5e-4
+ MIN_LR=1.5e-5
+ INIT_METHOD_STD=0.00747017
+ TRAIN_DATA=data/fineweb-10BT-BPE_text_document
+ MERGES=data/merges.txt
+ VOCAB=data/vocab.json
+ NLAYERS=28
+ NHIDDEN=3072
+ NHEADS=24
+ FFN_HIDDEN_SIZE=10752
+ SEQ_LEN=2048
+ FIXED_GPT_ARGS='     --num-layers 28     --hidden-size 3072     --num-attention-heads 24     --ffn-hidden-size 10752     --max-position-embeddings 2048     --seq-length 2048     --train-iters 20     --tokenizer-type GPT2BPETokenizer     --vocab-file data/vocab.json     --merge-file data/merges.txt     --data-path data/fineweb-10BT-BPE_text_document     --global-batch-size 512     --disable-bias-linear     --init-method-std 0.00747017     --normalization RMSNorm     --seed 42     --untie-embeddings-and-output-weights     --swiglu     --attention-dropout 0     --hidden-dropout 0     --use-rotary-position-embeddings     --group-query-attention     --num-query-groups 24     --use-flash-attn     --eval-iters 5     --log-throughput     --log-progress     --log-params-norm     --log-interval 1     --optimizer adam     --adam-beta1 0.9     --adam-beta2 0.95     --adam-eps 1e-5     --lr 1.5e-4     --min-lr 1.5e-5     --lr-decay-style cosine     --clip-grad 1.0     --weight-decay 1e-1     '
+ TP_SIZE=8
+ NUM_QUERY_GROUPS=24
+ GLOBAL_BATCH_SIZE=512
+ PP_SIZE=8
+ CP_SIZE=2
+ MICRO_BATCH_SIZE=1
+ TP_SIZE=4
+ PP_SIZE=1
+ CP_SIZE=1
+ MICRO_BATCH_SIZE=1
+ GPT_ARGS='     --bf16     --attention-softmax-in-fp32     --accumulate-allreduce-grads-in-fp32     --distributed-timeout-minutes 10     --no-gradient-accumulation-fusion     --no-bias-swiglu-fusion     --use-distributed-optimizer     --tensor-model-parallel-size 4     --pipeline-model-parallel-size 1     --context-parallel-size 1     --sequence-parallel     --dataloader-type single     --num-workers 8     --micro-batch-size 1 	--recompute-activations     '
+ FIXED_GPT_ARGS='     --num-layers 28     --hidden-size 3072     --num-attention-heads 24     --ffn-hidden-size 10752     --max-position-embeddings 2048     --seq-length 2048     --train-iters 20     --tokenizer-type GPT2BPETokenizer     --vocab-file data/vocab.json     --merge-file data/merges.txt     --data-path data/fineweb-10BT-BPE_text_document     --global-batch-size 512     --disable-bias-linear     --init-method-std 0.00747017     --normalization RMSNorm     --seed 42     --untie-embeddings-and-output-weights     --swiglu     --attention-dropout 0     --hidden-dropout 0     --use-rotary-position-embeddings     --group-query-attention     --num-query-groups 24     --use-flash-attn     --eval-iters 5     --log-throughput     --log-progress     --log-params-norm     --log-interval 1     --optimizer adam     --adam-beta1 0.9     --adam-beta2 0.95     --adam-eps 1e-5     --lr 1.5e-4     --min-lr 1.5e-5     --lr-decay-style cosine     --clip-grad 1.0     --weight-decay 1e-1     '
+ TP_SIZE=8
+ PP_SIZE=8
+ CP_SIZE=2
+ MICRO_BATCH_SIZE=1
+ TP_SIZE=4
+ PP_SIZE=1
+ CMD='     Megatron-LM/pretrain_gpt.py          --num-layers 28     --hidden-size 3072     --num-attention-heads 24     --ffn-hidden-size 10752     --max-position-embeddings 2048     --seq-length 2048     --train-iters 20     --tokenizer-type GPT2BPETokenizer     --vocab-file data/vocab.json     --merge-file data/merges.txt     --data-path data/fineweb-10BT-BPE_text_document     --global-batch-size 512     --disable-bias-linear     --init-method-std 0.00747017     --normalization RMSNorm     --seed 42     --untie-embeddings-and-output-weights     --swiglu     --attention-dropout 0     --hidden-dropout 0     --use-rotary-position-embeddings     --group-query-attention     --num-query-groups 24     --use-flash-attn     --eval-iters 5     --log-throughput     --log-progress     --log-params-norm     --log-interval 1     --optimizer adam     --adam-beta1 0.9     --adam-beta2 0.95     --adam-eps 1e-5     --lr 1.5e-4     --min-lr 1.5e-5     --lr-decay-style cosine     --clip-grad 1.0     --weight-decay 1e-1      	     --bf16     --attention-softmax-in-fp32     --accumulate-allreduce-grads-in-fp32     --distributed-timeout-minutes 10     --no-gradient-accumulation-fusion     --no-bias-swiglu-fusion     --use-distributed-optimizer     --tensor-model-parallel-size 4     --pipeline-model-parallel-size 1     --context-parallel-size 1     --sequence-parallel     --dataloader-type single     --num-workers 8     --micro-batch-size 1 	--recompute-activations          '
+ CP_SIZE=1
+ MICRO_BATCH_SIZE=1
+ export RANK=0
+ RANK=0
+ export LOCAL_RANK=0
+ LOCAL_RANK=0
+ export LOCAL_WORLD_SIZE=4
+ LOCAL_WORLD_SIZE=4
+ export WORLD_SIZE=4
+ WORLD_SIZE=4
+ GPT_ARGS='     --bf16     --attention-softmax-in-fp32     --accumulate-allreduce-grads-in-fp32     --distributed-timeout-minutes 10     --no-gradient-accumulation-fusion     --no-bias-swiglu-fusion     --use-distributed-optimizer     --tensor-model-parallel-size 4     --pipeline-model-parallel-size 1     --context-parallel-size 1     --sequence-parallel     --dataloader-type single     --num-workers 8     --micro-batch-size 1 	--recompute-activations     '
+ '[' 0 = 0 ']'
+ CMD='     Megatron-LM/pretrain_gpt.py          --num-layers 28     --hidden-size 3072     --num-attention-heads 24     --ffn-hidden-size 10752     --max-position-embeddings 2048     --seq-length 2048     --train-iters 20     --tokenizer-type GPT2BPETokenizer     --vocab-file data/vocab.json     --merge-file data/merges.txt     --data-path data/fineweb-10BT-BPE_text_document     --global-batch-size 512     --disable-bias-linear     --init-method-std 0.00747017     --normalization RMSNorm     --seed 42     --untie-embeddings-and-output-weights     --swiglu     --attention-dropout 0     --hidden-dropout 0     --use-rotary-position-embeddings     --group-query-attention     --num-query-groups 24     --use-flash-attn     --eval-iters 5     --log-throughput     --log-progress     --log-params-norm     --log-interval 1     --optimizer adam     --adam-beta1 0.9     --adam-beta2 0.95     --adam-eps 1e-5     --lr 1.5e-4     --min-lr 1.5e-5     --lr-decay-style cosine     --clip-grad 1.0     --weight-decay 1e-1      	     --bf16     --attention-softmax-in-fp32     --accumulate-allreduce-grads-in-fp32     --distributed-timeout-minutes 10     --no-gradient-accumulation-fusion     --no-bias-swiglu-fusion     --use-distributed-optimizer     --tensor-model-parallel-size 4     --pipeline-model-parallel-size 1     --context-parallel-size 1     --sequence-parallel     --dataloader-type single     --num-workers 8     --micro-batch-size 1 	--recompute-activations          '
+ export RANK=1
+ RANK=1
+ export LOCAL_RANK=1
+ LOCAL_RANK=1
+ export LOCAL_WORLD_SIZE=4
+ echo Megatron-LM/pretrain_gpt.py --num-layers 28 --hidden-size 3072 --num-attention-heads 24 --ffn-hidden-size 10752 --max-position-embeddings 2048 --seq-length 2048 --train-iters 20 --tokenizer-type GPT2BPETokenizer --vocab-file data/vocab.json --merge-file data/merges.txt --data-path data/fineweb-10BT-BPE_text_document --global-batch-size 512 --disable-bias-linear --init-method-std 0.00747017 --normalization RMSNorm --seed 42 --untie-embeddings-and-output-weights --swiglu --attention-dropout 0 --hidden-dropout 0 --use-rotary-position-embeddings --group-query-attention --num-query-groups 24 --use-flash-attn --eval-iters 5 --log-throughput --log-progress --log-params-norm --log-interval 1 --optimizer adam --adam-beta1 0.9 --adam-beta2 0.95 --adam-eps 1e-5 --lr 1.5e-4 --min-lr 1.5e-5 --lr-decay-style cosine --clip-grad 1.0 --weight-decay 1e-1 --bf16 --attention-softmax-in-fp32 --accumulate-allreduce-grads-in-fp32 --distributed-timeout-minutes 10 --no-gradient-accumulation-fusion --no-bias-swiglu-fusion --use-distributed-optimizer --tensor-model-parallel-size 4 --pipeline-model-parallel-size 1 --context-parallel-size 1 --sequence-parallel --dataloader-type single --num-workers 8 --micro-batch-size 1 --recompute-activations
+ LOCAL_WORLD_SIZE=4
+ export WORLD_SIZE=4
+ WORLD_SIZE=4
Megatron-LM/pretrain_gpt.py --num-layers 28 --hidden-size 3072 --num-attention-heads 24 --ffn-hidden-size 10752 --max-position-embeddings 2048 --seq-length 2048 --train-iters 20 --tokenizer-type GPT2BPETokenizer --vocab-file data/vocab.json --merge-file data/merges.txt --data-path data/fineweb-10BT-BPE_text_document --global-batch-size 512 --disable-bias-linear --init-method-std 0.00747017 --normalization RMSNorm --seed 42 --untie-embeddings-and-output-weights --swiglu --attention-dropout 0 --hidden-dropout 0 --use-rotary-position-embeddings --group-query-attention --num-query-groups 24 --use-flash-attn --eval-iters 5 --log-throughput --log-progress --log-params-norm --log-interval 1 --optimizer adam --adam-beta1 0.9 --adam-beta2 0.95 --adam-eps 1e-5 --lr 1.5e-4 --min-lr 1.5e-5 --lr-decay-style cosine --clip-grad 1.0 --weight-decay 1e-1 --bf16 --attention-softmax-in-fp32 --accumulate-allreduce-grads-in-fp32 --distributed-timeout-minutes 10 --no-gradient-accumulation-fusion --no-bias-swiglu-fusion --use-distributed-optimizer --tensor-model-parallel-size 4 --pipeline-model-parallel-size 1 --context-parallel-size 1 --sequence-parallel --dataloader-type single --num-workers 8 --micro-batch-size 1 --recompute-activations
+ '[' 1 = 0 ']'
+ python -u Megatron-LM/pretrain_gpt.py --num-layers 28 --hidden-size 3072 --num-attention-heads 24 --ffn-hidden-size 10752 --max-position-embeddings 2048 --seq-length 2048 --train-iters 20 --tokenizer-type GPT2BPETokenizer --vocab-file data/vocab.json --merge-file data/merges.txt --data-path data/fineweb-10BT-BPE_text_document --global-batch-size 512 --disable-bias-linear --init-method-std 0.00747017 --normalization RMSNorm --seed 42 --untie-embeddings-and-output-weights --swiglu --attention-dropout 0 --hidden-dropout 0 --use-rotary-position-embeddings --group-query-attention --num-query-groups 24 --use-flash-attn --eval-iters 5 --log-throughput --log-progress --log-params-norm --log-interval 1 --optimizer adam --adam-beta1 0.9 --adam-beta2 0.95 --adam-eps 1e-5 --lr 1.5e-4 --min-lr 1.5e-5 --lr-decay-style cosine --clip-grad 1.0 --weight-decay 1e-1 --bf16 --attention-softmax-in-fp32 --accumulate-allreduce-grads-in-fp32 --distributed-timeout-minutes 10 --no-gradient-accumulation-fusion --no-bias-swiglu-fusion --use-distributed-optimizer --tensor-model-parallel-size 4 --pipeline-model-parallel-size 1 --context-parallel-size 1 --sequence-parallel --dataloader-type single --num-workers 8 --micro-batch-size 1 --recompute-activations
+ python -u Megatron-LM/pretrain_gpt.py --num-layers 28 --hidden-size 3072 --num-attention-heads 24 --ffn-hidden-size 10752 --max-position-embeddings 2048 --seq-length 2048 --train-iters 20 --tokenizer-type GPT2BPETokenizer --vocab-file data/vocab.json --merge-file data/merges.txt --data-path data/fineweb-10BT-BPE_text_document --global-batch-size 512 --disable-bias-linear --init-method-std 0.00747017 --normalization RMSNorm --seed 42 --untie-embeddings-and-output-weights --swiglu --attention-dropout 0 --hidden-dropout 0 --use-rotary-position-embeddings --group-query-attention --num-query-groups 24 --use-flash-attn --eval-iters 5 --log-throughput --log-progress --log-params-norm --log-interval 1 --optimizer adam --adam-beta1 0.9 --adam-beta2 0.95 --adam-eps 1e-5 --lr 1.5e-4 --min-lr 1.5e-5 --lr-decay-style cosine --clip-grad 1.0 --weight-decay 1e-1 --bf16 --attention-softmax-in-fp32 --accumulate-allreduce-grads-in-fp32 --distributed-timeout-minutes 10 --no-gradient-accumulation-fusion --no-bias-swiglu-fusion --use-distributed-optimizer --tensor-model-parallel-size 4 --pipeline-model-parallel-size 1 --context-parallel-size 1 --sequence-parallel --dataloader-type single --num-workers 8 --micro-batch-size 1 --recompute-activations
+ export 'PMIX_MCA_psec=^munge'
+ PMIX_MCA_psec='^munge'
+ export NCCL_NET_PLUGIN=librccl-net.so
+ NCCL_NET_PLUGIN=librccl-net.so
+ export AITER_JIT_DIR=/tmp/my-aiter-jit-dir-2
+ AITER_JIT_DIR=/tmp/my-aiter-jit-dir-2
+ cd /megatron
++ echo x1001c0s4b0n0
++ cut -d, -f1
+ export MASTER_ADDR=x1001c0s4b0n0
+ MASTER_ADDR=x1001c0s4b0n0
+ export MASTER_PORT=45678
+ MASTER_PORT=45678
+ set -eox pipefail
+ export CUDA_DEVICE_MAX_CONNECTIONS=1
+ CUDA_DEVICE_MAX_CONNECTIONS=1
+ export PYTHONWARNINGS=ignore
+ PYTHONWARNINGS=ignore
+ export TRITON_ALWAYS_COMPILE=1
+ TRITON_ALWAYS_COMPILE=1
+ LR=1.5e-4
+ MIN_LR=1.5e-5
+ INIT_METHOD_STD=0.00747017
+ TRAIN_DATA=data/fineweb-10BT-BPE_text_document
+ MERGES=data/merges.txt
+ VOCAB=data/vocab.json
+ NLAYERS=28
+ NHIDDEN=3072
+ NHEADS=24
+ FFN_HIDDEN_SIZE=10752
+ SEQ_LEN=2048
+ NUM_QUERY_GROUPS=24
+ GLOBAL_BATCH_SIZE=512
+ FIXED_GPT_ARGS='     --num-layers 28     --hidden-size 3072     --num-attention-heads 24     --ffn-hidden-size 10752     --max-position-embeddings 2048     --seq-length 2048     --train-iters 20     --tokenizer-type GPT2BPETokenizer     --vocab-file data/vocab.json     --merge-file data/merges.txt     --data-path data/fineweb-10BT-BPE_text_document     --global-batch-size 512     --disable-bias-linear     --init-method-std 0.00747017     --normalization RMSNorm     --seed 42     --untie-embeddings-and-output-weights     --swiglu     --attention-dropout 0     --hidden-dropout 0     --use-rotary-position-embeddings     --group-query-attention     --num-query-groups 24     --use-flash-attn     --eval-iters 5     --log-throughput     --log-progress     --log-params-norm     --log-interval 1     --optimizer adam     --adam-beta1 0.9     --adam-beta2 0.95     --adam-eps 1e-5     --lr 1.5e-4     --min-lr 1.5e-5     --lr-decay-style cosine     --clip-grad 1.0     --weight-decay 1e-1     '
+ TP_SIZE=8
+ PP_SIZE=8
+ CP_SIZE=2
+ MICRO_BATCH_SIZE=1
+ TP_SIZE=4
+ PP_SIZE=1
+ CP_SIZE=1
+ MICRO_BATCH_SIZE=1
+ GPT_ARGS='     --bf16     --attention-softmax-in-fp32     --accumulate-allreduce-grads-in-fp32     --distributed-timeout-minutes 10     --no-gradient-accumulation-fusion     --no-bias-swiglu-fusion     --use-distributed-optimizer     --tensor-model-parallel-size 4     --pipeline-model-parallel-size 1     --context-parallel-size 1     --sequence-parallel     --dataloader-type single     --num-workers 8     --micro-batch-size 1 	--recompute-activations     '
+ CMD='     Megatron-LM/pretrain_gpt.py          --num-layers 28     --hidden-size 3072     --num-attention-heads 24     --ffn-hidden-size 10752     --max-position-embeddings 2048     --seq-length 2048     --train-iters 20     --tokenizer-type GPT2BPETokenizer     --vocab-file data/vocab.json     --merge-file data/merges.txt     --data-path data/fineweb-10BT-BPE_text_document     --global-batch-size 512     --disable-bias-linear     --init-method-std 0.00747017     --normalization RMSNorm     --seed 42     --untie-embeddings-and-output-weights     --swiglu     --attention-dropout 0     --hidden-dropout 0     --use-rotary-position-embeddings     --group-query-attention     --num-query-groups 24     --use-flash-attn     --eval-iters 5     --log-throughput     --log-progress     --log-params-norm     --log-interval 1     --optimizer adam     --adam-beta1 0.9     --adam-beta2 0.95     --adam-eps 1e-5     --lr 1.5e-4     --min-lr 1.5e-5     --lr-decay-style cosine     --clip-grad 1.0     --weight-decay 1e-1      	     --bf16     --attention-softmax-in-fp32     --accumulate-allreduce-grads-in-fp32     --distributed-timeout-minutes 10     --no-gradient-accumulation-fusion     --no-bias-swiglu-fusion     --use-distributed-optimizer     --tensor-model-parallel-size 4     --pipeline-model-parallel-size 1     --context-parallel-size 1     --sequence-parallel     --dataloader-type single     --num-workers 8     --micro-batch-size 1 	--recompute-activations          '
+ export RANK=2
+ RANK=2
+ export LOCAL_RANK=2
+ LOCAL_RANK=2
+ export LOCAL_WORLD_SIZE=4
+ LOCAL_WORLD_SIZE=4
+ export WORLD_SIZE=4
+ WORLD_SIZE=4
+ '[' 2 = 0 ']'
+ python -u Megatron-LM/pretrain_gpt.py --num-layers 28 --hidden-size 3072 --num-attention-heads 24 --ffn-hidden-size 10752 --max-position-embeddings 2048 --seq-length 2048 --train-iters 20 --tokenizer-type GPT2BPETokenizer --vocab-file data/vocab.json --merge-file data/merges.txt --data-path data/fineweb-10BT-BPE_text_document --global-batch-size 512 --disable-bias-linear --init-method-std 0.00747017 --normalization RMSNorm --seed 42 --untie-embeddings-and-output-weights --swiglu --attention-dropout 0 --hidden-dropout 0 --use-rotary-position-embeddings --group-query-attention --num-query-groups 24 --use-flash-attn --eval-iters 5 --log-throughput --log-progress --log-params-norm --log-interval 1 --optimizer adam --adam-beta1 0.9 --adam-beta2 0.95 --adam-eps 1e-5 --lr 1.5e-4 --min-lr 1.5e-5 --lr-decay-style cosine --clip-grad 1.0 --weight-decay 1e-1 --bf16 --attention-softmax-in-fp32 --accumulate-allreduce-grads-in-fp32 --distributed-timeout-minutes 10 --no-gradient-accumulation-fusion --no-bias-swiglu-fusion --use-distributed-optimizer --tensor-model-parallel-size 4 --pipeline-model-parallel-size 1 --context-parallel-size 1 --sequence-parallel --dataloader-type single --num-workers 8 --micro-batch-size 1 --recompute-activations
+ export 'PMIX_MCA_psec=^munge'
+ PMIX_MCA_psec='^munge'
+ export NCCL_NET_PLUGIN=librccl-net.so
+ NCCL_NET_PLUGIN=librccl-net.so
+ export AITER_JIT_DIR=/tmp/my-aiter-jit-dir-3
+ AITER_JIT_DIR=/tmp/my-aiter-jit-dir-3
+ cd /megatron
++ echo x1001c0s4b0n0
++ cut -d, -f1
+ export MASTER_ADDR=x1001c0s4b0n0
+ MASTER_ADDR=x1001c0s4b0n0
+ export MASTER_PORT=45678
+ MASTER_PORT=45678
+ set -eox pipefail
+ export CUDA_DEVICE_MAX_CONNECTIONS=1
+ CUDA_DEVICE_MAX_CONNECTIONS=1
+ export PYTHONWARNINGS=ignore
+ PYTHONWARNINGS=ignore
+ export TRITON_ALWAYS_COMPILE=1
+ TRITON_ALWAYS_COMPILE=1
+ LR=1.5e-4
+ MIN_LR=1.5e-5
+ INIT_METHOD_STD=0.00747017
+ TRAIN_DATA=data/fineweb-10BT-BPE_text_document
+ MERGES=data/merges.txt
+ VOCAB=data/vocab.json
+ NLAYERS=28
+ NHIDDEN=3072
+ NHEADS=24
+ FFN_HIDDEN_SIZE=10752
+ SEQ_LEN=2048
+ NUM_QUERY_GROUPS=24
+ GLOBAL_BATCH_SIZE=512
+ FIXED_GPT_ARGS='     --num-layers 28     --hidden-size 3072     --num-attention-heads 24     --ffn-hidden-size 10752     --max-position-embeddings 2048     --seq-length 2048     --train-iters 20     --tokenizer-type GPT2BPETokenizer     --vocab-file data/vocab.json     --merge-file data/merges.txt     --data-path data/fineweb-10BT-BPE_text_document     --global-batch-size 512     --disable-bias-linear     --init-method-std 0.00747017     --normalization RMSNorm     --seed 42     --untie-embeddings-and-output-weights     --swiglu     --attention-dropout 0     --hidden-dropout 0     --use-rotary-position-embeddings     --group-query-attention     --num-query-groups 24     --use-flash-attn     --eval-iters 5     --log-throughput     --log-progress     --log-params-norm     --log-interval 1     --optimizer adam     --adam-beta1 0.9     --adam-beta2 0.95     --adam-eps 1e-5     --lr 1.5e-4     --min-lr 1.5e-5     --lr-decay-style cosine     --clip-grad 1.0     --weight-decay 1e-1     '
+ TP_SIZE=8
+ PP_SIZE=8
+ CP_SIZE=2
+ MICRO_BATCH_SIZE=1
+ TP_SIZE=4
+ PP_SIZE=1
+ CP_SIZE=1
+ MICRO_BATCH_SIZE=1
+ GPT_ARGS='     --bf16     --attention-softmax-in-fp32     --accumulate-allreduce-grads-in-fp32     --distributed-timeout-minutes 10     --no-gradient-accumulation-fusion     --no-bias-swiglu-fusion     --use-distributed-optimizer     --tensor-model-parallel-size 4     --pipeline-model-parallel-size 1     --context-parallel-size 1     --sequence-parallel     --dataloader-type single     --num-workers 8     --micro-batch-size 1 	--recompute-activations     '
+ CMD='     Megatron-LM/pretrain_gpt.py          --num-layers 28     --hidden-size 3072     --num-attention-heads 24     --ffn-hidden-size 10752     --max-position-embeddings 2048     --seq-length 2048     --train-iters 20     --tokenizer-type GPT2BPETokenizer     --vocab-file data/vocab.json     --merge-file data/merges.txt     --data-path data/fineweb-10BT-BPE_text_document     --global-batch-size 512     --disable-bias-linear     --init-method-std 0.00747017     --normalization RMSNorm     --seed 42     --untie-embeddings-and-output-weights     --swiglu     --attention-dropout 0     --hidden-dropout 0     --use-rotary-position-embeddings     --group-query-attention     --num-query-groups 24     --use-flash-attn     --eval-iters 5     --log-throughput     --log-progress     --log-params-norm     --log-interval 1     --optimizer adam     --adam-beta1 0.9     --adam-beta2 0.95     --adam-eps 1e-5     --lr 1.5e-4     --min-lr 1.5e-5     --lr-decay-style cosine     --clip-grad 1.0     --weight-decay 1e-1      	     --bf16     --attention-softmax-in-fp32     --accumulate-allreduce-grads-in-fp32     --distributed-timeout-minutes 10     --no-gradient-accumulation-fusion     --no-bias-swiglu-fusion     --use-distributed-optimizer     --tensor-model-parallel-size 4     --pipeline-model-parallel-size 1     --context-parallel-size 1     --sequence-parallel     --dataloader-type single     --num-workers 8     --micro-batch-size 1 	--recompute-activations          '
+ export RANK=3
+ RANK=3
+ export LOCAL_RANK=3
+ LOCAL_RANK=3
+ export LOCAL_WORLD_SIZE=4
+ LOCAL_WORLD_SIZE=4
+ export WORLD_SIZE=4
+ WORLD_SIZE=4
+ '[' 3 = 0 ']'
+ python -u Megatron-LM/pretrain_gpt.py --num-layers 28 --hidden-size 3072 --num-attention-heads 24 --ffn-hidden-size 10752 --max-position-embeddings 2048 --seq-length 2048 --train-iters 20 --tokenizer-type GPT2BPETokenizer --vocab-file data/vocab.json --merge-file data/merges.txt --data-path data/fineweb-10BT-BPE_text_document --global-batch-size 512 --disable-bias-linear --init-method-std 0.00747017 --normalization RMSNorm --seed 42 --untie-embeddings-and-output-weights --swiglu --attention-dropout 0 --hidden-dropout 0 --use-rotary-position-embeddings --group-query-attention --num-query-groups 24 --use-flash-attn --eval-iters 5 --log-throughput --log-progress --log-params-norm --log-interval 1 --optimizer adam --adam-beta1 0.9 --adam-beta2 0.95 --adam-eps 1e-5 --lr 1.5e-4 --min-lr 1.5e-5 --lr-decay-style cosine --clip-grad 1.0 --weight-decay 1e-1 --bf16 --attention-softmax-in-fp32 --accumulate-allreduce-grads-in-fp32 --distributed-timeout-minutes 10 --no-gradient-accumulation-fusion --no-bias-swiglu-fusion --use-distributed-optimizer --tensor-model-parallel-size 4 --pipeline-model-parallel-size 1 --context-parallel-size 1 --sequence-parallel --dataloader-type single --num-workers 8 --micro-batch-size 1 --recompute-activations
[WARNING  | transformer_engine.pytorch.dot_product_attention.utils]: Supported flash-attn versions are >= 2.1.1, <= 2.8.0.post2. Found flash-attn 2.8.3.
[WARNING  | transformer_engine.pytorch.dot_product_attention.utils]: Supported flash-attn versions are >= 2.1.1, <= 2.8.0.post2. Found flash-attn 2.8.3.
[WARNING  | transformer_engine.pytorch.dot_product_attention.utils]: Supported flash-attn versions are >= 2.1.1, <= 2.8.0.post2. Found flash-attn 2.8.3.
[WARNING  | transformer_engine.pytorch.dot_product_attention.utils]: Supported flash-attn versions are >= 2.1.1, <= 2.8.0.post2. Found flash-attn 2.8.3.
using world size: 4, data-parallel size: 1, context-parallel size: 1, hierarchical context-parallel sizes: Nonetensor-model-parallel size: 4, encoder-tensor-model-parallel size: 0, pipeline-model-parallel size: 1, encoder-pipeline-model-parallel size: 0, pipeline-model-parallel size: 1 
WARNING: overriding default arguments for tokenizer_type:GPT2BPETokenizer                        with tokenizer_type:GPT2BPETokenizer
WARNING: Please specify --split when using --data-path. Using legacy default value of "969, 30, 1"
using torch.bfloat16 for parameters ...
------------------------ arguments ------------------------
  accumulate_allreduce_grads_in_fp32 .............. True
  adam_beta1 ...................................... 0.9
  adam_beta2 ...................................... 0.95
  adam_eps ........................................ 1e-05
  add_bias_linear ................................. False
  add_position_embedding .......................... True
  add_qkv_bias .................................... False
  adlr_autoresume ................................. False
  adlr_autoresume_interval ........................ 1000
  align_grad_reduce ............................... True
  align_param_gather .............................. False
  app_tag_run_name ................................ None
  app_tag_run_version ............................. 0.0.0
  apply_layernorm_1p .............................. False
  apply_query_key_layer_scaling ................... False
  apply_residual_connection_post_layernorm ........ False
  apply_rope_fusion ............................... True
  async_save ...................................... None
  async_tensor_model_parallel_allreduce ........... False
  attention_backend ............................... AttnBackend.auto
  attention_dropout ............................... 0.0
  attention_sink_k ................................ 0
  attention_softmax_in_fp32 ....................... True
  auto_detect_ckpt_format ......................... False
  barrier_with_L1_time ............................ True
  bert_binary_head ................................ True
  bert_embedder_type .............................. megatron
  bert_load ....................................... None
  bf16 ............................................ True
  bias_dropout_fusion ............................. True
  bias_gelu_fusion ................................ False
  bias_swiglu_fusion .............................. False
  biencoder_projection_dim ........................ 0
  biencoder_shared_query_context_model ............ False
  block_data_path ................................. None
  calculate_per_token_loss ........................ False
  check_for_nan_in_loss_and_grad .................. True
  check_for_spiky_loss ............................ False
  check_weight_hash_across_dp_replicas_interval ... None
  ckpt_assume_constant_structure .................. False
  ckpt_convert_format ............................. None
  ckpt_convert_save ............................... None
  ckpt_convert_update_legacy_dist_opt_format ...... False
  ckpt_format ..................................... torch_dist
  ckpt_fully_parallel_load ........................ False
  ckpt_fully_parallel_save ........................ True
  ckpt_fully_parallel_save_deprecated ............. False
  ckpt_step ....................................... None
  classes_fraction ................................ 1.0
  clip_grad ....................................... 1.0
  clone_scatter_output_in_embedding ............... True
  config_logger_dir ............................... 
  consumed_train_samples .......................... 0
  consumed_valid_samples .......................... 0
  context_parallel_size ........................... 1
  cp_comm_type .................................... ['p2p']
  create_attention_mask_in_dataloader ............. True
  cross_entropy_loss_fusion ....................... False
  data_args_path .................................. None
  data_cache_path ................................. None
  data_parallel_random_init ....................... False
  data_parallel_size .............................. 1
  data_path ....................................... ['data/fineweb-10BT-BPE_text_document']
  data_per_class_fraction ......................... 1.0
  data_sharding ................................... True
  dataloader_type ................................. single
  ddp_average_in_collective ....................... False
  ddp_bucket_size ................................. None
  decoder_first_pipeline_num_layers ............... None
  decoder_last_pipeline_num_layers ................ None
  decoder_num_layers .............................. None
  decoder_seq_length .............................. None
  decoupled_lr .................................... None
  decoupled_min_lr ................................ None
  decrease_batch_size_if_needed ................... False
  defer_embedding_wgrad_compute ................... False
  deprecated_use_mcore_models ..................... False
  deterministic_mode .............................. False
  dino_bottleneck_size ............................ 256
  dino_freeze_last_layer .......................... 1
  dino_head_hidden_size ........................... 2048
  dino_local_crops_number ......................... 10
  dino_local_img_size ............................. 96
  dino_norm_last_layer ............................ False
  dino_teacher_temp ............................... 0.07
  dino_warmup_teacher_temp ........................ 0.04
  dino_warmup_teacher_temp_epochs ................. 30
  disable_straggler_on_startup .................... False
  disable_te_fused_rope ........................... False
  dist_ckpt_format_deprecated ..................... None
  dist_ckpt_strictness ............................ assume_ok_unexpected
  distribute_saved_activations .................... False
  distributed_backend ............................. nccl
  distributed_timeout_minutes ..................... 10
  embedding_path .................................. None
  empty_unused_memory_level ....................... 0
  enable_ft_package ............................... False
  enable_one_logger ............................... True
  encoder_num_layers .............................. 28
  encoder_pipeline_model_parallel_size ............ 0
  encoder_seq_length .............................. 2048
  encoder_tensor_model_parallel_size .............. 0
  end_weight_decay ................................ 0.1
  eod_mask_loss ................................... False
  error_injection_rate ............................ 0
  error_injection_type ............................ transient_error
  eval_interval ................................... 1000
  eval_iters ...................................... 5
  evidence_data_path .............................. None
  exit_duration_in_mins ........................... None
  exit_interval ................................... None
  exit_on_missing_checkpoint ...................... False
  exit_signal_handler ............................. False
  expert_model_parallel_size ...................... 1
  expert_tensor_parallel_size ..................... 4
  ffn_hidden_size ................................. 10752
  finetune ........................................ False
  flash_decode .................................... False
  fp16 ............................................ False
  fp16_lm_cross_entropy ........................... False
  fp32_residual_connection ........................ False
  fp8 ............................................. None
  fp8_amax_compute_algo ........................... most_recent
  fp8_amax_history_len ............................ 1
  fp8_interval .................................... 1
  fp8_margin ...................................... 0
  fp8_param_gather ................................ False
  fp8_reduce_amax ................................. True
  fp8_weight_cache ................................ True
  fp8_weight_transpose_cache ...................... True
  fp8_wgrad ....................................... True
  fused_padded_mla_attention ...................... False
  global_batch_size ............................... 512
  gradient_accumulation_fusion .................... False
  group_query_attention ........................... True
  head_lr_mult .................................... 1.0
  hidden_dropout .................................. 0.0
  hidden_size ..................................... 3072
  hierarchical_context_parallel_sizes ............. None
  hybrid_attention_ratio .......................... 0.0
  hybrid_mlp_ratio ................................ 0.0
  hybrid_override_pattern ......................... None
  hysteresis ...................................... 2
  ict_head_size ................................... None
  ict_load ........................................ None
  img_h ........................................... 224
  img_w ........................................... 224
  indexer_batch_size .............................. 128
  indexer_log_interval ............................ 1000
  inference_batch_times_seqlen_threshold .......... -1
  inference_max_seq_length ........................ 2560
  init_method_std ................................. 0.00747017
  init_method_xavier_uniform ...................... False
  initial_loss_scale .............................. 4294967296
  iter_per_epoch .................................. 1250
  kv_channels ..................................... 128
  kv_lora_rank .................................... 32
  lazy_mpu_init ................................... None
  linear_cross_entropy_loss_fusion ................ False
  load ............................................ None
  local_rank ...................................... 0
  log_batch_size_to_tensorboard ................... False
  log_interval .................................... 1
  log_loss_scale_to_tensorboard ................... True
  log_memory_to_tensorboard ....................... False
  log_num_zeros_in_grad ........................... False
  log_params_norm ................................. True
  log_progress .................................... True
  log_straggler ................................... False
  log_throughput .................................. True
  log_timers_to_tensorboard ....................... False
  log_validation_ppl_to_tensorboard ............... False
  log_world_size_to_tensorboard ................... False
  logging_level ................................... None
  loss_scale ...................................... None
  loss_scale_window ............................... 1000
  lr .............................................. 0.00015
  lr_decay_iters .................................. None
  lr_decay_samples ................................ None
  lr_decay_style .................................. cosine
  lr_warmup_fraction .............................. None
  lr_warmup_init .................................. 0.0
  lr_warmup_iters ................................. 0
  lr_warmup_samples ............................... 0
  lr_wsd_decay_iters .............................. None
  lr_wsd_decay_samples ............................ None
  lr_wsd_decay_style .............................. exponential
  make_vocab_size_divisible_by .................... 128
  manual_gc ....................................... False
  manual_gc_eval .................................. True
  manual_gc_interval .............................. 0
  mask_factor ..................................... 1.0
  mask_prob ....................................... 0.15
  mask_type ....................................... random
  masked_softmax_fusion ........................... True
  max_position_embeddings ......................... 2048
  max_tokens_to_oom ............................... 12000
  memory_snapshot_path ............................ snapshot.pickle
  merge_file ...................................... data/merges.txt
  micro_batch_size ................................ 1
  microbatch_group_size_per_vp_stage .............. None
  min_loss_scale .................................. 1.0
  min_lr .......................................... 1.5e-05
  mmap_bin_files .................................. True
  mock_data ....................................... False
  moe_aux_loss_coeff .............................. 0.0
  moe_expert_capacity_factor ...................... None
  moe_extended_tp ................................. False
  moe_ffn_hidden_size ............................. 10752
  moe_grouped_gemm ................................ False
  moe_input_jitter_eps ............................ None
  moe_layer_freq .................................. 1
  moe_layer_recompute ............................. False
  moe_pad_expert_input_to_capacity ................ False
  moe_per_layer_logging ........................... False
  moe_permute_fusion .............................. False
  moe_router_bias_update_rate ..................... 0.001
  moe_router_enable_expert_bias ................... False
  moe_router_force_load_balancing ................. False
  moe_router_group_topk ........................... None
  moe_router_load_balancing_type .................. aux_loss
  moe_router_num_groups ........................... None
  moe_router_pre_softmax .......................... False
  moe_router_score_function ....................... softmax
  moe_router_topk ................................. 2
  moe_router_topk_scaling_factor .................. None
  moe_shared_expert_intermediate_size ............. None
  moe_shared_expert_overlap ....................... False
  moe_token_dispatcher_type ....................... allgather
  moe_token_drop_policy ........................... probs
  moe_use_legacy_grouped_gemm ..................... False
  moe_use_upcycling ............................... False
  moe_z_loss_coeff ................................ None
  multi_latent_attention .......................... False
  nccl_communicator_config_path ................... None
  no_load_optim ................................... None
  no_load_rng ..................................... None
  no_persist_layer_norm ........................... False
  no_save_optim ................................... None
  no_save_rng ..................................... None
  non_persistent_ckpt_type ........................ None
  non_persistent_global_ckpt_dir .................. None
  non_persistent_local_ckpt_algo .................. fully_parallel
  non_persistent_local_ckpt_dir ................... None
  non_persistent_save_interval .................... None
  norm_epsilon .................................... 1e-05
  normalization ................................... RMSNorm
  num_attention_heads ............................. 24
  num_channels .................................... 3
  num_classes ..................................... 1000
  num_dataset_builder_threads ..................... 1
  num_distributed_optimizer_instances ............. 1
  num_experts ..................................... None
  num_layers ...................................... 28
  num_layers_per_virtual_pipeline_stage ........... None
  num_query_groups ................................ 24
  num_workers ..................................... 8
  one_logger_async ................................ False
  one_logger_project .............................. megatron-lm
  one_logger_run_name ............................. None
  onnx_safe ....................................... None
  openai_gelu ..................................... False
  optimizer ....................................... adam
  output_bert_embeddings .......................... False
  overlap_grad_reduce ............................. False
  overlap_p2p_comm ................................ False
  overlap_p2p_comm_warmup_flush ................... False
  overlap_param_gather ............................ False
  overlap_param_gather_with_optimizer_step ........ False
  override_opt_param_scheduler .................... False
  params_dtype .................................... torch.bfloat16
  patch_dim ....................................... 16
  per_split_data_args_path ........................ None
  perform_initialization .......................... True
  pipeline_model_parallel_size .................... 1
  pipeline_model_parallel_split_rank .............. None
  position_embedding_type ......................... rope
  pretrained_checkpoint ........................... None
  profile ......................................... False
  profile_ranks ................................... [0]
  profile_step_end ................................ 12
  profile_step_start .............................. 10
  q_lora_rank ..................................... None
  qk_head_dim ..................................... 128
  qk_layernorm .................................... False
  qk_pos_emb_head_dim ............................. 64
  query_in_block_prob ............................. 0.1
  rampup_batch_size ............................... None
  rank ............................................ 0
  recompute_granularity ........................... selective
  recompute_method ................................ None
  recompute_num_layers ............................ None
  record_memory_history ........................... False
  renormalize_blend_weights ....................... False
  rerun_mode ...................................... disabled
  reset_attention_mask ............................ False
  reset_position_ids .............................. False
  retriever_report_topk_accuracies ................ []
  retriever_score_scaling ......................... False
  retriever_seq_length ............................ 256
  retro_add_retriever ............................. False
  retro_attention_gate ............................ 1
  retro_cyclic_train_iters ........................ None
  retro_encoder_attention_dropout ................. 0.1
  retro_encoder_hidden_dropout .................... 0.1
  retro_encoder_layers ............................ 2
  retro_num_neighbors ............................. 2
  retro_num_retrieved_chunks ...................... 2
  retro_project_dir ............................... None
  retro_verify_neighbor_count ..................... True
  rotary_base ..................................... 10000
  rotary_interleaved .............................. False
  rotary_percent .................................. 1.0
  rotary_scaling_factor ........................... 1.0
  rotary_seq_len_interpolation_factor ............. None
  s3_cache_path ................................... None
  sample_rate ..................................... 1.0
  save ............................................ None
  save_interval ................................... None
  scatter_gather_tensors_in_pipeline .............. True
  seed ............................................ 42
  seq_length ...................................... 2048
  sequence_parallel ............................... True
  sgd_momentum .................................... 0.9
  short_seq_prob .................................. 0.1
  skip_train ...................................... False
  skipped_train_samples ........................... 0
  spec ............................................ None
  split ........................................... 969, 30, 1
  squared_relu .................................... False
  standalone_embedding_stage ...................... False
  start_weight_decay .............................. 0.1
  straggler_ctrlr_port ............................ 65535
  straggler_minmax_count .......................... 1
  swiglu .......................................... True
  swin_backbone_type .............................. tiny
  tensor_model_parallel_size ...................... 4
  tensorboard_dir ................................. None
  tensorboard_log_interval ........................ 1
  tensorboard_queue_size .......................... 1000
  test_data_path .................................. None
  test_mode ....................................... False
  tiktoken_num_special_tokens ..................... 1000
  tiktoken_pattern ................................ None
  tiktoken_special_tokens ......................... None
  timing_log_level ................................ 0
  timing_log_option ............................... minmax
  titles_data_path ................................ None
  tokenizer_model ................................. None
  tokenizer_type .................................. GPT2BPETokenizer
  tp_comm_bootstrap_backend ....................... nccl
  tp_comm_bulk_dgrad .............................. True
  tp_comm_bulk_wgrad .............................. True
  tp_comm_overlap ................................. False
  tp_comm_overlap_ag .............................. True
  tp_comm_overlap_cfg ............................. None
  tp_comm_overlap_rs .............................. True
  tp_comm_overlap_rs_dgrad ........................ False
  tp_comm_split_ag ................................ True
  tp_comm_split_rs ................................ True
  train_data_path ................................. None
  train_iters ..................................... 20
  train_samples ................................... None
  train_sync_interval ............................. None
  transformer_impl ................................ transformer_engine
  transformer_pipeline_model_parallel_size ........ 1
  untie_embeddings_and_output_weights ............. True
  use_checkpoint_args ............................. False
  use_checkpoint_opt_param_scheduler .............. False
  use_cpu_initialization .......................... None
  use_dist_ckpt ................................... True
  use_dist_ckpt_deprecated ........................ False
  use_distributed_optimizer ....................... True
  use_flash_attn .................................. True
  use_legacy_models ............................... False
  use_mp_args_from_checkpoint_args ................ False
  use_one_sent_docs ............................... False
  use_pytorch_profiler ............................ False
  use_ring_exchange_p2p ........................... False
  use_rope_scaling ................................ False
  use_rotary_position_embeddings .................. True
  use_tokenizer_model_from_checkpoint_args ........ True
  use_torch_fsdp2 ................................. False
  use_tp_pp_dp_mapping ............................ False
  v_head_dim ...................................... 128
  valid_data_path ................................. None
  variable_seq_lengths ............................ False
  virtual_pipeline_model_parallel_size ............ None
  vision_backbone_type ............................ vit
  vision_pretraining .............................. False
  vision_pretraining_type ......................... classify
  vocab_extra_ids ................................. 0
  vocab_file ...................................... data/vocab.json
  vocab_size ...................................... None
  wandb_exp_name .................................. 
  wandb_project ................................... 
  wandb_save_dir .................................. 
  weight_decay .................................... 0.1
  weight_decay_incr_style ......................... constant
  wgrad_deferral_limit ............................ 0
  window_size ..................................... None
  world_size ...................................... 4
  yaml_cfg ........................................ None
-------------------- end of arguments ---------------------
INFO:megatron.core.num_microbatches_calculator:setting number of microbatches to constant 512
> building GPT2BPETokenizer tokenizer ...
WARNING:megatron.core.rerun_state_machine:RerunStateMachine initialized in mode disabled
 > padded vocab (size: 50257) with 431 dummy tokens (new size: 50688)
WARNING:megatron.core.rerun_state_machine:RerunStateMachine initialized in mode disabled
> initializing torch distributed ...
WARNING: one_logger package is required to enable e2e metrics tracking. please go to https://confluence.nvidia.com/display/MLWFO/Package+Repositories for details to install it
WARNING:megatron.core.rerun_state_machine:RerunStateMachine initialized in mode disabled
WARNING:megatron.core.rerun_state_machine:RerunStateMachine initialized in mode disabled
[Gloo] Rank 0 is connected to 0 peer ranks. Expected number of connected peer ranks is : 0
[Gloo] Rank 0 is connected to 0 peer ranks. Expected number of connected peer ranks is : 0
[Gloo] Rank 0 is connected to 0 peer ranks. Expected number of connected peer ranks is : 0
[Gloo] Rank 0 is connected to 0 peer ranks. Expected number of connected peer ranks is : 0
[Gloo] Rank 0 is connected to 0 peer ranks. Expected number of connected peer ranks is : 0
[Gloo] Rank 0 is connected to 0 peer ranks. Expected number of connected peer ranks is : 0
[Gloo] Rank 0 is connected to 0 peer ranks. Expected number of connected peer ranks is : 0
[Gloo] Rank 0 is connected to 0 peer ranks. Expected number of connected peer ranks is : 0
[Gloo] Rank 0 is connected to 0 peer ranks. Expected number of connected peer ranks is : 0
[Gloo] Rank 0 is connected to 0 peer ranks. Expected number of connected peer ranks is : 0
[Gloo] Rank 0 is connected to 0 peer ranks. Expected number of connected peer ranks is : 0
[Gloo] Rank 0 is connected to 0 peer ranks. Expected number of connected peer ranks is : 0
> initialized tensor model parallel with size 4
> initialized pipeline model parallel with size 1
> setting random seeds to 42 ...
> compiling dataset index builder ...
[rank3]:[W1113 16:25:49.051429812 ProcessGroupNCCL.cpp:5059] [PG ID 0 PG GUID 0 Rank 3]  using GPU 3 as device used by this process is currently unknown. This can potentially cause a hang if this rank to GPU mapping is incorrect. You can specify device_id in init_process_group() to force use of a particular device.
[rank1]:[W1113 16:25:49.051624423 ProcessGroupNCCL.cpp:5059] [PG ID 0 PG GUID 0 Rank 1]  using GPU 1 as device used by this process is currently unknown. This can potentially cause a hang if this rank to GPU mapping is incorrect. You can specify device_id in init_process_group() to force use of a particular device.
[rank2]:[W1113 16:25:49.051970884 ProcessGroupNCCL.cpp:5059] [PG ID 0 PG GUID 0 Rank 2]  using GPU 2 as device used by this process is currently unknown. This can potentially cause a hang if this rank to GPU mapping is incorrect. You can specify device_id in init_process_group() to force use of a particular device.
make: Entering directory '/megatron/Megatron-LM/megatron/core/datasets'
make: Nothing to be done for 'default'.
make: Leaving directory '/megatron/Megatron-LM/megatron/core/datasets'
>>> done with dataset index builder. Compilation time: 0.102 seconds
WARNING: constraints for invoking optimized fused softmax kernel are not met. We default back to unfused kernel invocations.
> compiling and loading fused kernels ...
[rank0]:[W1113 16:25:49.154689020 ProcessGroupNCCL.cpp:5059] [PG ID 0 PG GUID 0 Rank 0]  using GPU 0 as device used by this process is currently unknown. This can potentially cause a hang if this rank to GPU mapping is incorrect. You can specify device_id in init_process_group() to force use of a particular device.
>>> done with compiling and loading fused kernels. Compilation time: 11.762 seconds
time to initialize megatron (seconds): 28.021
[after megatron is initialized] datetime: 2025-11-13 16:26:06 
building GPT model ...
 > number of parameters on (tensor, pipeline) model parallel rank (0, 0): 1035906048
INFO:megatron.core.distributed.distributed_data_parallel:Setting up DistributedDataParallel with config DistributedDataParallelConfig(grad_reduce_in_fp32=True, overlap_grad_reduce=False, overlap_param_gather=False, align_param_gather=False, use_distributed_optimizer=True, num_distributed_optimizer_instances=1, check_for_nan_in_grad=True, bucket_size=None, average_in_collective=False, fp8_param_gather=False)
 > number of parameters on (tensor, pipeline) model parallel rank (1, 0): 1035906048
 > number of parameters on (tensor, pipeline) model parallel rank (3, 0): 1035906048
 > number of parameters on (tensor, pipeline) model parallel rank (2, 0): 1035906048
INFO:megatron.core.distributed.param_and_grad_buffer:Number of buckets for gradient all-reduce / reduce-scatter: 1
Params for bucket 1 (1035906048 elements):
	module.decoder.layers.7.mlp.linear_fc2.weight
	module.decoder.layers.2.mlp.linear_fc1.layer_norm_weight
	module.decoder.layers.25.mlp.linear_fc1.weight
	module.decoder.layers.20.mlp.linear_fc1.layer_norm_weight
	module.decoder.layers.17.mlp.linear_fc1.weight
	module.decoder.final_layernorm.weight
	module.decoder.layers.26.mlp.linear_fc1.layer_norm_weight
	module.decoder.layers.25.self_attention.linear_proj.weight
	module.decoder.layers.19.mlp.linear_fc1.weight
	module.decoder.layers.17.self_attention.linear_proj.weight
	module.decoder.layers.10.mlp.linear_fc1.weight
	module.decoder.layers.11.mlp.linear_fc1.weight
	module.decoder.layers.6.self_attention.linear_proj.weight
	module.decoder.layers.4.self_attention.linear_proj.weight
	module.decoder.layers.1.mlp.linear_fc1.weight
	module.decoder.layers.24.self_attention.linear_qkv.layer_norm_weight
	module.decoder.layers.22.mlp.linear_fc1.weight
	module.decoder.layers.16.self_attention.linear_qkv.layer_norm_weight
	module.decoder.layers.14.mlp.linear_fc1.weight
	module.decoder.layers.11.self_attention.linear_proj.weight
	module.decoder.layers.8.mlp.linear_fc2.weight
	module.decoder.layers.4.self_attention.linear_qkv.layer_norm_weight
	module.decoder.layers.2.mlp.linear_fc1.weight
	module.decoder.layers.0.mlp.linear_fc1.layer_norm_weight
	module.decoder.layers.24.self_attention.linear_qkv.weight
	module.decoder.layers.22.self_attention.linear_proj.weight
	module.decoder.layers.16.self_attention.linear_qkv.weight
	module.decoder.layers.14.self_attention.linear_proj.weight
	module.decoder.layers.19.self_attention.linear_qkv.layer_norm_weight
	module.decoder.layers.1.mlp.linear_fc1.layer_norm_weight
	module.decoder.layers.21.self_attention.linear_qkv.layer_norm_weight
	module.decoder.layers.19.mlp.linear_fc2.weight
	module.decoder.layers.25.mlp.linear_fc2.weight
	module.decoder.layers.21.self_attention.linear_qkv.weight
	module.decoder.layers.17.mlp.linear_fc2.weight
	module.decoder.layers.11.self_attention.linear_qkv.layer_norm_weight
	module.decoder.layers.5.self_attention.linear_qkv.layer_norm_weight
	module.decoder.layers.0.self_attention.linear_qkv.weight
	module.decoder.layers.12.mlp.linear_fc1.layer_norm_weight
	module.decoder.layers.6.self_attention.linear_qkv.layer_norm_weight
	module.decoder.layers.3.mlp.linear_fc1.layer_norm_weight
	module.decoder.layers.17.mlp.linear_fc1.layer_norm_weight
	module.decoder.layers.27.self_attention.linear_qkv.layer_norm_weight
	module.decoder.layers.25.mlp.linear_fc1.layer_norm_weight
	module.decoder.layers.11.mlp.linear_fc2.weight
	module.decoder.layers.27.self_attention.linear_qkv.weight
	module.decoder.layers.24.mlp.linear_fc1.weight
	module.decoder.layers.22.mlp.linear_fc2.weight
	module.decoder.layers.16.mlp.linear_fc1.weight
	module.decoder.layers.14.mlp.linear_fc2.weight
	module.decoder.layers.1.self_attention.linear_qkv.layer_norm_weight
	module.decoder.layers.26.mlp.linear_fc2.weight
	module.decoder.layers.24.self_attention.linear_proj.weight
	module.decoder.layers.18.self_attention.linear_qkv.weight
	module.decoder.layers.16.self_attention.linear_proj.weight
	module.decoder.layers.14.self_attention.linear_qkv.layer_norm_weight
	module.decoder.layers.13.self_attention.linear_qkv.layer_norm_weight
	module.decoder.layers.11.mlp.linear_fc1.layer_norm_weight
	module.decoder.layers.7.self_attention.linear_qkv.layer_norm_weight
	module.decoder.layers.5.mlp.linear_fc1.weight
	module.decoder.layers.22.mlp.linear_fc1.layer_norm_weight
	module.decoder.layers.14.mlp.linear_fc1.layer_norm_weight
	module.decoder.layers.13.self_attention.linear_qkv.weight
	module.decoder.layers.9.self_attention.linear_qkv.layer_norm_weight
	module.decoder.layers.0.self_attention.linear_qkv.layer_norm_weight
	module.decoder.layers.23.self_attention.linear_qkv.layer_norm_weight
	module.decoder.layers.21.mlp.linear_fc1.weight
	module.decoder.layers.19.mlp.linear_fc1.layer_norm_weight
	module.decoder.layers.15.self_attention.linear_qkv.layer_norm_weight
	module.decoder.layers.10.self_attention.linear_qkv.layer_norm_weight
	module.decoder.layers.9.self_attention.linear_proj.weight
	module.decoder.layers.8.mlp.linear_fc1.layer_norm_weight
	module.decoder.layers.5.self_attention.linear_proj.weight
	module.decoder.layers.2.self_attention.linear_qkv.layer_norm_weight
	module.decoder.layers.23.self_attention.linear_qkv.weight
	module.decoder.layers.21.self_attention.linear_proj.weight
	module.decoder.layers.15.self_attention.linear_qkv.weight
	module.decoder.layers.6.mlp.linear_fc1.weight
	module.decoder.layers.3.mlp.linear_fc2.weight
	module.decoder.layers.2.self_attention.linear_qkv.weight
	module.decoder.layers.26.self_attention.linear_qkv.layer_norm_weight
	module.decoder.layers.9.mlp.linear_fc1.layer_norm_weight
	module.decoder.layers.7.self_attention.linear_qkv.weight
	module.decoder.layers.6.self_attention.linear_qkv.weight
	module.decoder.layers.5.mlp.linear_fc2.weight
	module.embedding.word_embeddings.weight
	module.decoder.layers.27.mlp.linear_fc1.weight
	module.decoder.layers.26.self_attention.linear_qkv.weight
	module.decoder.layers.20.self_attention.linear_qkv.layer_norm_weight
	module.decoder.layers.9.mlp.linear_fc1.weight
	module.decoder.layers.8.self_attention.linear_qkv.layer_norm_weight
	module.decoder.layers.7.mlp.linear_fc1.layer_norm_weight
	module.decoder.layers.27.self_attention.linear_proj.weight
	module.decoder.layers.24.mlp.linear_fc2.weight
	module.decoder.layers.20.self_attention.linear_qkv.weight
	module.decoder.layers.16.mlp.linear_fc2.weight
	module.decoder.layers.18.mlp.linear_fc1.weight
	module.decoder.layers.12.self_attention.linear_qkv.layer_norm_weight
	module.decoder.layers.9.mlp.linear_fc2.weight
	module.decoder.layers.8.mlp.linear_fc1.weight
	module.decoder.layers.2.mlp.linear_fc2.weight
	module.decoder.layers.18.self_attention.linear_proj.weight
	module.decoder.layers.13.mlp.linear_fc1.weight
	module.decoder.layers.12.self_attention.linear_qkv.weight
	module.decoder.layers.8.self_attention.linear_qkv.weight
	module.decoder.layers.6.mlp.linear_fc1.layer_norm_weight
	module.decoder.layers.5.mlp.linear_fc1.layer_norm_weight
	module.decoder.layers.5.self_attention.linear_qkv.weight
	module.decoder.layers.3.mlp.linear_fc1.weight
	module.decoder.layers.3.self_attention.linear_qkv.weight
	module.decoder.layers.24.mlp.linear_fc1.layer_norm_weight
	module.decoder.layers.16.mlp.linear_fc1.layer_norm_weight
	module.decoder.layers.13.self_attention.linear_proj.weight
	module.decoder.layers.10.mlp.linear_fc1.layer_norm_weight
	module.decoder.layers.7.self_attention.linear_proj.weight
	module.decoder.layers.3.self_attention.linear_proj.weight
	module.decoder.layers.0.mlp.linear_fc1.weight
	module.decoder.layers.23.mlp.linear_fc1.weight
	module.decoder.layers.21.mlp.linear_fc2.weight
	module.decoder.layers.15.mlp.linear_fc1.weight
	module.decoder.layers.7.mlp.linear_fc1.weight
	module.decoder.layers.4.mlp.linear_fc2.weight
	module.decoder.layers.4.self_attention.linear_qkv.weight
	module.decoder.layers.2.self_attention.linear_proj.weight
	module.decoder.layers.0.mlp.linear_fc2.weight
	module.decoder.layers.23.self_attention.linear_proj.weight
	module.decoder.layers.15.self_attention.linear_proj.weight
	module.decoder.layers.21.mlp.linear_fc1.layer_norm_weight
	module.decoder.layers.27.mlp.linear_fc2.weight
	module.decoder.layers.26.self_attention.linear_proj.weight
	module.decoder.layers.20.mlp.linear_fc1.weight
	module.decoder.layers.19.self_attention.linear_qkv.weight
	module.decoder.layers.4.mlp.linear_fc1.weight
	module.decoder.layers.1.self_attention.linear_qkv.weight
	module.output_layer.weight
	module.decoder.layers.20.self_attention.linear_proj.weight
	module.decoder.layers.18.mlp.linear_fc2.weight
	module.decoder.layers.4.mlp.linear_fc1.layer_norm_weight
	module.decoder.layers.27.mlp.linear_fc1.layer_norm_weight
	module.decoder.layers.25.self_attention.linear_qkv.layer_norm_weight
	module.decoder.layers.18.self_attention.linear_qkv.layer_norm_weight
	module.decoder.layers.17.self_attention.linear_qkv.layer_norm_weight
	module.decoder.layers.13.mlp.linear_fc2.weight
	module.decoder.layers.12.self_attention.linear_proj.weight
	module.decoder.layers.10.self_attention.linear_qkv.weight
	module.decoder.layers.26.mlp.linear_fc1.weight
	module.decoder.layers.25.self_attention.linear_qkv.weight
	module.decoder.layers.18.mlp.linear_fc1.layer_norm_weight
	module.decoder.layers.17.self_attention.linear_qkv.weight
	module.decoder.layers.12.mlp.linear_fc2.weight
	module.decoder.layers.10.mlp.linear_fc2.weight
	module.decoder.layers.15.mlp.linear_fc2.weight
	module.decoder.layers.23.mlp.linear_fc2.weight
	module.decoder.layers.13.mlp.linear_fc1.layer_norm_weight
	module.decoder.layers.10.self_attention.linear_proj.weight
	module.decoder.layers.9.self_attention.linear_qkv.weight
	module.decoder.layers.8.self_attention.linear_proj.weight
	module.decoder.layers.1.self_attention.linear_proj.weight
	module.decoder.layers.22.self_attention.linear_qkv.layer_norm_weight
	module.decoder.layers.12.mlp.linear_fc1.weight
	module.decoder.layers.11.self_attention.linear_qkv.weight
	module.decoder.layers.3.self_attention.linear_qkv.layer_norm_weight
	module.decoder.layers.1.mlp.linear_fc2.weight
	module.decoder.layers.0.self_attention.linear_proj.weight
	module.decoder.layers.23.mlp.linear_fc1.layer_norm_weight
	module.decoder.layers.22.self_attention.linear_qkv.weight
	module.decoder.layers.15.mlp.linear_fc1.layer_norm_weight
	module.decoder.layers.14.self_attention.linear_qkv.weight
	module.decoder.layers.20.mlp.linear_fc2.weight
	module.decoder.layers.19.self_attention.linear_proj.weight
	module.decoder.layers.6.mlp.linear_fc2.weight
INFO:megatron.core.optimizer:Setting up optimizer with config OptimizerConfig(optimizer='adam', lr=0.00015, min_lr=1.5e-05, decoupled_lr=None, decoupled_min_lr=None, weight_decay=0.1, fp16=False, bf16=True, params_dtype=torch.bfloat16, loss_scale=None, initial_loss_scale=4294967296, min_loss_scale=1.0, loss_scale_window=1000, hysteresis=2, adam_beta1=0.9, adam_beta2=0.95, adam_eps=1e-05, sgd_momentum=0.9, use_distributed_optimizer=True, overlap_param_gather_with_optimizer_step=False, clip_grad=1.0, log_num_zeros_in_grad=False, barrier_with_L1_time=True, timers=<megatron.core.timers.Timers object at 0x7ef767a0dea0>, config_logger_dir='')
INFO:megatron.core.optimizer_param_scheduler:> learning rate decay style: cosine
[after model, optimizer, and learning rate scheduler are built] datetime: 2025-11-13 16:26:07 
> building train, validation, and test datasets ...
 > datasets target sizes (minimum size):
    train:      10240
    validation: 2560
    test:       2560
INFO:megatron.core.datasets.blended_megatron_dataset_config:Let split_matrix = [(0, 0.969), (0.969, 0.999), (0.999, 1.0)]
> building train, validation, and test datasets for GPT ...
INFO:megatron.core.datasets.blended_megatron_dataset_builder:Building dataset splits with cls=GPTDataset, sizes=(10240, 2560, 2560), and config=GPTDatasetConfig(random_seed=42, sequence_length=2048, blend=(['data/fineweb-10BT-BPE_text_document'], None), blend_per_split=None, renormalize_blend_weights=False, split='969, 30, 1', split_matrix=[(0, 0.969), (0.969, 0.999), (0.999, 1.0)], num_dataset_builder_threads=1, path_to_cache=None, mmap_bin_files=True, mock=False, tokenizer=<megatron.training.tokenizer.tokenizer._GPT2BPETokenizer object at 0x7ef767a0f790>, reset_position_ids=False, reset_attention_mask=False, eod_mask_loss=False, create_attention_mask=True, drop_last_partial_validation_sequence=True, add_extra_token_to_sequence=True, s3_cache_path=None)
INFO:megatron.core.datasets.indexed_dataset:Load the _IndexReader from data/fineweb-10BT-BPE_text_document.idx
INFO:megatron.core.datasets.indexed_dataset:	Extract the sequence lengths
INFO:megatron.core.datasets.indexed_dataset:	Extract the sequence pointers
INFO:megatron.core.datasets.indexed_dataset:	Extract the document indices
INFO:megatron.core.datasets.indexed_dataset:> total number of sequences: 14868862
INFO:megatron.core.datasets.indexed_dataset:> total number of documents: 14868862
INFO:megatron.core.datasets.gpt_dataset:Build and save the GPTDataset train indices
INFO:megatron.core.datasets.gpt_dataset:> total number of samples: 4899690
INFO:megatron.core.datasets.gpt_dataset:> total number of epochs: 1
INFO:megatron.core.datasets.gpt_dataset:Build and save the GPTDataset valid indices
INFO:megatron.core.datasets.gpt_dataset:> total number of samples: 149580
INFO:megatron.core.datasets.gpt_dataset:> total number of epochs: 1
INFO:megatron.core.datasets.gpt_dataset:Build and save the GPTDataset test indices
INFO:megatron.core.datasets.gpt_dataset:> total number of samples: 5018
INFO:megatron.core.datasets.gpt_dataset:> total number of epochs: 1
> finished creating GPT datasets ...
[after dataloaders are built] datetime: 2025-11-13 16:26:11 
done with setup ...
(min, max) time across ranks (ms):
    model-and-optimizer-setup ......................: (1345.37, 1359.59)
    train/valid/test-data-iterators-setup ..........: (3078.04, 3884.57)
training ...
[before the start of training step] datetime: 2025-11-13 16:26:12 
[aiter] type hints mismatch, override to --> rope_fwd_impl(arg0: torch.Tensor, arg1: torch.Tensor, arg2: torch.Tensor, arg3: int, arg4: bool, arg5: bool) -> None
WARNING:aiter:type hints mismatch, override to --> rope_fwd_impl(arg0: torch.Tensor, arg1: torch.Tensor, arg2: torch.Tensor, arg3: int, arg4: bool, arg5: bool) -> None
[aiter] type hints mismatch, override to --> rope_fwd_impl(arg0: torch.Tensor, arg1: torch.Tensor, arg2: torch.Tensor, arg3: int, arg4: bool, arg5: bool) -> None
[aiter] type hints mismatch, override to --> rope_fwd_impl(arg0: torch.Tensor, arg1: torch.Tensor, arg2: torch.Tensor, arg3: int, arg4: bool, arg5: bool) -> None
WARNING:aiter:type hints mismatch, override to --> rope_fwd_impl(arg0: torch.Tensor, arg1: torch.Tensor, arg2: torch.Tensor, arg3: int, arg4: bool, arg5: bool) -> None
WARNING:aiter:type hints mismatch, override to --> rope_fwd_impl(arg0: torch.Tensor, arg1: torch.Tensor, arg2: torch.Tensor, arg3: int, arg4: bool, arg5: bool) -> None
[aiter] type hints mismatch, override to --> rope_fwd_impl(arg0: torch.Tensor, arg1: torch.Tensor, arg2: torch.Tensor, arg3: int, arg4: bool, arg5: bool) -> None
WARNING:aiter:type hints mismatch, override to --> rope_fwd_impl(arg0: torch.Tensor, arg1: torch.Tensor, arg2: torch.Tensor, arg3: int, arg4: bool, arg5: bool) -> None

[AITER] /workspace/TransformerEngine/build/cmake/ck_fused_attn/gen_src/asm_fmha_fwd_v3_gfx942.cpp:142 fail to call hipModuleLaunchKernel(kernel_func, gdx, gdy, gdz, bdx, 1, 1, 0, s.stream_id_, NULL, reinterpret_cast<void**>(&config)) ---> [HIP error](invalid resource handle)

[AITER] /workspace/TransformerEngine/build/cmake/ck_fused_attn/gen_src/asm_fmha_fwd_v3_gfx942.cpp:142 fail to call hipModuleLaunchKernel(kernel_func, gdx, gdy, gdz, bdx, 1, 1, 0, s.stream_id_, NULL, reinterpret_cast<void**>(&config)) ---> [HIP error](invalid resource handle)

[AITER] /workspace/TransformerEngine/build/cmake/ck_fused_attn/gen_src/asm_fmha_fwd_v3_gfx942.cpp:142 fail to call hipModuleLaunchKernel(kernel_func, gdx, gdy, gdz, bdx, 1, 1, 0, s.stream_id_, NULL, reinterpret_cast<void**>(&config)) ---> [HIP error](invalid resource handle)

[AITER] /workspace/TransformerEngine/build/cmake/ck_fused_attn/gen_src/asm_fmha_fwd_v3_gfx942.cpp:142 fail to call hipModuleLaunchKernel(kernel_func, gdx, gdy, gdz, bdx, 1, 1, 0, s.stream_id_, NULL, reinterpret_cast<void**>(&config)) ---> [HIP error](invalid resource handle)
+ exit 0
