#!/usr/bin/env bash


#DATASET_DIR=./VOC2007/test/
#OUTPUT_DIR=./VOC2007/tfrecords

DATASET_DIR=./cpsc7910/
OUTPUT_DIR=./car_tfrecords/

python3 ./tf_convert_data.py --dataset_name=pascalvoc --dataset_dir=${DATASET_DIR} --output_name=voc_2007_train --output_dir=${OUTPUT_DIR}