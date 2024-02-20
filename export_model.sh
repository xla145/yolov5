#!/bin/sh
source activate
conda activate yolov5
if [ $# -ne 2 ]; then
  echo "Error: 参数错误，bash export_model.sh model_type model_address"
  exit 1
fi
MODEL_TYPE=$1
TRAIN_MODEL_ADDRESS=$2
python export.py --weights runs/train/${TRAIN_MODEL_ADDRESS}/weights/best.pt --include torchscript ${MODEL_TYPE}
#onnx
