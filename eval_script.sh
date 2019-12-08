#!/usr/bin/env bash

# This is the eval script.
DATASET_DIR=./VOC2007/tfrecords
EVAL_DIR=./logs/   # Directory where the results are saved to
CHECKPOINT_PATH=./checkpoints/ssd_300_vgg.ckpt
python3 ./eval_ssd_network.py \
    --eval_dir=${EVAL_DIR} \
    --dataset_dir=${DATASET_DIR} \
    --dataset_name=pascalvoc_2007 \
    --dataset_split_name=test \
    --model_name=ssd_300_vgg \
    --checkpoint_path=${CHECKPOINT_PATH} \
    --batch_size=1
