import os

inputDrMC="/hdfs/store/user/jmadhusu/2017_skimmed/signal_gg/"
filelistMC=os.listdir(inputDrMC)
filelistMC=sorted(filelistMC)

outFile = open("submit_signal.sh", "w")
outFile.write("""
outDir="Out_$(date +"%d-%m-%Y_%H-%M")" 
mkdir $outDir 

""")


outFile.write('###########################   MC  #########################'+'\n\n')
outFile.write('./rootcom etau_analyzer analyze_etau  '+'\n\n\n')
for j in filelistMC :
    outFile.write("./MakeCondorFiles.csh analyze_etau "+inputDrMC+j+" "+j+" -1 1000 2017 MC "+j[:-5]+" $outDir"+"\n")

                
print("""
check submit.sh
do 

 bash submit.sh


""")

outFile.close()


