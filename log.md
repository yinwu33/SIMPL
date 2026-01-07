I'm trying to replicate the simpl. I have completely rebuild the model in the `motion_prediction` repo, however it doesn't work as good as the original one, both on gpu mem consumption and model performance. I don't know why, so I will step by step change the original repo and test my implementation. 

To control the result, I use mini dataset with fixed seed to get same loss result.

I run the single-gpu full train, the val losses are


```text
Epoch 0
100%|███████████████████████████████████| 12494/12494 [1:07:48<00:00,  3.07it/s]
[Training] Avg. loss: 1.52203, time cost: 67.8 mins, lr: 0.0001, peak mem: 10474 MB
-- 

Epoch 1
100%|███████████████████████████████████| 12494/12494 [1:07:40<00:00,  3.08it/s]
[Training] Avg. loss: 0.41443, time cost: 67.7 mins, lr: 0.00028, peak mem: 10413 MB
-- 
100%|███████████████████████████████████████| 1561/1561 [03:14<00:00,  8.01it/s]
[Validation] Avg. loss: 0.364251, time cost: 3.25 mins 
-- 

Epoch 2
100%|███████████████████████████████████| 12494/12494 [1:07:44<00:00,  3.07it/s]
[Training] Avg. loss: 0.381206, time cost: 67.7 mins, lr: 0.00046, peak mem: 10993 MB
-- 

Epoch 3
100%|███████████████████████████████████| 12494/12494 [1:07:45<00:00,  3.07it/s]
[Training] Avg. loss: 0.359792, time cost: 67.8 mins, lr: 0.00064, peak mem: 10965 MB
-- 
100%|███████████████████████████████████████| 1561/1561 [03:14<00:00,  8.04it/s]
[Validation] Avg. loss: 0.325253, time cost: 3.24 mins 
```


The mini baseline with one epoch: 

* train loss: ~6.57
* val loss: 7.47

Not the the cuda is not deterministic, so results may slightly different.