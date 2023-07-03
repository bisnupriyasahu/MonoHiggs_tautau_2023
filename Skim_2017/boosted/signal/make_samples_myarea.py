import os
import re
#os.popen('ls -d /hdfs/store/user/bsahu/MonoHToTauTau_ZpBaryonic_TuneCP2_13TeV_v2-run_102X_mc2017_MonoHToTauTau_ZpBaryonic_2017/ > signal_dir_list')
#inputFile=open("signal_dir_list", "r")
inputFile='/hdfs/store/user/bsahu/MonoHToTauTau_ZpBaryonic_TuneCP2_13TeV_v2-run_102X_mc2017_MonoHToTauTau_ZpBaryonic_2017/'

#inputFile=open("signal_dir_list", "r")
#inputfile_lines = os.listdir(inputFile)
#
def find_name(line):
    line = line.split('/')
    print("line after split:     ",line)
    era = '_'.join(line[-3].split('_')[2:])
    print("era ::                 ",era)
    return era + '_' + line[-1]
    print("era which return:: ::::                ",era)

out_name = 'signal_samples'
save_name = 'Signal_ZpBaryonic_2017'
f_submit = open('submit_condor.sh', 'w')
f_submit.write('./rootcom skimm_signal_2017 analyze_signal \n\n')
f_check_nfiles = open('nfiles.sh', 'w')
f_sample = open('execute_local.sh', 'w')
f_sample.write('./rootcom skimm_signal_2017 analyze_signal_sample \n\n')
f_submit.write('mkdir -p /hdfs/store/user/bsahu/boostedtau_ZPB_signal_sample_17032023/2017_skimmed/signal/'+save_name+'/ \n')
#idx = [ '23', '10', '26','32','36', '2', '7', '39', '16']

#idx = ['7', '16', '39']

for isp in range(1,44):
    #for line in inputfile_lines:
    #print("line in loop : ", line)
    #line = line.strip()
    #print("line after strip:  ",line)
    #files = os.listdir(line)
    isp = str(isp)
    print("savename: ", save_name)
    files = os.listdir(inputFile)   
    files = [ x.replace('.root', '') for x in files ]
    fout = open(out_name+'_'+save_name+'_'+isp+'.txt', 'w')
    for idfiles in  files:
        fout.write(inputFile.replace('/hdfs', '')+' '+save_name+' '+idfiles+' MC '+isp+' \n')

    fout.close()
    
    f_submit.write('./make_condor.sh '+save_name+'_'+isp+' \n')
    #f_check_nfiles.write('echo '+save_name+'/sp_'+isp+' \n ')
    #f_check_nfiles.write('ls '+ line +' | wc -l \n')
    #f_check_nfiles.write('ls '+'/hdfs/store/user/bsahu/with_boostedtau/2017_skimmed/with_boostedtaus/signal_v3/'+save_name +'/sp_'+isp+' | wc -l \n')
    #f_check_nfiles.write('\n')

f_check_nfiles.close()
f_submit.close()
#inputFile.close()
