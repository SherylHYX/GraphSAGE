# # supervised
python -m graphsage.supervised_train --train_prefix ./data/ppi/ppi --model graphsage_mean --sigmoid 
python -m graphsage.supervised_train --train_prefix ./data/ppi/ppi --model graphsage_seq --sigmoid  
python -m graphsage.supervised_train --train_prefix ./data/ppi/ppi --model graphsage_maxpool --sigmoid  
python -m graphsage.supervised_train --train_prefix ./data/ppi/ppi --model gcn --sigmoid    
 

python -m graphsage.supervised_train --train_prefix ./data/reddit/reddit --model graphsage_mean 
python -m graphsage.supervised_train --train_prefix ./data/reddit/reddit --model graphsage_seq 
python -m graphsage.supervised_train --train_prefix ./data/reddit/reddit --model graphsage_maxpool 
python -m graphsage.supervised_train --train_prefix ./data/reddit/reddit --model gcn 
python -m graphsage.supervised_train --train_prefix ./data/reddit/reddit --model n2v 


# unsupervised embedding
python -m graphsage.unsupervised_train --train_prefix ./data/ppi/ppi --model graphsage_mean --max_total_steps 1000 --validate_iter 10 
python -m graphsage.unsupervised_train --train_prefix ./data/ppi/ppi --model graphsage_seq --max_total_steps 1000 --validate_iter 10  
python -m graphsage.unsupervised_train --train_prefix ./data/ppi/ppi --model graphsage_maxpool --max_total_steps 1000 --validate_iter 10  
python -m graphsage.unsupervised_train --train_prefix ./data/ppi/ppi --model gcn --max_total_steps 1000 --validate_iter 10    
  

python -m graphsage.unsupervised_train --train_prefix ./data/reddit/reddit --model graphsage_mean --max_total_steps 1000 --validate_iter 10 
python -m graphsage.unsupervised_train --train_prefix ./data/reddit/reddit --model graphsage_seq --max_total_steps 1000 --validate_iter 10  
python -m graphsage.unsupervised_train --train_prefix ./data/reddit/reddit --model graphsage_maxpool --max_total_steps 1000 --validate_iter 10   
python -m graphsage.unsupervised_train --train_prefix ./data/reddit/reddit --model gcn --max_total_steps 1000 --validate_iter 10 
python -m graphsage.unsupervised_train --train_prefix ./data/reddit/reddit --model n2v --max_total_steps 1000 --validate_iter 10 

python eval_scripts/ppi_eval.py ./data/ppi unsup-ppi/graphsage_mean_small_0.000010 test
python eval_scripts/ppi_eval.py ./data/ppi unsup-ppi/graphsage_seq_small_0.000010 test
python eval_scripts/ppi_eval.py ./data/ppi unsup-ppi/graphsage_maxpool_small_0.000010 test
python eval_scripts/ppi_eval.py ./data/ppi unsup-ppi/gcn_small_0.000010 test

python eval_scripts/reddit_eval.py ./data/reddit unsup-reddit/graphsage_mean_small_0.000010 test
python eval_scripts/reddit_eval.py ./data/reddit unsup-reddit/graphsage_seq_small_0.000010 test
python eval_scripts/reddit_eval.py ./data/reddit unsup-reddit/graphsage_maxpool_small_0.000010 test
python eval_scripts/reddit_eval.py ./data/reddit unsup-reddit/gcn_small_0.000010 test
python eval_scripts/reddit_eval.py ./data/reddit unsup-reddit/n2v_small_0.000010 test