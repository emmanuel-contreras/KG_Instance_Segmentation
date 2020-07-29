#!/bin/bash

set -e

### copy conda environment from staging 
cp /staging/econtreras/kg_seg.tar.gz ./


### setup python environment
export PATH
mkdir kg_seg
tar -xzf kg_seg.tar.gz -C kg_seg
. kg_seg/bin/activate


#### get code 
git clone https://github.com/emmanuel-contreras/KG_Instance_Segmentation.git


#extract dataset
unzip dataset.zip

python3 KG_Instance_Segmentation/train.py --data_dir dataset --epochs 100 --batch_size 2 --dataset kaggle


## unzip keggle 2018 dataset and randomize


# cleanup 


### remove conda environment
rm kg_seg.tar.gz
