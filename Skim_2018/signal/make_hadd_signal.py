import os
import ROOT as R



path = '/hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/signal_v2'
samples = sorted(os.listdir(path))

fout_all = open('signal_hadd_all.sh', 'w')
for sample in samples:
    if '.root' in sample:
        continue
    print(sample)
    # files = os.listdir(path+'/'+sample)
    # fout_all.write('bash '+sample+'.sh \n\n')
    # fout = open(sample+'.sh', 'w')
    # fout.write('#!/bin/sh \n \n ')
    # for i in range(1, 44):
    #     j = str(i)
    #     fout.write("hadd "+sample+'_'+j+".root "+path+'/'+sample+'/*_'+j+'.root '+ '\n')
    #     fout.write('mv '+ sample+'_'+j+".root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/signal/  \n\n")

