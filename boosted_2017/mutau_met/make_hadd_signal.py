import os
import ROOT as R



path = '/hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/signal'
samples = sorted(os.listdir(path))

fout_all = open('signal_hadd_all.sh', 'w')
for sample in samples:
    
    files = os.listdir(path+'/'+sample)
    fout_all.write('bash '+sample+'.sh \n\n')
    fout = open(sample+'.sh', 'w')
    fout.write('#!/bin/sh \n \n ')
    for i in range(1, 44):
        j = str(i)
        fout.write("hadd "+sample+'_'+j+".root "+path+'/'+sample+'/*_'+j+'.root '+ '\n')
        fout.write('mv '+ sample+'_'+j+".root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/signal/  \n\n")

