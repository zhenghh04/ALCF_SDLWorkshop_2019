#!/bin/bash
#COBALT -n 1 
#COBALT -t 1:00:00
#COBALT -q debug-cache-quad --attrs mcdram=cache:numa=quad
#COBALT -A datascience

#submisstion script for running tensorflow_mnist with horovod

echo "Running Cobalt Job $COBALT_JOBID."

#Loading modules
module load datascience/pytorch-1.1

PROC_PER_NODE=4

aprun -n $(($COBALT_JOBSIZE*$PROC_PER_NODE)) -N $PROC_PER_NODE \
    -j 2 -d 32 -cc depth \
    -e OMP_NUM_THREADS=32 \
    -e KMP_BLOCKTIME=0 \
    python pytorch_mnist.py --num_threads=32 --device cpu

