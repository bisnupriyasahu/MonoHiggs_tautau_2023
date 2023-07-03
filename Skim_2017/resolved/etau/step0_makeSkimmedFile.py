import os
import re

os.popen('ls -d /hdfs/store/user/jmadhusu/data2017_31Mar2018_27Aug2022/MET/*/*/* > met_data_dir_list')
inputFile=open("met_data_dir_list", "r")
outFile = open("do_skim_mt_metdata.sh", "w")
outFile.write("""
./rootcom skimm_mt_2017 analyze_mutau_skim 
outDir="Out_DATA_$(date +"%d-%m-%Y_%H-%M")" 
mkdir $outDir 

""")

def replaceAll(line, searchExp,replaceExp):
    if searchExp in line:
        line = line.replace(searchExp,replaceExp)
    return line
def replaceEnd(line):
    line=line.strip()
    searchExp=line[-6:]
    sample = re.search('/crab_job_(.*)/22', line)
    sampleName = sample.group(1)
    replaceExp = searchExp+" "+sampleName+"_"+searchExp[-2:]+".root -1 1000 2017 DATA "+sampleName+"_"+searchExp[-2:]+" $outDir"+" \n"
    line = line.replace(searchExp,replaceExp)
    return line

def find_name_data(line):
    samplename = line.split(' ')
    samplename = samplename[-3]
    return samplename

def find_name(line):
    samplename = line.split(' ')
    samplename = samplename[-3]
    return samplename

for line in inputFile:

    line = line.replace( "/hdfs/store/","./MakeCondorFiles.csh analyze_mutau_skim /store/")
    line = replaceEnd(line)
    sample_name = find_name(line)
    outFile.write("mkdir -p /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/"+sample_name+" \n" )
    outFile.write(line)



inputFile.close()
outFile.close()
print ("""
created do_skim_mt_data.sh
do 
  bash do_skim_mt_data.sh
in /nfs_scratch/ directory with required files
""")
