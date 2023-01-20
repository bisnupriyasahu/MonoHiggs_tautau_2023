import os

inputDrDATA="/hdfs/store/user/jmadhusu/2018_skimmed/etau/"
filelistDATA=os.listdir(inputDrDATA)
filelistDATA=sorted(filelistDATA)


outFile = open("submit_fulldata.sh", "w")
outFile.write("""
outDir="Out_$(date +"%d-%m-%Y_%H-%M")"
mkdir $outDir

""")
outFile.write('\n\n')
outFile.write('###########################  DATA #########################'+'\n\n')
outFile.write('./rootcom etau_analyzer analyze_etau  '+'\n\n\n')
for j in filelistDATA :
    if 'EGamma' in j:
        #outFile.write("./MakeCondorFiles.csh analyze_etau_data "+inputDrDATA+j+" "+"files_initial/"+j+" -1 1000 2018 DATA "+j[:-5]+"\n")
        inputDrDATA = inputDrDATA.replace('/hdfs' , "root://cmsxrootd.hep.wisc.edu/")
        outname = j.split('_')
        outname = outname[0] + '_full_' + outname[1]
        outFile.write("./MakeCondorFiles.csh analyze_etau "+inputDrDATA+j+" "+outname+" -1 1000 2018 DATA "+j[:-5]+" $outDir"+"\n")
                
print("""
check submit_fulldata.sh
do 

 bash submit_fulldata.sh


""")

outFile.close()


