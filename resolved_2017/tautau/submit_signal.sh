
outDir="Out_$(date +"%d-%m-%Y_%H-%M")" 
mkdir $outDir 

###########################   MC  #########################


./rootcom tautau_analyzer analyze_tautau

for i in {1..43}
do
    
    ./MakeCondorFiles_zpb.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2017_skimmed/zprimeBaryonic/Zpbaryonic2017_00.root Zpbaryonic_00_${i}.root -1 1000 2017 MC Zpbaryonic_00_${i} $i $outDir
    ./MakeCondorFiles_zpb.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2017_skimmed/zprimeBaryonic/Zpbaryonic2017_01.root Zpbaryonic_01_${i}.root -1 1000 2017 MC Zpbaryonic_01_${i} $i $outDir

done



