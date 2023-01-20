import os
import ROOT as R


def isvalid(file_name):
    try:
        fin = R.TFile(file_name)
        return True
    except:
        return False

path = '/hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/tautau/'
samples = sorted(os.listdir('dataset'))

my_dict = {}
path2 = '/hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/tautau_hadd/'
files_exist = [ x.replace('.root', '') for x in os.listdir(path2)]

initial_nfiles = 0
final_nfiles = 0
for sample in samples:
    if 'DY2' not in sample:
        continue
    if '.txt' not in sample: 
        continue
    sample = sample.replace('.txt', '')
    if sample in files_exist:
        continue
    print(sample)
    my_dict[sample] = []
    with open('dataset/'+sample+'.txt') as fin:
        lines = fin.readlines()
        for line in lines:
            initial_nfiles += 1
            line = '/hdfs'+line.strip()
            if isvalid(line):
                final_nfiles += 1
                my_dict[sample].append(line)
            
            
initial_script="""#!/bin/sh

"""
f_submit = open('all.sh', 'w')



for k , v in my_dict.items():
    # print "hadd "+k+".root "+' '.join(v)
    print(k, v)
    #f_submit.write('./MakeCondorFiles_hadd.sh '+k+' \n')
    f_submit.write('bash dataset/'+k+'_hadd.sh \n ')
    fout = open('dataset/'+k+'_hadd.sh', 'w')
    
    fout.write(initial_script)
    fout.write('\n')
    fout.write("hadd "+k+".root "+' '.join(v)+ '\n')
    # fout.write('xrdcp '+k+'.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/hadd/ \n')
    fout.write('mv '+k+'.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/tautau_hadd/ \n')
    # fout.write('rm '+k+".root ")
    fout.close()


f_submit = open('check_all.sh', 'w')
for k, v in my_dict.items():
    
    f_submit.write('du -sh /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/tautau_hadd/'+k+'.root \n')
