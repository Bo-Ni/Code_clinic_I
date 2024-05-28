#!/bin/bash

# ## =======================================================================
#SBATCH -N 1   ## number of nodes
#SBATCH --ntasks-per-node=16
#SBATCH --job-name="gpu-training" 
#SBATCH --gres=gpu:1
#SBATCH --partition=tmousavi
## #SBATCH --partition=batch
#SBATCH --mem=16G
#SBATCH --time=47:59:00
#SBATCH --output=job%J_cout_gpu.txt
# ## =======================================================================

echo
echo "============================ Messages from Goddess ============================"
echo " * Job starting from: "`date`
echo " * Job ID           : "$SLURM_JOBID
echo " * Job name         : "$SLURM_JOB_NAME
echo " * Working directory: "${SLURM_SUBMIT_DIR/$HOME/"~"}
echo " * Node got         : "$SLURMD_NODENAME
echo "==============================================================================="
echo

# predict the local command

# specify the password for jupyter lab login. Feel free to change
JupyterLabToken=aaaaaaaaaaaaaaaaaabbbbbbbbbccccccccdddddddddddde

echo "+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
echo "Type in the following two lines in your local bash terminal one by one: "
echo 
echo "ssh -N -f -L localhost:8893:$SLURMD_NODENAME:8890 $USER@trace.cmu.edu"
echo
echo "ps aux | grep ssh"
echo 
echo "Now, in your LOCAL browser, visit the following address."
echo 
echo "http://127.0.0.1:8893/lab?token=${JupyterLabToken}"
echo 
echo "+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
echo 
echo 

module load anaconda3/2023.03-1
 
# source activate YOUR_OWN_VIR_ENV # if needed.


# jupyter lab --no-browser --ip=0.0.0.0 --port=8890 --ContentsManager.allow_hidden=True --NotebookApp.token='d9ff4bbdfa6b10ef3d07f4a705286c735347b5d37585b150'

jupyter lab --no-browser --ip=0.0.0.0 --port=8890 --ContentsManager.allow_hidden=True --NotebookApp.token='${JupyterLabToken}'

# ssh -N -f -L localhost:8893:trace17:8890 bni2@trace.cmu.edu
# address:
# http://127.0.0.1:8893/lab?token=d9ff4bbdfa6b10ef3d07f4a705286c735347b5d37585b150


sleep 47h59m