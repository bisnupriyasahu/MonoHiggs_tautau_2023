import os

path = '/hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/'
sample_list = os.listdir(path)

sample_dict = {}
for sample in sample_list:
    #print path+sample
    #print os.listdir(path+sample)
    if 'SingleElectron' in sample:
        continue
    files = os.listdir(path+sample)
    #print len(files)
    label_count = 0
    for i, file in enumerate(files):
        label = sample+'_0'+str(label_count)
        filename = path+sample+'/'+file
        if label not in sample_dict:
            sample_dict[label] = [filename]
        else:
            sample_dict[label].append(filename)
        if i%99 == 0 and i>1:
            label_count += 1

#print sample_dict
for k, v in sorted(sample_dict.items()):
    with open('dataset/'+k+'.txt', 'w') as fout:
        for line in v:
            line = line.replace('/hdfs', '')
            fout.write(line+'\n')
        
