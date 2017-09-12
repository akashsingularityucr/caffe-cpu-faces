Bootstrap: docker
From: bvlc/caffe:cpu

%environment

	#Environment variables

	#Use bash as default shell
	SHELL=/bin/bash

	#Add nvidia driver paths
	PATH="/nvbin:$PATH"
	LD_LIBRARY_PATH="/nvlib;$LD_LIBRARY_PATH"

	#Add CUDA paths
	CPATH="/usr/local/cuda/include:$CPATH"
	PATH="/usr/local/cuda/bin:$PATH"
	LD_LIBRARY_PATH="/usr/local/cuda/lib64:$LD_LIBRARY_PATH"
	CUDA_HOME="/usr/local/cuda"

	#Add Caffe paths
  CAFFE_ROOT="/opt/caffe"
  PYCAFFE_ROOT="$CAFFE_ROOT/python"
  PYTHONPATH="$PYCAFFE_ROOT:$PYTHONPATH"
  PATH="$CAFFE_ROOT/build/tools:$PYCAFFE_ROOT:$PATH"

	export PATH LD_LIBRARY_PATH CPATH CUDA_HOME CAFFE_ROOT PYCAFFE_ROOT PYTHONPATH

%setup
	#Runs on host
	#The path to the image is $SINGULARITY_ROOTFS


%post
	#Post setup script

	#Load environment variables
	. /environment

	#Default mount paths
	mkdir /scratch /data /shared /fastdata

	#Nvidia Library mount paths
	mkdir /nvlib /nvbin


%runscript
	#Executes with the singularity run command
	#delete this section to use existing docker ENTRYPOINT command





%test
	#Test that script is a success
