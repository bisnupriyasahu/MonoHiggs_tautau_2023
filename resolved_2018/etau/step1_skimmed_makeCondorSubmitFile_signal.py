import os

inputDrMC="/hdfs/store/user/jmadhusu/2018_skimmed/zprimeBaryonic/"
filelistMC=os.listdir(inputDrMC)
filelistMC=sorted(filelistMC)

outFile = open("submit_signal.sh", "w")
outFile.write("""
outDir="Out_$(date +"%d-%m-%Y_%H-%M")" 
mkdir $outDir 

###########################   MC  #########################


./rootcom etau_analyzer analyze_etau

for i in {1..43}
do

""")


for j in filelistMC :
    if j.find('Zpbaryonic') != 0:
        continue
    inputDrMC = inputDrMC.replace('/hdfs', 'root://cmsxrootd.hep.wisc.edu/')
    filename = j.replace('.root', '')
    outFile.write("./MakeCondorFiles.csh analyze_etau "+inputDrMC+j+" "+filename+"_${i}.root -1 1000 2018 MC "+filename+"_${i} $i $outDir"+"\n")
                
outFile.write("""
done



""")
print("""
check submit_signal.sh
do 

 bash submit_signal.sh


""")

outFile.close()


