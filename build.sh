#!/bin/bash

IMG_SIZE=8500
IMG_NAME="caffe-cpu"

rm -f $IMG_NAME.img
sudo singularity create --size $IMG_SIZE $IMG_NAME.img
sudo singularity bootstrap $IMG_NAME.img Singularity
