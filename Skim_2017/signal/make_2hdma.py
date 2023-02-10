import os
import re



file_list = os.listdir('/hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/signal/signal_2HDMa/')

def find_name(line):
    line = line.split('/')
    era = '_'.join(line[-3].split('_')[2:])
    return era + '_' + line[-1]

out_name = 'signal_samples'


f_sample = open('execute_local_2hdma.sh', 'w')
f_sample.write('./rootcom skimm_signal_2017 analyze_signal_sample \n\n')

for line in file_list:
    line = line.strip()
    print(line)
    f_sample.write('./analyze_signal_sample /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/signal/signal_2HDMa/'+line+' '+line+' -1 1000 2017 MC '+line.replace('.root', '')+' 0 \n' )
    f_sample.write('mv '+line+' /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/signal/   \n\n')



f_sample.close()

