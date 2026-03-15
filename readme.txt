To run the experiments:

1. Create an environment with the python version 3.9

	conda create --name env python=3.9
	conda activate env
2. install the dependencies from requirements.txt

	pip install -r requirements.txt

3. Set the python path in the root of the directory

	export PYTHONPATH=.

4. Now you can run the experiments

Example:
(from the root of the directory)

	Empty:

		Baseline: python scripts/train.py --algo ppo_state_count --env MiniGrid-Empty-16x16-v0 --model Baseline_Empty16_S1 --seed 1 --frames 40000000 --gpu 0 --lr 0.0001 --entropy-coef 0.0005 --discount 0.99

		Dynamic: pyhton scripts/train.py --algo ppo_state_count --env MiniGrid-Empty-16x16-v0 --model Dynamic_Empty16_S1 --seed 1 --frames 40000000 --gpu 0 --lr 0.0001 --entropy-coef 0.0005 --discount 0.985 --dynamic-gamma --gamma-step 0.00002 --target-discount 0.995

The dynamic includes 3 more arguments: 

	--dynamic-gamma: this argument enables the discount factor increment
	--gamma-step: this argument expects a float that describes the increment per update
	--target-discount: this argument expects a float that represents the limit of the discount increment
	
	*The starting discount factor is defined by the argument --discount, which expects a float. Is the same argument used for the fixed discount in the baseline.


For the experiment we run the seeds from 1 to 5 (both included), just run the same command but change "--seed 1" to "--seed 3" for example. 

The environments used are called (for the --env argument):

	- MiniGrid-Empty-16x16-v0
	- MiniGrid-FourRooms-v0
	- MiniGrid-RedBlueDoors-8x8-v0
	- MiniGrid-DoorKey-16x16-v0

