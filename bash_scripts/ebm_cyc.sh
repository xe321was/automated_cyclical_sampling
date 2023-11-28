#!/bin/bash
python pcd_ebm_ema.py \
    --dataset_name dynamic_mnist \
    --sampler cyc_dmala\
    --step_size 2.0 \
    --use_balancing_constant\
    --initial_balancing_constant 1.0\
    --num_cycles 2 \
    --sampling_steps 40 \
    --viz_every 100 \
    --model resnet-64 \
    --print_every 10 \
    --lr .0001 \
    --warmup_iters 10000 \
    --buffer_size 10000 \
    --n_iters 50000 \
    --buffer_init mean \
    --base_dist \
    --reinit_freq 0.0 \
    --eval_every 5000 \
    --eval_sampling_steps 10000 \
    --save_dir ./figs/ebm_ss40 \
    --cuda_id $1;
