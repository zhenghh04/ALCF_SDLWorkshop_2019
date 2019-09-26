# Examples for Data parallel training 

Author: Huihuo Zheng
Purpose: ALCF Simulation, Data, and Learning Workshop, 2019

## List of Examples 

### MNIST examples:
     keras_mnist.py
     tensorflow_mnist.py
     pytorch_mnist.py

### ImageNet examples:
     keras_imagenet_resnet50.py
     pytorch_imagenet_resnet50.py
     tensorflow_synthetic_benchmark.py

These examples were created based on https://github.com/horovod/horovod/tree/master/examples. The original examples from Horovod are assumed to be run on GPU. I modified them to be able to run on CPUs.

## Submission scripts:
   The submission scripts are for Theta @ ALCF.	
    submissions/theta/qsub_*.sh

## Running the examples
   qsub -A SDL_Workshop -q training -t 1:00:00 -n 4 submissions/theta/qsub_keras_mnist.py
       
   * modify -n and -t to run on different number of nodes with different walltime. 

   * We assume one worker per node in all the cases. Modify PROC_PER_NODE and num_intra, num_threads accordingly if you want to set more than one workers per node. 