
tday=50
fname="50 th"

#tday=80
#fname="80 th"

model="u256"

## count min

day_array[1]=50
day_array[2]=80
day_array[3]=06

for i in 1 2 3
do

    python3 plot_loss_vs_space.py \
        --algo          "Count-Min" \
        --count_min     ../param_results/count_min/cmin_aol_tday${day_array[i]}.npz \
        --learned       ../param_results/cutoff_count_min_param/cmin_aol_tday${day_array[i]}_${model}_non_unique_test.npz \
        --perfect       ../param_results/cutoff_count_min_param_perfect/cmin_aol_tday${day_array[i]}_pcut_non_unique_test.npz  \
        --lookup_table  ../param_results/lookup_table_count_min/cmin_aol_tday${day_array[i]}_non_unique_test.npz \
        --model_names   "Learned Count-Min (NNet)" \
        --title         "AOL - @ ${day_array[i]} th test day - model ${model}" \
        --model_sizes   0.0152 \
        --lookup_size   0.0009 \
        --x_lim         0.08 1.2 \
        --y_lim         0 4

done

# ## count sketch

# python3 plot_loss_vs_space.py \
#     --algo          "Count-Sketch" \
#     --count_min     ../param_results/count_sketch/csketch_aol_tday${tday}.npz \
#     --learned       ../param_results/cutoff_count_sketch_param/csketch_aol_tday${tday}_${model}_test.npz \
#     --perfect       ../param_results/cutoff_count_sketch_param_perfect/csketch_aol_tday${tday}_pcut_test.npz  \
#     --lookup_table  ../param_results/lookup_table_count_sketch/csketch_aol_tday${tday}_test.npz \
#     --model_names   "Learned Count-Sketch (NNet)" \
#     --title         "AOL - @ ${fname} test day - model ${model}" \
#     --model_sizes   0.0152 \
#     --lookup_size   0.0009 \
#     --x_lim         0.08 1.2 \
#     --y_lim         0 4
