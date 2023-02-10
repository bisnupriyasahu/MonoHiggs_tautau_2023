import os

path1 = '/hdfs/store/user/jmadhusu/data2017_31Mar2018_27Aug2022/MET/crab_job_MET_EraB/220919_005522/0000'
path2 = '/hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraB_0000'


files_1 = set(os.listdir(path1))
files_2 = set(os.listdir(path2)) 

print(len(files_1), len(files_2))

fout = open('run_leftover.sh', 'w')
fout.write('./rootcom skimm_mt_2017 analyze_mutau \n\n')

for ifile in files_1.difference(files_2):
    sample_name = path2.split('/')[-1].replace('blinded_', '')
    fout.write('./analyze_mutau {infile} {outfile} -1 1000 2017 DATA {sample_name} \n'.format(infile= path1+'/'+ifile, outfile=ifile, sample_name=sample_name))
    fout.write('mv '+ifile+' '+path2+' \n')


fout.close()
