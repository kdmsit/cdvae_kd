Env- cdvae
## Steps - 5000

CUDA_VISIBLE_DEVICES=1 python3 -W ignore run.py data=carbon expname=carbon

CUDA_VISIBLE_DEVICES=1 python3 -W ignore evaluate.py --model_path /home/kishalay-ng/workplace/cdvae_kd/singlerun/2025-05-05/carbon --tasks recon

CUDA_VISIBLE_DEVICES=1 python3 -W ignore evaluate.py --model_path /home/kishalay-ng/workplace/cdvae_kd/singlerun/2025-05-05/carbon --tasks gen

python3 -W ignore  compute_metrics.py --root_path /home/kishalay-ng/workplace/cdvae_kd/singlerun/2025-05-05/carbon --tasks gen


{'comp_valid': 1.0, 'struct_valid': 0.9999, 'valid': 0.9999, 'wdist_density': 0.1613618060288323, 'wdist_num_elems': 0.0,
'cov_recall': 0.9990147783251232, 'cov_precision': 0.8205}