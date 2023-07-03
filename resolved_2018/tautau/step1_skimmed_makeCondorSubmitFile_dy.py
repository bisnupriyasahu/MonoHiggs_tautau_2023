import os

#inputDrMC="/hdfs/store/user/jmadhusu/2018_skimmed/tautau_new/"
inputDrMC="/hdfs/store/user/jmadhusu/2018_skimmed/tautau/"
filelistMC=os.listdir(inputDrMC)
filelistMC=sorted(filelistMC)

outFile = open("submit_dy.sh", "w")
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
    inputDrMC = inputDrMC.replace('/hdfs' , "root://cmsxrootd.hep.wisc.edu/")
    outFile.write("./MakeCondorFiles.csh analyze_tautau "+inputDrMC+j+" "+j+" -1 1000 2018 MC "+j[:-5]+" $outDir"+"\n")

print("""
check submit_dy.sh
do 

 bash submit_dy.sh


""")

outFile.close()


