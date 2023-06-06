#!/bin/bash

DATA_DIR="./nuscenes"
# there should be ${DATA_DIR}/full_v1.0/
# and also ${DATA_DIR}/mini

MODEL_NAME="8x5_5e-4_rgb12_22:43:46" #"1x5_3e-4_rgb00_20:04:28"

EXP_NAME="12" # evaluate rgb00 model

python eval_nuscenes.py \
       --batch_size=4 \
       --exp_name=${EXP_NAME} \
       --dset='mini' \
       --data_dir=$DATA_DIR \
       --log_dir='logs_eval_nuscenes' \
       --init_dir="checkpoints/${MODEL_NAME}" \
       --res_scale=2 \
       --ncams=3\
       --device_ids=[1]
