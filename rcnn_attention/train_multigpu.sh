CONFIG="./configs/${1}.config"
OUTPUT="./logs/${1}"

mkdir -p ${OUTPUT}
cp ${CONFIG} ${OUTPUT}

CUDA_VISIBLE_DEVICES="0,1" python train.py --logtostderr \
                                         --pipeline_config_path=${CONFIG} \
                                         --train_dir="${OUTPUT}/train/" \
                                         --num_clones=2
