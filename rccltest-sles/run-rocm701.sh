#!/bin/bash -eux

BASENAME="$(basename $0 | sed 's/.sh$//' | sed 's/^run-//')"
TAG=lumi-ai-workflow-tests/$(basename $(pwd)):$BASENAME

# docker run -it --rm \
#     -e https_proxy='http://172.23.0.3:3128/' \
#     -e http_proxy='http://172.23.0.3:3128/' \
#     $TAG

docker run -it --rm \
    -e https_proxy='http://172.23.0.3:3128/' \
    -e http_proxy='http://172.23.0.3:3128/' \
    registry.suse.com/bci/bci-base:15.7-5.8.33