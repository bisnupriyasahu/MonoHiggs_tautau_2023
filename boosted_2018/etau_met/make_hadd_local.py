import os
import ROOT as R


def isvalid(file_name):
    try:
        fin = R.TFile(file_name)
        return True
    except:
        return False

def isvalid_v2(file_name):
    try:
        fin = R.TFile(file_name)
        fin.Close()
        return True
    except:
        return False


#path = '/hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/'
samples = sorted(os.listdir('dataset'))

my_dict = {}
path2 = '/hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau_hadd/'
#files_exist = [ x.replace('.root', '') for x in os.listdir(path2)]
files_exist = []
fout_failed = []
initial_nfiles = 0
final_nfiles = 0
for sample in samples:
    if '.txt' not in sample: 
        continue
    sample = sample.replace('.txt', '')
    # if sample in files_exist:
    #     continue
    # if 'DYJetsToLL_Pt-' in sample:
    #     continue
    # if 'WJetsToLNu_HT' in sample:
    #     continue
    if 'blinded' not in sample:
        continue
    print(sample)
    my_dict[sample] = []
    with open('dataset/'+sample+'.txt') as fin:
        lines = fin.readlines()
        for line in lines:
            initial_nfiles += 1
            line = '/hdfs'+line.strip()
            #if isvalid(line):
            final_nfiles += 1
            my_dict[sample].append(line)

            
initial_script="""#!/bin/sh

"""
f_submit = open('local_hadd_blinded.sh', 'w')


for k , v in my_dict.items():
    # print "hadd "+k+".root "+' '.join(v)
    # print(k, v)
    #f_submit.write('./MakeCondorFiles_hadd.sh '+k+' \n')
    f_submit.write('bash dataset/local_'+k+'_hadd.sh \n ')
    fout = open('dataset/local_'+k+'_hadd.sh', 'w')
    
    fout.write(initial_script)
    fout.write('\n')
    #v = [ x.replace('/hdfs', 'root://cmsxrootd.hep.wisc.edu:1094/') for x in v ]
    fout.write("hadd "+k+".root "+' '.join(v)+ '\n')
    #fout.write('xrdcp '+k+'.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau_hadd/ \n')
    fout.write('mv '+k+'.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau_hadd/ \n')
    #fout.write('rm '+k+".root ")
    fout.close()
    #fout_condor_submit = open('dataset/condor_submit_'+k, 'w')
    #fout_condor_submit.write(condor_submit_script.format(sample = k))
    

f_submit = open('check_all_blinded.sh', 'w')
for k, v in my_dict.items():    
    f_submit.write('du -sh /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau_hadd/'+k+'.root \n')

print(fout_failed)

