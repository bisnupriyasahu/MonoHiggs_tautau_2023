
cat> sample.sh<<EOF
#!/bin/sh
source /cvmfs/cms.cern.ch/cmsset_default.sh 
cd $CMSSW_RELEASE_BASE
eval `scramv1 runtime -sh`
cd \${_CONDOR_SCRATCH_DIR}


for i in {1..10}
do

./${1} ${2} ${3}_\${i}.root ${4} ${5} ${6} ${7} ${8} \${i}

xrdcp ${3}_\${i}.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/zprime_baryonic/

rm ${3}_\${i}.root

sleep 30

done

echo "Done!"

EOF
