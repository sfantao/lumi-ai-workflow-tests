#!/bin/bash -eux

BASENAME="$(basename $0 | sed 's/.sh$//' | sed 's/^run1-//')"
TAG=lumi-ai-workflow-tests/$(basename $(pwd)):$BASENAME
SIF=$(basename $(pwd))-$BASENAME.sif
TESTNAME=$(basename $(pwd))


# docker run -it --rm \
#     -e https_proxy='http://172.23.0.3:3128/' \
#     -e http_proxy='http://172.23.0.3:3128/' \
#     $TAG
# exit 0

#
# BP0: x1001c4s3b0n0
#

# mkdir -p /data1/sfantao/lumi-ai-workflow-tests/runfolder/$TESTNAME
# rsync -avhc run2-rocm701.sh /data1/sfantao/lumi-ai-workflow-tests/runfolder/$TESTNAME/
# bash -eux -c "cd /data1/sfantao/lumi-ai-workflow-tests/runfolder/$TESTNAME ; TAG=$TAG SIF=$SIF ./run2-rocm701.sh"
# exit 0

#
# Lockhart
#

# ssh lockhart-login1 "bash -eux -c 'mkdir -p /home/sfantao/lumi-ai-workflow-tests/$TESTNAME'"
# rsync -avhc $SIF run2-rocm701.sh lockhart-login1:/home/sfantao/lumi-ai-workflow-tests/$TESTNAME/
rsync -avhc run2-rocm701.sh lockhart-login1:/home/sfantao/lumi-ai-workflow-tests/$TESTNAME/
ssh lockhart-login1 "bash -eux -c 'cd /home/sfantao/lumi-ai-workflow-tests/$TESTNAME ; TAG=$TAG SIF=$SIF ./run2-rocm701.sh'"
exit 

#
# LUMI
#

# ssh lumi3 "bash -eux -c 'mkdir -p /pfs/lustrep2/scratch/project_462000125/samantao/lumi-ai-workflow-tests/$TESTNAME'"
# rsync -avhc $SIF run2-rocm701.sh lumi3:/pfs/lustrep2/scratch/project_462000125/samantao/lumi-ai-workflow-tests/$TESTNAME/
rsync -avhc run2-rocm701.sh lumi3:/pfs/lustrep2/scratch/project_462000125/samantao/lumi-ai-workflow-tests/$TESTNAME/
ssh lumi3 "bash -eux -c 'cd /pfs/lustrep2/scratch/project_462000125/samantao/lumi-ai-workflow-tests/$TESTNAME ; TAG=$TAG SIF=$SIF ./run2-rocm701.sh'"
