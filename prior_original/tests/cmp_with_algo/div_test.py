# algorithms to compare
import sys,os
sys.path.append('../../../algo_cmp')
from algos.QIAD import QIAD
from algos.FANZED import INZED_approx
from algos.TruncApp import TruncApp
from algos.LEAD import LEAD
algoDict={
	"QIAD"	: QIAD,
	"INZeD"   : INZED_approx,
	"TruncApp": TruncApp,
	"LEAD":LEAD
}
hard = {name:{} for name in algoDict.keys()}
soft = {name:{} for name in algoDict.keys()}
err  = {name:{} for name in algoDict.keys()}
for algo,func in algoDict.items():
	print('processing', algo)
	with open(os.path.join('output', algo + '.txt'), 'r') as f:
		shift=None
		for line in f.readlines():
			if shift==None:
				shift=2**float(line)
				continue
			a, b, res = line.strip().split()
			a=float(a); b=float(b)
			res=float(int(res.replace("'h",'0x'),16))/shift
			print(f"{algo}:",a,b,res,end='\r')
			hard[algo][(a, b)] = res
			algo_res=func(a, b)
			soft[algo][(a, b)] = algo_res
			err[algo][(a, b)]=abs(res-algo_res)
	print()
print('error analysis')
import numpy as np
for algo in algoDict:
	print(f"{algo}:")
	x,y=max(err[algo],key=lambda k:err[algo][k])
	print(f"\t max err: {x}/{y} hard={hard[algo][(x,y)]} soft={soft[algo][(x,y)]} err={err[algo][(x,y)]}")
	print(f"ave err: {np.average(list(err[algo].values()))}")
