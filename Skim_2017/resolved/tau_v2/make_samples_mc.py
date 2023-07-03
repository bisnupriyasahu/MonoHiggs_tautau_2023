import os
import re

#os.popen('ls -d /hdfs/store/user/jmadhusu/MC2018_Autumn18_monoHiggs_28Aug2022/*/*/*/* >> mc_dir_list')


#os.popen('ls -d /hdfs/store/user/jmadhusu/MC2018_Autumn18_monoHiggs_28Aug2022/*/*/*/* > mc_dir_list')
#os.popen('ls -d /hdfs/store/user/jmadhusu/MC2017_12Apr2018_monoHiggs_27Aug2022/*/*/*/* > mc_dir_list')
inputFile=open("mc_dir_list", "r")

# /hdfs/store/user/jmadhusu/data2017_31Mar2018_27Aug2022/MET/crab_job_MET_EraF/220919_005716/0003

def find_name(line):
    line = line.split('/')
    era = '_'.join(line[-3].split('_')[2:])
    return era + '_' + line[-1]

out_name = 'mc_samples'
f_submit = open('mc_submit_condor.sh', 'w')
f_submit.write('./rootcom skimm_tt_2017 analyze_tautau \n\n')
f_check_nfiles = open('mc_nfiles.sh', 'w')
#fout = open(out_name+'_tt_2017.txt', 'w')
#print(out_name+'_tt_2017.txt')
print(inputFile)
for line in inputFile:
    print(line)
    line = line.strip()
    print(line)
    files = os.listdir(line)
    save_name = find_name(line)
    print(save_name)
    jobs_to_be_made = 0
    files_existing = 0
    files = [ x.replace('.root', '') for x in files ]
    fout = open(out_name+'_'+save_name+'.txt', 'w')



    #for idfiles in  files:
    #   print("id files : ", inputFile)
    #   jobs_to_be_made += 1
    #    if os.path.exists('/hdfs/store/user/bsahu/Resolved_MC_Skimm/2018_skimmed/tautau/'+save_name+'/'+idfiles+'.root'):
    #    files_existing += 1
    #    continue
    fout.write(line.replace('/hdfs', '')+' '+save_name+' '+'Ntuple'+' MC \n')

    #if jobs_to_be_made > files_existing:
    #f_submit.write('mkdir -p /hdfs/store/user/bsahu/Resolved_MC_Skimm/2017_skimmed/tautau/ \n')
    f_submit.write('./make_condor.sh '+save_name+' \n')
    f_check_nfiles.write('echo '+save_name+' \n ')
    f_check_nfiles.write('ls '+ line +' | wc -l \n')
    #    f_check_nfiles.write('ls '+'/'+save_name +' | wc -l \n')
    f_check_nfiles.write('\n')
    fout.close()
f_check_nfiles.close()

f_submit.close()
inputFile.close()
