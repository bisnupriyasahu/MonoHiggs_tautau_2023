import os

inputDrMC="/hdfs/store/user/jmadhusu/2018_skimmed/signal_gg/"
filelistMC=os.listdir(inputDrMC)
filelistMC=sorted(filelistMC)

outFile = open("submit_signal.sh", "w")
outFile.write("""
outDir="Out_$(date +"%d-%m-%Y_%H-%M")" 
mkdir $outDir 

""")


outFile.write('###########################   Signal  #########################'+'\n\n')
outFile.write('./rootcom mutau_analyzer analyze_mutau  '+'\n\n\n')
for j in filelistMC :
    outFile.write("./MakeCondorFiles.csh analyze_mutau "+inputDrMC+j+" "+j+" -1 1000 2018 MC "+j[:-5]+" $outDir"+"\n")

                
print("""
check submit_signal.sh
do 

 bash submit_signal.sh


""")

outFile.close()


