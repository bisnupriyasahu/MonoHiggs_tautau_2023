import os

inputDrDATA="/hdfs/store/user/jmadhusu/2018_skimmed/tautau/"
filelistDATA=os.listdir(inputDrDATA)
filelistDATA=sorted(filelistDATA)


outFile = open("submit_fulldata.sh", "w")
outFile.write("""
outDir="Out_$(date +"%d-%m-%Y_%H-%M")"
mkdir $outDir

""")
outFile.write('\n\n')
outFile.write('###########################  DATA #########################'+'\n\n')
outFile.write('./rootcom tautau_analyzer analyze_tautau  '+'\n\n\n')
for j in filelistDATA :
    if 'Tau' in j[:4]:
        #outFile.write("./MakeCondorFiles.csh analyze_etau_data "+inputDrDATA+j+" "+"files_initial/"+j+" -1 1000 2018 DATA "+j[:-5]+"\n")
        inputDrDATA = inputDrDATA.replace('/hdfs' , "root://cmsxrootd.hep.wisc.edu/")
        outname = j.split('_')
        outname = outname[0] + '_' + outname[1]
        outFile.write("./MakeCondorFiles.csh analyze_tautau "+inputDrDATA+j+" "+outname+" -1 1000 2018 DATA "+j[:-5]+" $outDir"+"\n")
                
print("""
check submit_fulldata.sh
do 

 bash submit_fulldata.sh


""")

outFile.close()


