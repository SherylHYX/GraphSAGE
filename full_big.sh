# # supervised
python -m graphsage.supervised_train --train_prefix ./data/ppi/ppi --model graphsage_mean --sigmoid --model_size big
python -m graphsage.supervised_train --train_prefix ./data/ppi/ppi --model graphsage_seq --sigmoid  --model_size big
python -m graphsage.supervised_train --train_prefix ./data/ppi/ppi --model graphsage_maxpool --sigmoid  --model_size big
python -m graphsage.supervised_train --train_prefix ./data/ppi/ppi --model gcn --sigmoid    --model_size big
 

python -m graphsage.supervised_train --train_prefix ./data/reddit/reddit --model graphsage_mean --model_size big
python -m graphsage.supervised_train --train_prefix ./data/reddit/reddit --model graphsage_seq --model_size big
python -m graphsage.supervised_train --train_prefix ./data/reddit/reddit --model graphsage_maxpool --model_size big
python -m graphsage.supervised_train --train_prefix ./data/reddit/reddit --model gcn --model_size big
python -m graphsage.supervised_train --train_prefix ./data/reddit/reddit --model n2v --model_size big


# unsupervised embedding
python -m graphsage.unsupervised_train --train_prefix ./data/ppi/ppi --model graphsage_mean --max_total_steps 1000 --validate_iter 10 --model_size big
python -m graphsage.unsupervised_train --train_prefix ./data/ppi/ppi --model graphsage_seq --max_total_steps 1000 --validate_iter 10  --model_size big
python -m graphsage.unsupervised_train --train_prefix ./data/ppi/ppi --model graphsage_maxpool --max_total_steps 1000 --validate_iter 10  --model_size big
python -m graphsage.unsupervised_train --train_prefix ./data/ppi/ppi --model gcn --max_total_steps 1000 --validate_iter 10    --model_size big
  

python -m graphsage.unsupervised_train --train_prefix ./data/reddit/reddit --model graphsage_mean --max_total_steps 1000 --validate_iter 10 --model_size big
python -m graphsage.unsupervised_train --train_prefix ./data/reddit/reddit --model graphsage_seq --max_total_steps 1000 --validate_iter 10  --model_size big
python -m graphsage.unsupervised_train --train_prefix ./data/reddit/reddit --model graphsage_maxpool --max_total_steps 1000 --validate_iter 10   --model_size big
python -m graphsage.unsupervised_train --train_prefix ./data/reddit/reddit --model gcn --max_total_steps 1000 --validate_iter 10 --model_size big
python -m graphsage.unsupervised_train --train_prefix ./data/reddit/reddit --model n2v --max_total_steps 1000 --validate_iter 10 --model_size big

python eval_scripts/ppi_eval.py ./data/ppi unsup-ppi/graphsage_mean_big_0.000010 test
python eval_scripts/ppi_eval.py ./data/ppi unsup-ppi/graphsage_seq_big_0.000010 test
python eval_scripts/ppi_eval.py ./data/ppi unsup-ppi/graphsage_maxpool_big_0.000010 test
python eval_scripts/ppi_eval.py ./data/ppi unsup-ppi/gcn_big_0.000010 test

python eval_scripts/reddit_eval.py ./data/reddit unsup-reddit/graphsage_mean_big_0.000010 test
python eval_scripts/reddit_eval.py ./data/reddit unsup-reddit/graphsage_seq_big_0.000010 test
python eval_scripts/reddit_eval.py ./data/reddit unsup-reddit/graphsage_maxpool_big_0.000010 test
python eval_scripts/reddit_eval.py ./data/reddit unsup-reddit/gcn_big_0.000010 test
python eval_scripts/reddit_eval.py ./data/reddit unsup-reddit/n2v_big_0.000010 test