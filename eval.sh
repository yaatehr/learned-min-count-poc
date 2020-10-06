
# # === Internet Traffic ===

# # replace ${tmin} to generate results for other minutes
# tmin=1359

# ## count min

# python3 count_min_param.py \
#     --space_list 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1 1.2 1.4 1.6 1.8 2 3 4 \
#     --n_hashes 1 2 3 4 \
#     --save cmin_ip_${tmin} --n_workers 30 \
#     --data ./data/caida/equinix-chicago.dirA.20160121-${tmin}00.ports.npy

# ## lookup table + count min

# python3 cutoff_count_min_param.py \
#     --space_list 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1 1.2 1.4 1.6 1.8 2 3 4 \
#     --n_hashes 1 2 3 4 --save cmin_ip_${tmin} --n_workers 30 \
#     --test_data  ./data/caida/equinix-chicago.dirA.20160121-${tmin}00.ports.npy \
#     --valid_data ./data/caida/equinix-chicago.dirA.20160121-130700.ports.npy \
#     --lookup     ./data/caida/equinix-chicago.dirA.20160121-130000.ports.npy \
#                  ./data/caida/equinix-chicago.dirA.20160121-130100.ports.npy \
#                  ./data/caida/equinix-chicago.dirA.20160121-130200.ports.npy \
#                  ./data/caida/equinix-chicago.dirA.20160121-130300.ports.npy \
#                  ./data/caida/equinix-chicago.dirA.20160121-130400.ports.npy \
#                  ./data/caida/equinix-chicago.dirA.20160121-130500.ports.npy \
#                  ./data/caida/equinix-chicago.dirA.20160121-130600.ports.npy

# ## learned count min

# python3 cutoff_count_min_param.py \
#     --space_list 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1 1.2 1.4 1.6 1.8 2 3 4 \
#     --n_hashes 1 2 3 4 \
#     --save cmin_ip_${tmin}_ru64 --n_workers 30 \
#     --test_data     ./data/caida/equinix-chicago.dirA.20160121-${tmin}00.ports.npy \
#     --valid_data    ./data/caida/equinix-chicago.dirA.20160121-130700.ports.npy \
#     --test_result   paper_predictions/pred_exp20_ip_rnn_10min_r1-p2-h2_rmin65_ru64_bs512_ep350_${tmin}_res.npz \
#     --valid_result  paper_predictions/pred_exp20_ip_rnn_10min_r1-p2-h2_rmin65_ru64_bs512_ep350_${tmin}_res.npz

# ## learned count min + perfect oracle

# python3 cutoff_count_min_param.py \
#     --space_list 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1 1.2 1.4 1.6 1.8 2 3 4 \
#     --n_hashes 1 2 3 4 --save cmin_ip_${tmin}_pcut --n_workers 30 \
#     --test_data  ./data/caida/equinix-chicago.dirA.20160121-${tmin}00.ports.npy \
#     --valid_data ./data/caida/equinix-chicago.dirA.20160121-${tmin}00.ports.npy \
#     --perfect


# ## example command to get predictions from a trained model

# #python3 run_nn_cls.py \
# #	--train ./data/2016/20160121-130000.UTC/equinix-chicago.dirA.20160121-130000.ports.npy \
# #    --valid ./data/2016/20160121-130000.UTC/equinix-chicago.dirA.20160121-130700.ports.npy \
# #    --test  ./data/2016/20160121-130000.UTC/equinix-chicago.dirA.20160121-135900.ports.npy \
# #    --save  pred_exp20_ip_rnn_10min_r1-p2-h2_rmin65_ru64_bs512_ep350_1359 \
# #    --rnn_hiddens 64 --port_hiddens 16 8 --hiddens 32 32 --batch_size 512 --n_epoch 2000 --lr 0.0001 --regress_min 65 \
# #    --resume paper_model/exp20_ip_rnn_10min_r1-p2-h2_rmin65_ru64_bs512_ep100_20180506-230316_ep350.69 --evaluate


# ## count sketch

# python3 count_min_param.py \
#     --count_min \
#     --space_list 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1 1.2 1.4 1.6 1.8 2 3 4 \
#     --n_hashes 1 2 3 4 \
#     --save csketch_ip_${tmin} --n_workers 30 \
#     --data ./data/caida/equinix-chicago.dirA.20160121-${tmin}00.ports.npy

# ## lookup table + Count Sketch

# python3 cutoff_count_min_param.py \
#     --count_min \
#     --space_list 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1 1.2 1.4 1.6 1.8 2 3 4 \
#     --n_hashes 1 2 3 4 --save csketch_ip_${tmin} --n_workers 30 \
#     --test_data  ./data/caida/equinix-chicago.dirA.20160121-${tmin}00.ports.npy \
#     --valid_data ./data/caida/equinix-chicago.dirA.20160121-130700.ports.npy \
#     --lookup     ./data/caida/equinix-chicago.dirA.20160121-130000.ports.npy \
#                  ./data/caida/equinix-chicago.dirA.20160121-130100.ports.npy \
#                  ./data/caida/equinix-chicago.dirA.20160121-130200.ports.npy \
#                  ./data/caida/equinix-chicago.dirA.20160121-130300.ports.npy \
#                  ./data/caida/equinix-chicago.dirA.20160121-130400.ports.npy \
#                  ./data/caida/equinix-chicago.dirA.20160121-130500.ports.npy \
#                  ./data/caida/equinix-chicago.dirA.20160121-130600.ports.npy

# ## learned count sketch

# python3 cutoff_count_min_param.py \
#     --count_min \
#     --space_list 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1 1.2 1.4 1.6 1.8 2 3 4 \
#     --n_hashes 1 2 3 4 \
#     --save csketch_ip_${tmin}_ru64 --n_workers 30 \
#     --test_data     ./data/caida/equinix-chicago.dirA.20160121-${tmin}00.ports.npy \
#     --valid_data    ./data/caida/equinix-chicago.dirA.20160121-130700.ports.npy \
#     --test_result   paper_predictions/pred_exp20_ip_rnn_10min_r1-p2-h2_rmin65_ru64_bs512_ep350_${tmin}_res.npz \
#     --valid_result  paper_predictions/pred_exp20_ip_rnn_10min_r1-p2-h2_rmin65_ru64_bs512_ep350_${tmin}_res.npz

# ## learned count sketch + perfect oracle

# python3 cutoff_count_min_param.py \
#     --count_min \
#     --space_list 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1 1.2 1.4 1.6 1.8 2 3 4 \
#     --n_hashes 1 2 3 4 --save csketch_ip_${tmin}_pcut --n_workers 30 \
#     --test_data  ./data/caida/equinix-chicago.dirA.20160121-${tmin}00.ports.npy \
#     --valid_data ./data/caida/equinix-chicago.dirA.20160121-${tmin}00.ports.npy \
#     --perfect



# === Search Query ===

# Note: remove "--count_min" to generate results for algorithms with count-min

# replace ${tday} to generate results for other days
day_array[1]=50
day_array[2]=80
day_array[3]=06

for i in 1 2 3
do
    # tday=50

    python3 count_min_param.py \
        --space_list 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1 1.2 1.4 1.6 1.8 2 \
        --n_hashes 1 2 3 4 \
        --save cmin_aol_tday${day_array[i]} --n_workers 30 \
        --data /mnt/hdd1/datasets/by_day/query_counts_day_00${day_array[i]}.npz \
        --aol


    python3 cutoff_count_min_param.py \
        --non_unique_mode=1\
        --space_list 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1 1.2 1.4 1.6 1.8 2 \
        --n_hashes 1 2 3 4 --save cmin_aol_tday${day_array[i]}_non_unique --n_workers 30 --aol \
        --test_data     /mnt/hdd1/datasets/by_day/query_counts_day_00${day_array[i]}.npz \
        --valid_data    /mnt/hdd1/datasets/by_day/query_counts_day_0005.npz \
        --lookup        /mnt/hdd1/datasets/by_day/query_counts_day_0000.npz \
                        /mnt/hdd1/datasets/by_day/query_counts_day_0001.npz \
                        /mnt/hdd1/datasets/by_day/query_counts_day_0002.npz \
                        /mnt/hdd1/datasets/by_day/query_counts_day_0003.npz \
                        /mnt/hdd1/datasets/by_day/query_counts_day_0004.npz


    python3 cutoff_count_min_param.py \
        --space_list 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1 1.2 1.4 1.6 1.8 2 \
        --n_hashes 1 2 3 4 \
        --save cmin_aol_tday${day_array[i]}_u256_non_unique --n_workers 30 \
        --test_data     /mnt/hdd1/datasets/by_day/query_counts_day_00${day_array[i]}.npz \
        --valid_data    /mnt/hdd1/datasets/by_day/query_counts_day_0005.npz \
        --test_result   /mnt/hdd1/datasets/paper_predictions/aol_inf_all_v05_t${day_array[i]}_exp22_aol_5d_r1-h1_u256-32_eb64_bs128_ra_20180514-160509_ep190_res.npz \
        --valid_result  /mnt/hdd1/datasets/paper_predictions/aol_inf_all_v05_t06_exp22_aol_5d_r1-h1_u256-32_eb64_bs128_ra_20180514-160509_ep190_res.npz \
        --aol --non_unique_mode=1



    python3 cutoff_count_min_param.py \
        --space_list 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1 1.2 1.4 1.6 1.8 2 \
        --n_hashes 1 2 3 4 --save cmin_aol_tday${day_array[i]}_pcut_non_unique --n_workers 30 --aol \
        --test_data  /mnt/hdd1/datasets/by_day/query_counts_day_00${day_array[i]}.npz \
        --valid_data /mnt/hdd1/datasets/by_day/query_counts_day_00${day_array[i]}.npz \
        --perfect \
        --non_unique_mode=1

done
