Env- cdvae
## Steps - 5000

CUDA_VISIBLE_DEVICES=0 python3 -W ignore run.py data=perov expname=perov

CUDA_VISIBLE_DEVICES=0 python3 -W ignore evaluate.py --model_path /home/kishalay-ng/workplace/cdvae_kd/singlerun/2025-05-05/carbon --tasks recon

CUDA_VISIBLE_DEVICES=0 python3 -W ignore evaluate.py --model_path /home/kishalay-ng/workplace/cdvae_kd/singlerun/2025-05-05/carbon --tasks gen