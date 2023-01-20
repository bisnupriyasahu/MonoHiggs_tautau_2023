import os
import re


samples = sorted(os.listdir('/hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau_hadd/'))
outFile = open("samples.txt", "w")

for line in samples:
    line = line.strip().replace('.root', '')
    # outFile.write('mkdir -p /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/analyzer/mutau/'+line+' \n')
    if 'SingleMuon' in line :
        continue
    if 'MET' in line:
      line = "analyze_etau "+ line + " DATA \n"
    else:
      line = "analyze_etau "+ line + " MC \n"
  
    outFile.write(line)
   
outFile.close()


outFile = open("samples_signal.txt", "w")
samples = sorted(os.listdir('/hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/signal_v2/'))
#samples = sorted(os.listdir('/hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/signal/'))

for line in samples:
    if '.root' not in line[-6:]:
      continue
    line = line.strip().replace('.root', '')
    line = "analyze_etau "+ line + " MC \n"
  
    outFile.write(line)
     
outFile.close()
print ("""

samples.txt created
samples_signal.txt created

""")
