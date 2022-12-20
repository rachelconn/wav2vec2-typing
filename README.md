# Installation
Follow the steps from [the original fairseq repo](https://github.com/facebookresearch/fairseq#requirements-and-installation).

# Creating a manifest for unlabeled data
- Run `python examples/wav2vec/wav2vec_manifest.py /path/to/waves --dest /manifest/path --ext wav --valid-percent 0.01`

# Pretraining
- Run `./pretrain.sh`, making sure to replace `task.data` with the unlabeled manifest folder path and `--config-dir` with `${repo_path}/examples/wav2vec/pretraining`.

# Creating a manifest for labeled data
- Run `python examples/wav2vec/wav2vec_manifest.py /path/to/waves --dest /manifest/path --ext wav --valid-percent 0.01` to create `.tsv` files for the labeled data.
- Follow the instructions in [the Typing-Cryptanalysis repo](https://github.com/rachelconn/Typing-Cryptanalysis) to create the rest of the manifest files, and put them in the same folder as the generated `.tsv` files.

# Fine-tuning
- Run `./finetune.sh`, replacing `task.data` with the labeled manifest folder path and `--config-dir` with `${repo_path}/examples/wav2vec/finetuning`.

# Converting model to Hugging Face format for inference
- Run `./convert_to_hf.sh`, making sure that the arguments are set correctly:
  - `--pytorch_dump_folder_path`: path to save the converted model to
  - `--checkpoint_path`: path to `.pt` file for conversion
  - `--dict_path`: path to `dict.ltr.txt` used during fine-tuning
  - `--config_path`: path to `config.json`, should be located in the root folder of this repo
