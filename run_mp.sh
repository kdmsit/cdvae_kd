
## Steps - 100

CUDA_VISIBLE_DEVICES=0 python3 -W ignore run.py data=mp_20 expname=mp_20


CUDA_VISIBLE_DEVICES=0 python3 -W ignore evaluate.py --model_path /home/kishalay-ng/workplace/cdvae_kd/singlerun/2025-05-07/mp_20 --tasks recon

CUDA_VISIBLE_DEVICES=0 python3 -W ignore evaluate.py --model_path /home/kishalay-ng/workplace/cdvae_kd/singlerun/2025-05-07/mp_20 --tasks gen

python3 -W ignore  compute_metrics.py --root_path /home/kishalay-ng/workplace/cdvae_kd/singlerun/2025-05-07/mp_20 --tasks gen

{'comp_valid': 0.6264, 'struct_valid': 0.8777, 'valid': 0.5569,
'wdist_density': 0.5882282671255601, 'wdist_num_elems': 0.7203659075834623,
'cov_recall': 0.5337165598054389, 'cov_precision': 0.9942,}

{'comp_valid': 0.6428, 'struct_valid': 0.8756, 'valid': 0.5728,
'wdist_density': 0.3723108128578442, 'wdist_num_elems': 0.7853659075834624,
'cov_recall': 0.4941410568206942, 'cov_precision': 0.9945,}


## Steps - 5000

CUDA_VISIBLE_DEVICES=0 python3 -W ignore run.py data=mp_20 expname=mp_20

CUDA_VISIBLE_DEVICES=0 python3 -W ignore evaluate.py --model_path /home/kishalay-ng/workplace/cdvae_kd/singlerun/2025-05-07/mp_20 --tasks recon

CUDA_VISIBLE_DEVICES=0 python3 -W ignore evaluate.py --model_path /home/kishalay-ng/workplace/cdvae_kd/singlerun/2025-05-07/mp_20 --tasks gen

python3 -W ignore  compute_metrics.py --root_path /home/kishalay-ng/workplace/cdvae_kd/singlerun/2025-05-07/mp_20 --tasks gen

{'comp_valid': 0.8237, 'struct_valid': 0.9998, 'valid': 0.8236, 'wdist_density': 0.6826740075990343, 'wdist_num_elems': 1.1859365465399072, 'cov_recall': 0.9909352199867345, 'cov_precision': 0.9954}