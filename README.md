# Examples for Data parallel training 
Created based on https://github.com/horovod/horovod/tree/master/examples. The original examples from Horovod are assumed to be run on GPU. I modified them to be able to run on CPUs.

The submission scripts are for Theta @ ALCF. 

## List of Examples 

### MNIST examples:
     keras_mnist.py
     tensorflow_mnist.py
     pytorch_mnist.py

### ImageNet examples:
     keras_imagenet_resnet50.py
     pytorch_imagenet_resnet50.py
     tensorflow_synthetic_benchmark.py

## Submission scripts:
    submissions/theta/qsub_*.sh

## Running the jobs
   qsub -A SDL_Workshop submissions/theta/qsub_keras_mnist.py

