import os

inputDrMC="/hdfs/store/user/jmadhusu/2018_skimmed/tautau/"
filelistMC=os.listdir(inputDrMC)
filelistMC=sorted(filelistMC)

outFile = open("submit.sh", "w")
outFile.write("""
outDir="Out_$(date +"%d-%m-%Y_%H-%M")" 
mkdir $outDir 

""")


outFile.write('###########################   MC  #########################'+'\n\n')
outFile.write('./rootcom tautau_analyzer analyze_tautau  '+'\n\n\n')
for j in filelistMC :
    if 'WJets' in j:
        continue
    if 'Tau' in j[:4]:
        continue
    outFile.write("./MakeCondorFiles.csh analyze_tautau "+inputDrMC+j+" "+j+" -1 1000 2018 MC "+j[:-5]+" $outDir"+"\n")
        

inputDrDATA="/hdfs/store/user/jmadhusu/blinded_data/2018/tautau/"
filelistDATA=os.listdir(inputDrDATA)
filelistDATA=sorted(filelistDATA)

outFile.write('\n\n')
outFile.write('###########################  DATA #########################'+'\n\n')
outFile.write('./rootcom tautau_analyzer analyze_tautau '+'\n\n\n')
for j in filelistDATA :
    outFile.write("./MakeCondorFiles.csh analyze_tautau "+inputDrDATA+j+" "+j+" -1 1000 2018 DATA "+j[:-5]+" $outDir"+"\n")
                

inputDrDATA="/hdfs/store/user/jmadhusu/2018_skimmed/signal_gg/"
filelistDATA=os.listdir(inputDrDATA)
filelistDATA=sorted(filelistDATA)

outFile.write('\n\n')
outFile.write('###########################  signal #########################'+'\n\n')
outFile.write('./rootcom tautau_analyzer analyze_tautau '+'\n\n\n')
for j in filelistDATA :
    outFile.write("./MakeCondorFiles.csh analyze_tautau "+inputDrDATA+j+" "+j+" -1 1000 2018 MC "+j[:-5]+" $outDir"+"\n")
                

print("""
check submit.sh
do 

 bash submit.sh


""")

outFile.close()


