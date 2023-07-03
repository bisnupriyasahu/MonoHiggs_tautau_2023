import os

#inputDrMC="/hdfs/store/user/jmadhusu/2017_skimmed/tautau_new/"
inputDrMC="/hdfs/store/user/bsahu/Resolved_MC_Skimm/2017_skimmed/tautau/"
filelistMC=os.listdir(inputDrMC)
filelistMC=sorted(filelistMC)

outFile = open("submit_new_skim_jun23.sh", "w")
outFile.write("""
outDir="Out_$(date +"%d-%m-%Y_%H-%M")" 
mkdir $outDir 

""")


outFile.write('###########################   MC  #########################'+'\n\n')
outFile.write('./rootcom tautau_analyzer analyze_tautau  '+'\n\n\n')
for j in filelistMC :
    if 'Tau_Era' in j or '.root' not in j:
        continue
    inputDrMC = inputDrMC.replace('/hdfs' , "root://cmsxrootd.hep.wisc.edu/")
    outFile.write("./MakeCondorFiles.csh analyze_tautau "+inputDrMC+j+" "+j+" -1 1000 2017 MC "+j[:-5]+" $outDir"+"\n")
        

outFile.close()

#inputDrDATA="/hdfs/store/user/jmadhusu/blinded_data/2018/tautau/"
inputDrDATA="/hdfs/store/user/bsahu/Resolved_MC_Skimm/2017_skimmed/tautau/blinded/"
filelistDATA=os.listdir(inputDrDATA)
filelistDATA=sorted(filelistDATA)
outFile_data = open("submit_new_skim_jun23_blinded_data.sh", "w")
outFile_data.write("""
outDir="Out_$(date +"%d-%m-%Y_%H-%M")" 
mkdir $outDir 

""")

outFile_data.write('\n\n')
outFile_data.write('###########################   DATA  #########################'+'\n\n')
outFile_data.write('./rootcom tautau_analyzer analyze_tautau  '+'\n\n\n')
for j in filelistDATA :
    inputDrDATA = inputDrDATA.replace('/hdfs' , "root://cmsxrootd.hep.wisc.edu/")
    outFile_data.write("./MakeCondorFiles.csh analyze_tautau "+inputDrDATA+j+" fulllumi_"+j+" -1 1000 2017 DATA "+j[:-5]+" $outDir"+"\n")


outFile_data.close()
                

inputDrDATA_UN="/hdfs/store/user/bsahu/Resolved_MC_Skimm/2017_skimmed/tautau/unblinded/"
filelistDATA_UN=os.listdir(inputDrDATA_UN)
filelistDATA_UN=sorted(filelistDATA_UN)
outFile_data_un = open("submit_new_skim_jun23_unblinded_data.sh", "w")
outFile_data_un.write("""                                                                                                                                                                                  
outDir="Out_$(date +"%d-%m-%Y_%H-%M")"                                                                                                                                                                     
mkdir $outDir                                                                                                                                                                                              
                                                                                                                                                                                                           
""")

outFile_data_un.write('\n\n')
outFile_data_un.write('###########################  UNBLINDED DATA  #########################'+'\n\n')
outFile_data_un.write('./rootcom tautau_analyzer analyze_tautau  '+'\n\n\n')
for j in filelistDATA_UN :
    inputDrDATA_UN = inputDrDATA_UN.replace('/hdfs' , "root://cmsxrootd.hep.wisc.edu/")
    outFile_data_un.write("./MakeCondorFiles.csh analyze_tautau "+inputDrDATA_UN+j+" "+j+" -1 1000 2017 DATA "+j[:-5]+" $outDir"+"\n")


outFile_data_un.close()







'''
inputDrMC="/hdfs/store/user/jmadhusu/2017_skimmed/signal_gg/"
filelistMC=os.listdir(inputDrMC)
filelistMC=sorted(filelistMC)


outFile.write('###########################   Signal  #########################'+'\n\n')
outFile.write('./rootcom tautau_analyzer analyze_tautau  '+'\n\n\n')
for j in filelistMC :
    outFile.write("./MakeCondorFiles.csh analyze_tautau "+inputDrMC+j+" "+j+" -1 1000 2017 MC "+j[:-5]+" $outDir"+"\n")

'''
print("""
#check submit.sh
check submit_new_skim_jun23.sh
do 

 bash submit_new_skim_jun23.sh


""")




