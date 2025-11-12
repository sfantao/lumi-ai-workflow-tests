#!/bin/bash -e
set -x

# -b minbytes
# -e maxbytes
# -f increment factor
# -g gpus per thread
/opt/rccltests/all_reduce_perf -z 1 -b 2M -e 2048M -f 2 -g 1 -t 1 -R 1 -n 80 -w 5 -d half
