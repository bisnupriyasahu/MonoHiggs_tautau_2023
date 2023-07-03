import os


inputFile=open("met_data_dir_list", "r")

data_lines = inputFile.readlines()

for line in data_lines:
    path = line.strip()
    line = line.strip()
    line = line.split('/')
    era = line[-3].split('_')[-1]
    idx = line[-1]
    save_name = era+'_'+idx
    print(path.replace('/hdfs', ''), save_name)
    files_list = os.listdir(path)
    f_out = open('met_samples_'+save_name+".txt", 'w')
    for ifile in files_list:
        f_out.write(path.replace('/hdfs', '') +' '+ save_name+' '+ifile.replace('.root', '')+' DATA \n')
    f_out.close()




