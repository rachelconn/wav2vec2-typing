#!/bin/bash

fairseq-hydra-train \
    task.data=/run/media/rachel/Storage/Datasets/typing-manifest \
	dataset.batch_size=6 \
	distributed_training.distributed_world_size=1 \
	optimization.update_freq='[8]' \
    --config-dir /run/media/rachel/Storage/git/fairseq/examples/wav2vec/config/pretraining \
    --config-name wav2vec2_base_typing
	--tensorboard-logdir typing_tb
