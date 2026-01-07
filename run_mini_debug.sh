CUDA_VISIBLE_DEVICES=0 CUBLAS_WORKSPACE_CONFIG=:16:8 python train.py \
  --features_dir cache/features/ \
  --train_batch_size 8 \
  --val_batch_size 8 \
  --val_interval 1 \
  --train_epoches 1 \
  --data_aug \
  --use_cuda \
  --logger_writer \
  --adv_cfg_path config.simpl_av2_cfg_debug