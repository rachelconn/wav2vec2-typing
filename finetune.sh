#!/bin/bash

fairseq-hydra-train \
    task.data=/run/media/rachel/Storage/git/fairseq/labeled_typing_manifest \
	dataset.batch_size=6 \
	distributed_training.distributed_world_size=1 \
	optimization.update_freq='[24]' \
    --config-dir /run/media/rachel/Storage/git/fairseq/examples/wav2vec/config/finetuning \
    --config-name typing_10h
