#!/bin/bash -eux

BASENAME="$(basename $0 | sed 's/.sh$//' | sed 's/^run1-//')"
TAG=lumi-ai-workflow-tests/$(basename $(pwd)):$BASENAME
SIF=$(basename $(pwd))-$BASENAME.sif
TESTNAME=$(basename $(pwd))

###
if [ 1 -eq 0 ] ; then
    rm -rf /tmp/sfantao-sif-build-pipe
    mkdir /tmp/sfantao-sif-build-pipe

    TAG=rocm/megatron-lm:v25.9_gfx942
    SIF=megatron-lm-v25.9_gfx942.sif
    
    # docker pull $TAG 
    # docker save $TAG -o /tmp/sfantao-sif-build-pipe/$SIF.tar
    # docker run --rm -v $(pwd):/workdir -v /tmp/sfantao-sif-build-pipe:/p -w /workdir quay.io/singularity/singularity:v4.3.1 build --force $SIF docker-archive:///p/$SIF.tar
    # docker run --rm -v $(pwd):/workdir -v /tmp/sfantao-sif-build-pipe:/p -w /workdir --entrypoint chown quay.io/singularity/singularity:v4.3.1 $(id -u): $SIF
fi


# docker run -it --rm \
#     -e https_proxy='http://172.23.0.3:3128/' \
#     -e http_proxy='http://172.23.0.3:3128/' \
#     $TAG
# exit 0

#
# BP0: x1001c4s3b0n0
#

# mkdir -p /data1/sfantao/lumi-ai-workflow-tests/runfolder/$TESTNAME
# rsync -avhc run2-rocm642-mi300.sh  /data1/sfantao/lumi-ai-workflow-tests/runfolder/$TESTNAME/
# bash -eux -c "cd /data1/sfantao/lumi-ai-workflow-tests/runfolder/$TESTNAME ; TAG=$TAG SIF=$SIF ./run2-rocm642-mi300.sh "
# exit 0

#
# Lockhart
#

#ssh lockhart-login1 "bash -eux -c 'mkdir -p /home/sfantao/lumi-ai-workflow-tests/$TESTNAME'"
#rsync -avhc --progress $SIF run2-rocm642-mi300.sh  lockhart-login1:/home/sfantao/lumi-ai-workflow-tests/$TESTNAME/
# rsync -avhc --progress run2-rocm642-mi300.sh  lockhart-login1:/home/sfantao/lumi-ai-workflow-tests/$TESTNAME/
# ssh lockhart-login1 "bash -eux -c 'cd /home/sfantao/lumi-ai-workflow-tests/$TESTNAME ; TAG=$TAG SIF=$SIF ./run2-rocm642-mi300.sh '"


#
# LUMI
#

# ssh lumi3 "bash -eux -c 'mkdir -p /pfs/lustrep2/scratch/project_462000125/samantao/lumi-ai-workflow-tests/$TESTNAME'"
#rsync -avhc --progress $SIF run2-rocm642-mi300.sh  lumi3:/pfs/lustrep2/scratch/project_462000125/samantao/lumi-ai-workflow-tests/$TESTNAME/
# rsync -avhc --progress run2-rocm642-mi300.sh  lumi3:/pfs/lustrep2/scratch/project_462000125/samantao/lumi-ai-workflow-tests/$TESTNAME/
# ssh lumi3 "bash -eux -c 'cd /pfs/lustrep2/scratch/project_462000125/samantao/lumi-ai-workflow-tests/$TESTNAME ; TAG=$TAG SIF=$SIF ./run2-rocm642-mi300.sh '"

#
# Thera - needs reverse tunnel
#

#ssh thera "bash -eux -c 'mkdir -p /home/sfantao/lumi-ai-workflow-tests/$TESTNAME'"
#rsync -avhc --progress $SIF run2-rocm642-mi300.sh  thera:/home/sfantao/lumi-ai-workflow-tests/$TESTNAME/
rsync -avhc --progress run2-rocm642-mi300.sh  thera:/home/sfantao/lumi-ai-workflow-tests/$TESTNAME/
ssh thera "bash -eux -c 'cd /home/sfantao/lumi-ai-workflow-tests/$TESTNAME ; TAG=$TAG SIF=$SIF ./run2-rocm642-mi300.sh '"
