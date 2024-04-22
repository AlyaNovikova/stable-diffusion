#!/bin/bash -l
#SBATCH --chdir /scratch/izar/novikova
#SBATCH --ntasks 1
#SBATCH --cpus-per-task 1
#SBATCH --mem 16G
#SBATCH --time 1:00
#SBATCH --gres gpu:1
#SBATCH --account master
#SBATCH --qos gpu_free

echo "Current working directory:"
pwd

echo "Files in the current directory:"
ls

source /home/novikova/opt/i55/diff/bin/activate



NOTEBOOK_PATH_IN="/home/novikova/EasyNLP/diffusion/FreePromptEditing/edit_real_exp.ipynb"
NOTEBOOK_PATH_OUT="/home/novikova/EasyNLP/diffusion/FreePromptEditing/executed_notebook.ipynb"
jupyter nbconvert --to notebook --execute $NOTEBOOK_PATH_IN --output $NOTEBOOK_PATH_OUT
