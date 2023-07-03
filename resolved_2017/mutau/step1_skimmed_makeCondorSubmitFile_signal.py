import os

#inputDrMC="/hdfs/store/user/jmadhusu/2018_skimmed/zprimeBaryonic/"
inputDrMC="/hdfs/store/user/bsahu/Resolved_ZPB_signal_sample_17032023/2017_skimmed/signal/hadd_postAN_inp/"
filelistMC=os.listdir(inputDrMC)
filelistMC=sorted(filelistMC)

outFile = open("submit_signal.sh", "w")
outFile.write("""
outDir="Out_$(date +"%d-%m-%Y_%H-%M")" 
mkdir $outDir 

###########################   MC  #########################


./rootcom mutau_analyzer analyze_mutau

""")


for j in filelistMC :
    print(j)
    #if j.find('ZpBaryonic') != 0:
    #    continue
    inputDrMC = inputDrMC.replace('/hdfs', 'root://cmsxrootd.hep.wisc.edu/')
    filename = j.replace('.root', '')
    outFile.write("./MakeCondorFiles.csh analyze_mutau "+inputDrMC+j+" "+filename+".root -1 1000 2017 MC "+filename+"  $outDir"+"\n")
                
print("""
check submit_signal.sh
do 

 bash submit_signal.sh


""")

outFile.close()


