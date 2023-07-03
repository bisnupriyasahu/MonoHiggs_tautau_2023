import os

inputDr="/hdfs/store/user/jmadhusu/2018_skimmed/tautau/"
filelist=os.listdir(inputDr)
filelist=sorted(filelist)

outFile = open("submit.sh", "w")
outFile.write("""
outDir="Out_$(date +"%d-%m-%Y_%H-%M")" 
mkdir $outDir 

""")


outFile.write('###########################   MC  #########################'+'\n\n')
outFile.write('./rootcom tautau_analyzer analyze_tautau  '+'\n\n\n')
for j in filelist :
    if "Tau" in j[:3]:
        continue
    outFile.write("./MakeCondorFiles.csh analyze_tautau "+inputDr+j+" "+j+" -1 1000 2018 MC "+j[:-5]+" $outDir"+"\n")
        

outFile.write('\n\n')
outFile.write('###########################  DATA #########################'+'\n\n')
outFile.write('./rootcom tautau_analyzer analyze_tautau '+'\n\n\n')
for j in filelist :
    if "Tau" in j[:3]:
        outFile.write("./MakeCondorFiles.csh analyze_tautau "+inputDr+j+" "+j+" -1 1000 2018 DATA "+j[:-5]+" $outDir"+"\n")
                
print("""
check submit.sh
do 

 bash submit.sh


""")

outFile.close()


