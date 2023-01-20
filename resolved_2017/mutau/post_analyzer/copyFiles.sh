

if [ "$(ls -A "rootFiles")" ]; then
    rm rootFiles/*
fi

cp /nfs_scratch/jmadhusu/CMSSW_10_2_10/src/blinded_2018/mutau/analyzer/output/*.root rootFiles/
cp /nfs_scratch/jmadhusu/CMSSW_10_2_10/src/blinded_2018/mutau/analyzer_loose_iso/output/2HDMa_*.root rootFiles/
cp /nfs_scratch/jmadhusu/CMSSW_10_2_10/src/blinded_2018/mutau/analyzer_loose_iso/output/Zpbaryonic*.root rootFiles/

