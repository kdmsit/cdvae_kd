Env- cdvae
## Steps - 5000

CUDA_VISIBLE_DEVICES=0 python3 -W ignore run.py data=perov expname=perov

CUDA_VISIBLE_DEVICES=1 python3 -W ignore evaluate.py --model_path /home/kishalay-ng/workplace/cdvae_kd/singlerun/2025-05-05/perov --tasks recon

CUDA_VISIBLE_DEVICES=0 python3 -W ignore evaluate.py --model_path /home/kishalay-ng/workplace/cdvae_kd/singlerun/2025-05-05/perov --tasks gen

python3 -W ignore  compute_metrics.py --root_path /home/kishalay-ng/workplace/cdvae_kd/singlerun/2025-05-05/perov --tasks gen

{'comp_valid': 0.9843, 'struct_valid': 1.0, 'valid': 0.9843,
'wdist_density': 0.054827140204242085, 'wdist_num_elems': 0.1009550858652577,
'cov_recall': 0.9955085865257596, 'cov_precision': 0.9846, }


## Steps - 100

CUDA_VISIBLE_DEVICES=0 python3 -W ignore run.py data=perov expname=perov

CUDA_VISIBLE_DEVICES=0 python3 -W ignore evaluate.py --model_path /home/kishalay-ng/workplace/cdvae_kd/singlerun/2025-05-07/perov --tasks recon

CUDA_VISIBLE_DEVICES=0 python3 -W ignore evaluate.py --model_path /home/kishalay-ng/workplace/cdvae_kd/singlerun/2025-05-07/perov --tasks gen

python3 -W ignore  compute_metrics.py --root_path /home/kishalay-ng/workplace/cdvae_kd/singlerun/2025-05-07/perov --tasks gen

{'comp_valid': 0.7824, 'struct_valid': 0.9223, 'valid': 0.7238,
'wdist_density': 3.148669165338972, 'wdist_num_elems': 2.0120449141347425,
'cov_recall': 0.0018494055482166448, 'cov_precision': 0.0007}

{'comp_valid': 0.741, 'struct_valid': 0.9242, 'valid': 0.6851,
'wdist_density': 2.1644098944910226, 'wdist_num_elems': 1.4300449141347422,
'cov_recall': 0.003170409511228534, 'cov_precision': 0.0021,}