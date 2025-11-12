#!/bin/bash -eux 
set -o pipefail

extra_build_args=""
version () {
    extra_build_args="$extra_build_args --build-arg ${1}_VERSION=$2"
}

version PYTHON '3.12'
version PYTORCH '2.8.0+rocm6.3'
version APEX '4b03581'
version TORCHVISION '0.23.0+rocm6.3'
version TORCHDATA '0.10.0'
version TORCHTEXT '0.18.0'
version TORCHAUDIO '2.8.0+rocm6.3'
version DEEPSPEED '0.17.4'
version FLASH_ATTENTION 'v2.8.3'
version VLLM 'v0.10.1'
version CUPY '13.6.0'
version MPI4PY '4.1.0'
version RCCL 'e72b592'
version TE '1139bc1'

version MEGATRON '856c36d'
version AITER 'a2122a2'
version XFORMERS '90f6960'
version BITS_AND_BYTES '48a551f'
version RCCL '2f7ac66'
version AOTRITON '0.10b'

version TORCHAO '0.13.0+rocm6.3'
version TORCHTUNE 'v0.6.1'

# From AOTRITON deps -> triton -> llvm hash
version TRITON 'aotriton/0.10'
version TRITON_LLVM '3c709802d31b5bc5ed3af8284b40593ff39b9eec'

# Based on Pytorch commits: Check .ci/docker/ci_commit_pins/triton.txt in Pytorch
version TRITON_FINAL 96316ce50fade7e209553aba4898cd9b82aab83b
version TRITON_FINAL_LLVM a66376b0dc3b2ea8a84fda26faca287980986f78

#
# You should not need to change anything below this line.
#

BASENAME="$(basename $0 | sed 's/.sh$//' | sed 's/^build-//')"
TAG=lumi-ai-workflow-tests/$(basename $(pwd)):$BASENAME
DOCKERFILE=build-$BASENAME.docker
LOG=build-$BASENAME.log

docker build \
  --build-arg https_proxy='http://172.23.0.3:3128/' \
  --build-arg http_proxy='http://172.23.0.3:3128/' \
  -f $DOCKERFILE \
  $extra_build_args \
  -t $TAG . 2>&1 | tee $LOG
