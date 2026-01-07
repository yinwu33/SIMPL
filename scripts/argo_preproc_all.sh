export DATA_DIR=data
export CACHE_DIR=cache/features

echo "-- Processing val set..."
python data_argo/run_preprocess.py --mode val \
  --data_dir $DATA_DIR$ \
  --save_dir $CACHE_DIR$

echo "-- Processing train set..."
python data_argo/run_preprocess.py --mode train \
  --data_dir $DATA_DIR$ \
  --save_dir $CACHE_DIR$

# echo "-- Processing test set..."
# python data_argo/run_preprocess.py --mode test \
#   --data_dir ~/data/dataset/argo_motion_forecasting/test_obs/data/ \
#   --save_dir data_argo/features/