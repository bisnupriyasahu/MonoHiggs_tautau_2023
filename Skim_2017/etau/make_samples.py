import os
import re

os.popen('ls -d /hdfs/store/user/jmadhusu/data2017_31Mar2018_27Aug2022/MET/*/*/* > met_data_dir_list')
inputFile=open("met_data_dir_list", "r")

# /hdfs/store/user/jmadhusu/data2017_31Mar2018_27Aug2022/MET/crab_job_MET_EraF/220919_005716/0003

def find_name(line):
    line = line.split('/')
    era = '_'.join(line[-3].split('_')[2:])
    return era + '_' + line[-1]

out_name = 'met_samples'
f_submit = open('submit_condor.sh', 'w')
f_submit.write('./rootcom skimm_mt_2017 analyze_mutau \n\n')
f_check_nfiles = open('nfiles.sh', 'w')

for line in inputFile:
    line = line.strip()
    print(line)
    files = os.listdir(line)
    save_name = find_name(line)
    files = [ x.replace('.root', '') for x in files ]
    fout = open(out_name+'_'+save_name+'.txt', 'w')
    for idfiles in  files:
        fout.write(line.replace('/hdfs', '')+' '+save_name+' '+idfiles+' DATA \n')
    fout.close()
    f_submit.write('mkdir -p /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/'+save_name+'/ \n')
    f_submit.write('./make_condor.sh '+save_name+' \n')
    f_check_nfiles.write('echo '+save_name+' \n ')
    f_check_nfiles.write('ls '+ line +' | wc -l \n')
    f_check_nfiles.write('ls '+'/hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/'+save_name +' | wc -l \n')
    f_check_nfiles.write('\n')

f_check_nfiles.close()
f_submit.close()
inputFile.close()
