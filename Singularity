Bootstrap: docker
From: bvlc/caffe:cpu

%environment

	#Environment variables

	#Use bash as default shell
	SHELL=/bin/bash


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

	# Update list of packages and install packages for ease of use.
	apt-get update
	apt-get install - y apt-utils
	apt-get install -y vim
	apt-get install -y tmux screen
	apt-get install -y xterm
	
	# Install for tkinter
	apt-get install -y python-tk
	#Instal dependencies for caffe
	apt-get install -y libxcb-xfixes0-dev

	# OpenCV from pip, including contrib.  This makes the install MUCH faster.
	# See https://pypi.python.org/pypi/opencv-contrib-python for capabilities 
	# and limitations.  
	pip install --no-cache-dir opencv-contrib-python

	# Installing imutils,dlib,progressbar for FACES projectt
	pip install --no-cache-dir imutils
	pip install --no-cache-dir dlib
	pip install progressbar2


%runscript
	#Executes with the singularity run command
	#delete this section to use existing docker ENTRYPOINT command





%test
	#Test that script is a success
