
#CUDA_VISIBLE_DEVICES=0 \
#    python main.py \
#    --normalization GCN_ZCA \
#    --l1-reg 0.0 \
#    --l2-reg 0.0 \
#    --name baseline_GCN_ZCA_no_l1_l2 >> logs/baseline_GCN_ZCA_no_l1_l2.log &

#CUDA_VISIBLE_DEVICES=1 \
#    python main.py \
#    --normalization GCN_ZCA \
#    --l1-reg 0.0 \
#    --l2-reg 0.0 \
#    --gaussian-noise-level 0.0 \
#    --name baseline_GCN_ZCA_no_l1_l2_no_gaussian >> logs/baseline_GCN_ZCA_no_l1_l2_no_gaussian.log &

#CUDA_VISIBLE_DEVICES=2 \
#    python main.py \
#    --normalization GCN \
#    --l1-reg 0.0 \
#    --l2-reg 0.0 \
#    --name baseline_GCN_no_l1_l2 >> logs/baseline_GCN_no_l1_l2.log &

#CUDA_VISIBLE_DEVICES=3 \
#    python main.py \
#    --normalization GCN \
#    --l1-reg 0.0 \
#    --l2-reg 0.0 \
#    --gaussian-noise-level 0.0 \
#    --name baseline_GCN_no_l1_l2_no_gaussian >> logs/baseline_GCN_no_l1_l2_no_gaussian.log &

#CUDA_VISIBLE_DEVICES=4,5 \
#    python main.py \
#    --normalization GCN \
#    --l1-reg 0.0 \
#    --l2-reg 0.0 \
#    --gaussian-noise-level 0.0 \
#    --batch-size 32 \
#    --UDA --use-cutout \
#    --TSA linear \
#    --name UDA_GCN_Cutout_no_l1_l2_no_gaussian >> logs/UDA_GCN_Cutout_no_l1_l2_no_gaussian.log &

#CUDA_VISIBLE_DEVICES=6,7 \
#    python main.py \
#    --normalization GCN \
#    --l1-reg 0.0 \
#    --l2-reg 0.0 \
#    --batch-size 32 \
#    --UDA \
#    --TSA linear \
#    --name UDA_GCN_no_l1_l2_no_gaussian >> logs/UDA_GCN_no_l1_l2_no_gaussian.log &

#CUDA_VISIBLE_DEVICES=2,3 \
#    python main.py \
#    --normalization GCN_ZCA \
#    --l1-reg 0.0 \
#    --l2-reg 0.0 \
#    --gaussian-noise-level 0.0 \
#    --batch-size 32 \
#    --UDA \
#    --TSA linear \
#    --name UDA_GCN_ZCA_no_l1_l2_no_gaussian 

#CUDA_VISIBLE_DEVICES=4,5 \
#    python main.py \
#    --normalization GCN \
#    --l1-reg 0.0 \
#    --l2-reg 0.0 \
#    --batch-size 32 \
#    --UDA \
#    --name UDA_GCN_no_l1_l2_no_TSA \
#    >> UDA_GCN_no_l1_l2_no_TSA.log &

#CUDA_VISIBLE_DEVICES=4,5 \
#    python main.py \
#    --normalization GCN \
#    --l1-reg 0.0 \
#    --l2-reg 0.0 \
#    --batch-size 32 \
#    --UDA \
#    --lr 0.001 \
#    --name UDA_GCN_no_l1_l2_no_TSA_lr_0.001 \
#    >> UDA_GCN_no_l1_l2_no_TSA_lr_0.001.log &

#CUDA_VISIBLE_DEVICES=6,7 \
#    python main.py \
#    --normalization GCN \
#    --l1-reg 0.0 \
#    --l2-reg 0.0 \
#    --batch-size 32 \
#    --UDA \
#    --unsup-loss-weight 0.1 \
#    --name UDA_GCN_no_l1_l2_no_TSA_unsup_weight_0.1 \
#    >> UDA_GCN_no_l1_l2_no_TSA_unsup_weight_0.1.log &

#CUDA_VISIBLE_DEVICES=6,7 \
#    python main.py \
#    --normalization GCN \
#    --l1-reg 0.0 \
#    --l2-reg 0.0 \
#    --batch-size 32 \
#    --UDA \
#    --unsup-loss-weight 0.1 \
#    --lr 0.001 \
#    --name UDA_GCN_no_l1_l2_no_TSA_lr_0.001_unsup_weight_0.1 \
#    >> UDA_GCN_no_l1_l2_no_TSA_lr_0.001_unsup_weight_0.1.log &

#CUDA_VISIBLE_DEVICES=6,7 \
#    python main.py \
#    --normalization GCN \
#    --l1-reg 0.0 \
#    --l2-reg 0.0 \
#    --batch-size 32 \
#    --UDA \
#    --UDA-CUTOUT \
#    --name UDA_GCN_no_l1_l2_no_TSA_CUTOUT \
#    >> UDA_GCN_no_l1_l2_no_TSA_CUTOUT.log &

#CUDA_VISIBLE_DEVICES=4,5 \
#    python main.py \
#    --normalization GCN \
#    --l1-reg 0.0 \
#    --l2-reg 0.0 \
#    --batch-size 32 \
#    --lr 0.003 \
#    --lr-decay-rate 0.04 \
#    --max-iter 100000 \
#    --lr-decay-at 80000 \
#    --lr-decay step \
#    --UDA \
#    --UDA-CUTOUT \
#    --name UDA_GCN_no_l1_l2_no_TSA_lr_0.003_0.00012_100K \
#    >> UDA_GCN_no_l1_l2_no_TSA_lr_0.003_0.00012_100K.log &

CUDA_VISIBLE_DEVICES=6,7 \
    python main.py \
    --normalization GCN \
    --l1-reg 0.0 \
    --l2-reg 0.0 \
    --batch-size 32 \
    --lr 0.003 \
    --lr-decay-rate 0.04 \
    --max-iter 100000 \
    --final-lr 0.00012 \
    --lr-decay-at 80000 \
    --lr-decay linear \
    --UDA \
    --UDA-CUTOUT \
    --name UDA_GCN_no_l1_l2_no_TSA_lr_decay_linear_100K \
    >> UDA_GCN_no_l1_l2_no_TSA_lr_lr_decay_linear_100K.log &