mkdir npyG1B_n
mkdir npyG1E_n
mkdir npyG1F_n
mkdir npyR1B_n
mkdir npyR1E_n
mkdir npyR1F_n
mkdir npyN1B_n
mkdir npyN1E_n
mkdir npyN1F_n
mkdir npyG2B_n
mkdir npyG2E_n
mkdir npyG2F_n
mkdir npyR2B_n
mkdir npyR2E_n
mkdir npyR2F_n
mkdir npyN2B_n
mkdir npyN2E_n
mkdir npyN2F_n

mkdir npyG1B_LK_n
mkdir npyG1E_LK_n
mkdir npyG1F_LK_n
mkdir npyR1B_LK_n
mkdir npyR1E_LK_n
mkdir npyR1F_LK_n
mkdir npyN1B_LK_n
mkdir npyN1E_LK_n
mkdir npyN1F_LK_n
mkdir npyG2B_LK_n
mkdir npyG2E_LK_n
mkdir npyG2F_LK_n
mkdir npyR2B_LK_n
mkdir npyR2E_LK_n
mkdir npyR2F_LK_n
mkdir npyN2B_LK_n
mkdir npyN2E_LK_n
mkdir npyN2F_LK_n

mkdir npyG1B_LB_n
mkdir npyG1E_LB_n
mkdir npyG1F_LB_n
mkdir npyR1B_LB_n
mkdir npyR1E_LB_n
mkdir npyR1F_LB_n
mkdir npyN1B_LB_n
mkdir npyN1E_LB_n
mkdir npyN1F_LB_n
mkdir npyG2B_LB_n
mkdir npyG2E_LB_n
mkdir npyG2F_LB_n
mkdir npyR2B_LB_n
mkdir npyR2E_LB_n
mkdir npyR2F_LB_n
mkdir npyN2B_LB_n
mkdir npyN2E_LB_n
mkdir npyN2F_LB_n

for i in {9..13}
do
sbatch run_experiment_1_g_b_n\_$i.sh
sleep 1
sbatch run_experiment_1_g_e_n\_$i.sh
sleep 1
sbatch run_experiment_1_g_f_n\_$i.sh
sleep 1
sbatch run_experiment_1_r_b_n\_$i.sh
sleep 1
sbatch run_experiment_1_r_e_n\_$i.sh
sleep 1
sbatch run_experiment_1_r_f_n\_$i.sh
sleep 1
sbatch run_experiment_1_n_b_n\_$i.sh
sleep 1
sbatch run_experiment_1_n_e_n\_$i.sh
sleep 1
sbatch run_experiment_1_n_f_n\_$i.sh
sleep 1
sbatch run_experiment_2_g_b_n\_$i.sh
sleep 1
sbatch run_experiment_2_g_e_n\_$i.sh
sleep 1
sbatch run_experiment_2_g_f_n\_$i.sh
sleep 1
sbatch run_experiment_2_r_b_n\_$i.sh
sleep 1
sbatch run_experiment_2_r_e_n\_$i.sh
sleep 1
sbatch run_experiment_2_r_f_n\_$i.sh
sleep 1
sbatch run_experiment_2_n_b_n\_$i.sh
sleep 1
sbatch run_experiment_2_n_e_n\_$i.sh
sleep 1
sbatch run_experiment_2_n_f_n\_$i.sh
sleep 1

sbatch run_experiment_1_g_b_LK_n\_$i.sh
sleep 1
sbatch run_experiment_1_g_e_LK_n\_$i.sh
sleep 1
sbatch run_experiment_1_g_f_LK_n\_$i.sh
sleep 1
sbatch run_experiment_1_r_b_LK_n\_$i.sh
sleep 1
sbatch run_experiment_1_r_e_LK_n\_$i.sh
sleep 1
sbatch run_experiment_1_r_f_LK_n\_$i.sh
sleep 1
sbatch run_experiment_1_n_b_LK_n\_$i.sh
sleep 1
sbatch run_experiment_1_n_e_LK_n\_$i.sh
sleep 1
sbatch run_experiment_1_n_f_LK_n\_$i.sh
sleep 1
sbatch run_experiment_2_g_b_LK_n\_$i.sh
sleep 1
sbatch run_experiment_2_g_e_LK_n\_$i.sh
sleep 1
sbatch run_experiment_2_g_f_LK_n\_$i.sh
sleep 1
sbatch run_experiment_2_r_b_LK_n\_$i.sh
sleep 1
sbatch run_experiment_2_r_e_LK_n\_$i.sh
sleep 1
sbatch run_experiment_2_r_f_LK_n\_$i.sh
sleep 1
sbatch run_experiment_2_n_b_LK_n\_$i.sh
sleep 1
sbatch run_experiment_2_n_e_LK_n\_$i.sh
sleep 1
sbatch run_experiment_2_n_f_LK_n\_$i.sh
sleep 1

sbatch run_experiment_1_g_b_LB_n\_$i.sh
sleep 1
sbatch run_experiment_1_g_e_LB_n\_$i.sh
sleep 1
sbatch run_experiment_1_g_f_LB_n\_$i.sh
sleep 1
sbatch run_experiment_1_r_b_LB_n\_$i.sh
sleep 1
sbatch run_experiment_1_r_e_LB_n\_$i.sh
sleep 1
sbatch run_experiment_1_r_f_LB_n\_$i.sh
sleep 1
sbatch run_experiment_1_n_b_LB_n\_$i.sh
sleep 1
sbatch run_experiment_1_n_e_LB_n\_$i.sh
sleep 1
sbatch run_experiment_1_n_f_LB_n\_$i.sh
sleep 1
sbatch run_experiment_2_g_b_LB_n\_$i.sh
sleep 1
sbatch run_experiment_2_g_e_LB_n\_$i.sh
sleep 1
sbatch run_experiment_2_g_f_LB_n\_$i.sh
sleep 1
sbatch run_experiment_2_r_b_LB_n\_$i.sh
sleep 1
sbatch run_experiment_2_r_e_LB_n\_$i.sh
sleep 1
sbatch run_experiment_2_r_f_LB_n\_$i.sh
sleep 1
sbatch run_experiment_2_n_b_LB_n\_$i.sh
sleep 1
sbatch run_experiment_2_n_e_LB_n\_$i.sh
sleep 1
sbatch run_experiment_2_n_f_LB_n\_$i.sh
sleep 1
done