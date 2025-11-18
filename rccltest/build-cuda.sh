#!/bin/bash -eux 
set -o pipefail

extra_build_args=""
version () {
    extra_build_args="$extra_build_args --build-arg ${1}_VERSION=$2"
}

version MEGATRON '9be7c7b'

#
# You should not need to change anything below this line.
#

BASENAME="$(basename $0 | sed 's/.sh$//' | sed 's/^build-//')"
TAG=lumi-ai-workflow-tests/$(basename $(pwd)):$BASENAME
SIF=$(basename $(pwd))-$BASENAME.sif
DOCKERFILE=build-$BASENAME.docker
LOG=build-$BASENAME.log

docker build \
  --build-arg https_proxy='http://172.23.0.3:3128/' \
  --build-arg http_proxy='http://172.23.0.3:3128/' \
  -f $DOCKERFILE \
  $extra_build_args \
  -t $TAG ../context-data-cuda 2>&1 | tee $LOG


rm -rf /tmp/sfantao-sif-build-pipe
mkdir /tmp/sfantao-sif-build-pipe

docker save $TAG -o /tmp/sfantao-sif-build-pipe/$SIF.tar
docker run --rm -v $(pwd):/workdir -v /tmp/sfantao-sif-build-pipe:/p -w /workdir quay.io/singularity/singularity:v4.3.1 build --force $SIF docker-archive:///p/$SIF.tar
docker run --rm -v $(pwd):/workdir -v /tmp/sfantao-sif-build-pipe:/p -w /workdir --entrypoint chown quay.io/singularity/singularity:v4.3.1 $(id -u): $SIF

exit 0

