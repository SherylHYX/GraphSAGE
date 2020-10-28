#!/bin/bash
#SBATCH -A rstudent                       # Account to be used, e.g. academic, acadrel, aims, bigbayes, opig, oxcsml, oxwasp, rstudent, statgen, statml, visitors
#SBATCH -J graphsage_feat                       # Job name, can be useful but optional
#SBATCH --time=4-00:00:00                   # Walltime - run time
#SBATCH --mail-user=yixuan.he@stats.ox.ac.uk     # set email address to use, change to your own email address instead of "me"
#SBATCH --mail-type=ALL                   # Caution: fine for debug, but not if handling hundreds of jobs!
#SBATCH --output="/data/localhost/not-backed-up/yhe/slurm-%u-%A-std-output"  # To avoid slurm job failing if it can not write to a file in the current directory, specify an output file for standard output
#SBATCH --error="/data/localhost/not-backed-up/yhe/slurm-%u-%A-err-output" # Same for standard error
#SBATCH --partition=griffin-large
#SBATCH --mem=10G

source ~/startvirtualenv.sh
workon tf1
python eval_scripts/ppi_eval.py ./data/ppi feat test > ppi_feat.out
python eval_scripts/reddit_eval.py ./data/reddit feat test > reddit_feat.out
