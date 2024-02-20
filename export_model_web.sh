#!/bin/sh
source activate
conda activate yolov5
if [ $# -ne 1 ]; then
  echo "Error: 参数错误，bash export_model.sh model_address"
  exit 1
fi
TRAIN_MODEL_ADDRESS=$1
python export.py --weights runs/train/${TRAIN_MODEL_ADDRESS}/weights/best.pt --include tfjs
#onnx
