#!/bin/bash

IMG_NAME="caffe-cpu"

rm -f $IMG_NAME.simg
sudo singularity build $IMG_NAME.simg Singularity
