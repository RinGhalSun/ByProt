export CUDA_VISIBLE_DEVICES=0

exp=fixedbb/lm_design_esm1b_650m
dataset=cath_4.2
name=fixedbb/${dataset}/lm_design_esm1b_650m

python ./train.py \
    experiment=${exp} datamodule=${dataset} name=${name} \
    logger=tensorboard trainer=ddp_fp16 