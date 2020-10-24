# python eval_scripts/ppi_eval.py ./data/ppi feat test
# python eval_scripts/ppi_eval.py ./data/ppi unsup-ppi/graphsage_mean_small_0.000010 test --embed_dir feat
# python eval_scripts/reddit_eval.py ./data/reddit unsup-reddit/graphsage_mean_small_0.000010 test    --embed_dir feat
# python eval_scripts/reddit_eval.py ./data/reddit feat test
python eval_scripts/reddit_eval.py ./data/reddit n2v test
python eval_scripts/reddit_eval.py ./data/reddit n2v feat test