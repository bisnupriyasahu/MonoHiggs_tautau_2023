import os
import re
os.popen('ls -d /hdfs/store/user/jmadhusu/Signal_Zpbaryonic2017_31Aug2022_v2/MonoHToTauTau_ZpBaryonic_TuneCP2_13TeV_madgraph-pythia8/crab_job_MonoHToTauTau_ZpBaryonic_2017/*/* > signal_dir_list')
inputFile=open("signal_dir_list", "r")

#inputFile=open("signal_dir_list", "r")
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
f_sample.write('./rootcom skimm_signal_2017 analyze_signal_sample \n\n')

idx = [ '23', '10', '26','32','36', '2', '7', '39', '16']

#idx = ['7', '16', '39']
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
        f_submit.write('mkdir -p /hdfs/store/user/bsahu/with_boostedtau/2017_skimmed/with_boostedtaus/signal_final/'+save_name+'/ \n')
        f_submit.write('./make_condor.sh '+save_name+'_'+isp+' \n')
        f_check_nfiles.write('echo '+save_name+'/sp_'+isp+' \n ')
        f_check_nfiles.write('ls '+ line +' | wc -l \n')
        #f_check_nfiles.write('ls '+'/hdfs/store/user/bsahu/with_boostedtau/2017_skimmed/with_boostedtaus/signal_v3/'+save_name +'/sp_'+isp+' | wc -l \n')
        f_check_nfiles.write('\n')

f_check_nfiles.close()
f_submit.close()
inputFile.close()
