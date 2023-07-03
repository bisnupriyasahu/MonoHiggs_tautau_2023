import os
import re
# /hdfs/store/user/jmadhusu/Signal_Zpbaryonic2017_31Aug2022_v2/MonoHToTauTau_ZpBaryonic_TuneCP2_13TeV_madgraph-pythia8/crab_job_MonoHToTauTau_ZpBaryonic_2017/
os.popen('ls -d /hdfs/store/user/jmadhusu/Signal_Zpbaryonic2017_31Aug2022_v2/MonoHToTauTau_ZpBaryonic_TuneCP2_13TeV_madgraph-pythia8/crab_job_MonoHToTauTau_ZpBaryonic_2017/*/* > signal_dir_list')
inputFile=open("signal_dir_list", "r")


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
for line in inputFile:
    line = line.strip()
    print(line)
    files = os.listdir(line)
    save_name = find_name(line).replace('MonoHToTauTau', 'Signal')
    files = [ x.replace('.root', '') for x in files ]
    fout = open(out_name+'_'+save_name+'.txt', 'w')
    for idfiles in  files:
        f_sample.write('./analyze_signal '+line+'/'+idfiles+'.root '+save_name+'_'+idfiles+'_7.root'+' -1 1000 2017 MC '+save_name+' 7 \n')
        f_sample.write('./analyze_signal '+line+'/'+idfiles+'.root '+save_name+'_'+idfiles+'_10.root'+' -1 1000 2017 MC '+save_name+' 10 \n')
        for isp in range(1, 44):
            fout.write(line.replace('/hdfs', '')+' '+save_name+' '+idfiles+' MC '+str(isp)+' \n')

    fout.close()
    f_submit.write('mkdir -p /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/signal/'+save_name+'/ \n')
    f_submit.write('./make_condor.sh '+save_name+' \n')
    f_check_nfiles.write('echo '+save_name+' \n ')
    f_check_nfiles.write('ls '+ line +' | wc -l \n')
    f_check_nfiles.write('ls '+'/hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/signal/'+save_name +' | wc -l \n')
    f_check_nfiles.write('\n')

f_check_nfiles.close()
f_submit.close()
inputFile.close()
