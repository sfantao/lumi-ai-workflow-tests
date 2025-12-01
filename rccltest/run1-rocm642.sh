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
# rsync -avhc run2-rocm642.sh /data1/sfantao/lumi-ai-workflow-tests/runfolder/$TESTNAME/
# bash -eux -c "cd /data1/sfantao/lumi-ai-workflow-tests/runfolder/$TESTNAME ; TAG=$TAG SIF=$SIF ./run2-rocm642.sh"
# exit 0

#
# Lockhart
#

#ssh lockhart-login1 "bash -eux -c 'mkdir -p /home/sfantao/lumi-ai-workflow-tests/$TESTNAME'"
#rsync -avhc --progress $SIF run2-rocm642.sh lockhart-login1:/home/sfantao/lumi-ai-workflow-tests/$TESTNAME/
# rsync -avhc --progress run2-rocm642.sh lockhart-login1:/home/sfantao/lumi-ai-workflow-tests/$TESTNAME/
# ssh lockhart-login1 "bash -eux -c 'cd /home/sfantao/lumi-ai-workflow-tests/$TESTNAME ; TAG=$TAG SIF=$SIF ./run2-rocm642.sh'"
# exit 

# rsync -avhc --progress run2-rocm642.sh lockhart-login1:/home/sfantao/lumi-ai-workflow-tests/$TESTNAME/
# for i in 1 ; do
#     SIF='/home/sfantao/lumi-ai-workflow-tests/lumi-pytorch-rocm-6.2.4-python-3.12-pytorch-v2.7.0.sif'
#     #SIF=../$SIF
#     Nodes=$((2*i))
#     wf=omniperf_run_nodes${Nodes}_$(date +%s)
#     ssh lockhart-login1 "bash -eux -c 'cd /home/sfantao/lumi-ai-workflow-tests/$TESTNAME ; \
#                              mkdir $wf ; cd $wf ;  \
#                              sed \"s/##Nodes##/$Nodes/g\" ../run2-rocm642.sh > ./run2-rocm642.sh ; \
#                              TAG=$TAG SIF=$SIF sbatch ./run2-rocm642.sh'"
# done

# exit 0

#
# LUMI
#



# ssh lumi3 "bash -eux -c 'mkdir -p /pfs/lustrep2/scratch/project_462000125/samantao/lumi-ai-workflow-tests/$TESTNAME'"
#rsync -avhc --progress $SIF run2-rocm642.sh lumi3:/pfs/lustrep2/scratch/project_462000125/samantao/lumi-ai-workflow-tests/$TESTNAME/
#rsync -avhc --progress run2-rocm642.sh lumi3:/pfs/lustrep2/scratch/project_462000125/samantao/lumi-ai-workflow-tests/$TESTNAME/
#ssh lumi3 "bash -eux -c 'cd /pfs/lustrep2/scratch/project_462000125/samantao/lumi-ai-workflow-tests/$TESTNAME ; TAG=$TAG SIF=$SIF ./run2-rocm642.sh'"

rsync -avhc --progress run2-rocm642-lumi.sh lumi3:/pfs/lustrep2/scratch/project_462000125/samantao/lumi-ai-workflow-tests/$TESTNAME/
for ppp in {1..3} ; do
for i in 16 32 64 128 ; do
    SIF='/appl/local/containers/sif-images/lumi-pytorch-rocm-6.2.4-python-3.12-pytorch-v2.7.0.sif'
    Nodes=$((8*i))
    wf=half_layers_8_8_noCP_run_nodes${Nodes}_$(date +%s)
    ssh lumi3 "bash -eux -c 'cd /pfs/lustrep2/scratch/project_462000125/samantao/lumi-ai-workflow-tests/$TESTNAME ; \
                             mkdir $wf ; cd $wf ;  \
                             sed \"s/##Nodes##/$Nodes/g\" ../run2-rocm642-lumi.sh > ./run2-rocm642-lumi.sh ; \
                             TAG=$TAG SIF=$SIF ppp=$ppp sbatch ./run2-rocm642-lumi.sh'"
done
done


#ssh thera "bash -eux -c 'mkdir -p /home/sfantao/lumi-ai-workflow-tests/$TESTNAME'"
#rsync -avhc --progress $SIF run2-rocm642.sh  thera:/home/sfantao/lumi-ai-workflow-tests/$TESTNAME/
#rsync -avhc --progress run2-rocm642.sh  thera:/home/sfantao/lumi-ai-workflow-tests/$TESTNAME/
#ssh thera "bash -eux -c 'cd /home/sfantao/lumi-ai-workflow-tests/$TESTNAME ; TAG=$TAG SIF=$SIF ./run2-rocm642.sh '"

