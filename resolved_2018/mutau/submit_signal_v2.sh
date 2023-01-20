
outDir="Out_$(date +"%d-%m-%Y_%H-%M")" 
mkdir $outDir 


###########################   Signal  #########################

./rootcom mutau_analyzer analyze_mutau  
arr=(2 7 10 16 23 26 32 36 39)
 
for i in "${arr[@]}"
do

    ./MakeCondorFiles_zpb.csh analyze_mutau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/zprimeBaryonic/mutau/Zpbaryonic_00.root Zpbaryonic_00_${i}.root -1 1000 2018 MC Zpbaryonic_00_${i} $i $outDir
    ./MakeCondorFiles_zpb.csh analyze_mutau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/zprimeBaryonic/mutau/Zpbaryonic_01.root Zpbaryonic_01_${i}.root -1 1000 2018 MC Zpbaryonic_01_${i} $i $outDir

done





