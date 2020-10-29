#!/bin/bash
#SBATCH --time=0-00:30:00 # minutes
#SBATCH --account=NN9625K
#SBATCH --job-name=Frierson_isca
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=32 # max: 32 
#SBATCH --cpus-per-task=1
#SBATCH --qos=devel
##SBATCH --qos=short
##SBATCH --qos=preproc
###SBATCH --output=log_batch #Path to the file where the job (error) output is written to


### load the module
# load python
module load Python/3.8.2-GCCcore-9.3.0
# load python environment
source /cluster/home/ysi082/isca_python/bin/activate

# Load the correct environment


time python frierson_test_case.py

# happy end
exit 0 
