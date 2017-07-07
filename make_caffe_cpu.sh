#!/bin/bash
IMG_NAME="caffecpu.img"
sudo rm -fv $IMG_NAME
sudo singularity create -s 2500 $IMG_NAME
sudo singularity bootstrap $IMG_NAME caffe_cpu.def
