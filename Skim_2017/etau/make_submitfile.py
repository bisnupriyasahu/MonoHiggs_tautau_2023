from os import listdir

parent_dir = '/hdfs/store/user/jmadhusu/Signal_Zpbaryonic2017_31Aug2022_v2/MonoHToTauTau_ZpBaryonic_TuneCP2_13TeV_madgraph-pythia8/crab_job_MonoHToTauTau_ZpBaryonic_2017/220831_205151'


print listdir(parent_dir)

f = open('condorsubmit_zprime_signal.sh', 'w')

f.write("""
./rootcom skimm_signal_2017 analyze_signal
outDir="Out_Signal_$(date +"%d-%m-%Y_%H-%M")" 
mkdir $outDir 



""")

fcount = 0
for subdir in listdir(parent_dir):
    for file in listdir(parent_dir+'/'+subdir):
        file_path = parent_dir.replace('/hdfs', 'root://cmsxrootd.hep.wisc.edu/')+'/'+subdir+'/'+file
        index = subdir +'_'+ file.replace('.root', '').split('_')[-1]
        text_to_write = './MakeCondorFiles_zpb.csh analyze_signal {a} Signal_Zpbaryonic2017_{b} -1 1000 2017 MC ZpBaryonic_{b} $outDir \n'
        f.write( text_to_write.format(a=file_path, b=index) )
        fcount += 1

f.write("""

"""
)

f.close()

print 'total files to be expected = ' , fcount

