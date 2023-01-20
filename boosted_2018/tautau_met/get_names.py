import os

job_ids=[]
with open('jobsonhold') as f:
    lines = f.readlines()
    for line in lines:
        line = line.strip()
        line = line.split()[-1][:-2]
        #print line
        job_ids.append(line)


# Get the list of all files and directories
path = "Out_MC_06-10-2022_21-22"
dir_list = os.listdir(path)

sample_names = [] 
# print dir_list
for idx in job_ids:
    for fname in dir_list:
        if idx in fname:
            sample = fname.replace('.log', '')
            sample = sample.replace(idx+'_0_', '')
            print sample
            print len(os.listdir('/hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/mutau/'+sample) )
