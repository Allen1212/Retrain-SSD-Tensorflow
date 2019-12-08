#!/usr/bin/env bash


DATASET_DIR=./car_tfrecords
TRAIN_DIR=./train_logs/
CHECKPOINT_PATH=./checkpoints/ssd_300_vgg.ckpt
python3 ./train_ssd_network.py \
    --train_dir=${TRAIN_DIR} \
    --dataset_dir=${DATASET_DIR} \
    --dataset_name=pascalvoc_2007 \
    --dataset_split_name=train \
    --model_name=ssd_300_vgg \
    --checkpoint_path=${CHECKPOINT_PATH} \
    --save_summaries_secs=10000 \
    --save_interval_secs=10000 \
    --weight_decay=0.0005 \
    --optimizer=adam \
    --learning_rate=0.001 \
    --learning_rate_decay_factor=0.94 \
    --batch_size=16 \
