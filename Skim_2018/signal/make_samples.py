import os
import re

inputFile=open("signal_dir_list", "r")
inputfile_lines = inputFile.readlines()

def find_name(line):
    line = line.split('/')
    era = '_'.join(line[-3].split('_')[2:])
    return era + '_' + line[-1]

out_name = 'signal_samples'
f_submit = open('submit_condor.sh', 'w')
f_submit.write('./rootcom skimm_signal_2017 analyze_signal \n\n')
f_check_nfiles = open('nfiles.sh', 'w')
f_sample = open('execute_local.sh', 'w')
f_sample.write('./rootcom skimm_signal_2017 analyze_signal \n\n')

idx = [ '23', '39', '10', '16','26','32','36', '7', '2']
for isp in idx:
    for line in inputfile_lines:
        line = line.strip()
        print(line)
        files = os.listdir(line)
        save_name = find_name(line).replace('MonoHToTauTau', 'Signal')
        files = [ x.replace('.root', '') for x in files ]
        fout = open(out_name+'_'+save_name+'_'+isp+'.txt', 'w')
        for idfiles in  files:
            fout.write(line.replace('/hdfs', '')+' '+save_name+' '+idfiles+' MC '+isp+' \n')

        fout.close()
        f_submit.write('mkdir -p /hdfs/store/user/bsahu/with_boostedtau/2018_skimmed/with_boostedtaus/signal_v2/'+save_name+'/sp_'+isp+'/ \n')
        f_submit.write('./make_condor.sh '+save_name+'_'+isp+' \n')
        f_check_nfiles.write('echo '+save_name+'/sp_'+isp+' \n ')
        f_check_nfiles.write('ls '+ line +' | wc -l \n')
        f_check_nfiles.write('ls '+'/hdfs/store/user/bsahu/with_boostedtau/2018_skimmed/with_boostedtaus/signal_v2/'+save_name +'/sp_'+isp+' | wc -l \n')
        f_check_nfiles.write('\n')

f_check_nfiles.close()
f_submit.close()
inputFile.close()
