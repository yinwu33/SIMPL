export DATA_DIR=data
export CACHE_DIR=cache/features

echo "-- Processing AV2 val set..."
python data_av2/run_preprocess.py --mode val \
  --data_dir $DATA_DIR/val/ \
  --save_dir $CACHE_DIR/

echo "-- Processing AV2 train set..."
python data_av2/run_preprocess.py --mode train \
  --data_dir $DATA_DIR/train/ \
  --save_dir $CACHE_DIR/