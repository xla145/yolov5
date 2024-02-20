#!/bin/sh


source activate
conda activate yolov5
if [ -z "$1" ]; then
  echo "Error: 训练项目为空，请输入训练项目名！"
  exit 1
fi

PROJECT=$1


#mkdir ./dataset/${PROJECT}/config
#mkd：ir ./dataser/${PROJECT}/data

#python gen_train_config.py ${PROJECT} 
python train.py --img 640 --batch 128 --epochs 2000 --data ./dataset/${PROJECT}/config/dataset.yaml --weights yolov5n.pt #--cfg ./dataset/${PROJECT}/config/model.yaml
