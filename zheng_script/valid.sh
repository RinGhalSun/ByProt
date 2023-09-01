export CUDA_VISIBLE_DEVICES=0

dataset=cath_4.2
# name=fixedbb/${dataset}/protein_mpnn_cmlm
name=fixedbb/${dataset}/lm_design_esm1b_650m
exp_path=/mnt/nas/share/home/sz/ByProt/run/logs/${name}

python ./test.py \                                                                 
    experiment_path=${exp_path} \
    data_split=test ckpt_path=best.ckpt mode=predict \
    task.generator.max_iter=5