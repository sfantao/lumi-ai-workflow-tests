#!/bin/bash -eux
BASENAME="$(basename $0 | sed 's/.sh$//' | sed 's/^run2-//')"
SIF=$(realpath $SIF)

mkdir -p $BASENAME.runfolder
cd $BASENAME.runfolder

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
    
    Nodes=8
    c=fe
    MYMASKS="0x${c}000000000000,0x${c}00000000000000,0x${c}0000,0x${c}000000,0x${c},0x${c}00,0x${c}00000000,0x${c}0000000000"

    #export MASTER_ADDR=\$(scontrol show hostname "\$SLURM_NODELIST" | head -n1)

    mpicmd="srun \
        --mpi=pmi2 \
        -p MI250X_A1_COS_OK \
        --time 1:00:00 \
        --mem 0 \
        --exclusive \
        --threads-per-core=1 \
        -c 8 \
        -N $Nodes \
        -n $((Nodes*8)) \
        --cpu-bind=mask_cpu:$MYMASKS \
        --gpus $((Nodes*8)) \
        singularity exec \
            -B /var/spool/slurm \
            -B $(pwd):/workdir \
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
# RCCL test
#
rm -rf run.sh 
cat > run.sh << EOF
#!/bin/bash -e
set -x

export PMIX_MCA_psec=^munge
export NCCL_NET_PLUGIN=librccl-net.so

# export FI_MR_CACHE_MONITOR=userfaultfd
# export FI_CXI_DEFAULT_CQ_SIZE=131072
# export FI_CXI_RX_MATCH_MODE=software
# export FI_CXI_RDZV_PROTO=alt_read

# export NCCL_DEBUG=INFO
# export NCCL_DEBUG_SUBSYS=INIT,COLL

#export LD_LIBRARY_PATH="/opt/rccl-original:\$LD_LIBRARY_PATH"

# -b minbytes
# -e maxbytes
# -f increment factor
# -g gpus per thread
/opt/rccltests/\$COLL_TYPE -z 1 -b 4 -e 2048M -f 2 -g 1 -t 1 -R 1 -n 20 -w 5 -d half


#/opt/rccltests/all_reduce_perf -z 1 -b 4 -e 2048M -f 2 -g 1 -t 1 -R 1 -n 20 -w 5 -d half

EOF
chmod +x run.sh 

for i in \
    c_all_gather_perf \
    c_all_reduce_perf \
    alltoall_perf \
    x_alltoallv_perf \
    c_broadcast_perf \
    x_gather_perf \
    x_hypercube_perf \
    c_reduce_perf \
    c_reduce_scatter_perf \
    x_scatter_perf \
    x_sendrecv_perf ; do

    if [[ "$i" == "c_"* ]] ; then continue; fi
    if [[ "$i" == "x_"* ]] ; then continue; fi
    if [[ "$i" == "h_"* ]] ; then continue; fi

export COLL_TYPE=$i
$mpicmd ./run.sh |& tee res.log

done

exit 0


    c_all_gather_perf \
    c_all_reduce_perf \
    x_alltoall_perf \
    x_alltoallv_perf \
    c_broadcast_perf \
    x_gather_perf \
    x_hypercube_perf \
    h_reduce_perf \
    c_reduce_scatter_perf \
    x_scatter_perf \
    x_sendrecv_perf ; do

# docker run -it --rm \
#     -e https_proxy='http://172.23.0.3:3128/' \
#     -e http_proxy='http://172.23.0.3:3128/' \
#     $TAG

docker run -it --rm \
    -e https_proxy='http://172.23.0.3:3128/' \
    -e http_proxy='http://172.23.0.3:3128/' \
    ubuntu:noble-20250925