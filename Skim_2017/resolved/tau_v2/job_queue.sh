#!/bin/sh
source /cvmfs/cms.cern.ch/cmsset_default.sh 
cd /cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5/
export CMSSW_RELEASE_BASE="/cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5";
export PATH="/cvmfs/cms.cern.ch/share/overrides/bin:/nfs_scratch/bsahu/Checking_2018/CMSSW_12_3_5/bin/slc7_amd64_gcc10:/nfs_scratch/bsahu/Checking_2018/CMSSW_12_3_5/external/slc7_amd64_gcc10/bin:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5/bin/slc7_amd64_gcc10:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5/external/slc7_amd64_gcc10/bin:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/external/llvm/12.0.1-98ba1be77003441f04b47ab03db13dc0/bin:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/external/gcc/10.3.0-84898dea653199466402e67d73657f10/bin:/cvmfs/cms.cern.ch/common:/usr/local/bin/smb:/usr/local/bin/raid:/usr/lib64/qt-3.3/bin:/usr/local/etc:/usr/local/bin/hadoop:/usr/local/bin/firstboot:/usr/local/bin/defaultcls:/usr/condabin:/usr/local/bin/cephdir:/usr/local/bin/afs:/usr/local/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/opt/puppetlabs/bin:/afs/hep.wisc.edu/home/bsahu/bin";


cd ${_CONDOR_SCRATCH_DIR}

#echo ${1} ${2} ${3} ${4} ${5} ${6} ${7}

#./${1} root://cmsxrootd.hep.wisc.edu:1094/${2}/${4}.root ${3}_${4}_${6}.root -1 1000 2017 ${5} ${3} ${6}
#xrdcp ${3}_${4}_${6}.root root://cmsxrootd.hep.wisc.edu:1094//store/user/bsahu/with_boostedtau/2017_skimmed/with_boostedtaus/signal_final/${3}/ 
#rm ${3}_${4}_${6}.root 

#./${1} /hdfs/${2}/${4}.root ${3}_${4}_${6}.root -1 1000 2017 ${5} ${3} ${6}
#mv ${3}_${4}_${6}.root /hdfs/store/user/bsahu/boostedtau_ZPB_signal_sample_17032023/2017_skimmed/signal/${3}/ 

#./${1} root://cmsxrootd.hep.wisc.edu:1094/${2}/${4}.root ${4}.root -1 1000 2017 ${5} ${4}
#xrdcp ${4}.root root://cmsxrootd.hep.wisc.edu:1094//store/user/bsahu/Resolved_MC_Skimm/2018_skimmed/tautau/${3}/
#./${1} /hdfs/${2}/${4}.root ${4}.root -1 1000 2017 ${5} ${4}

#./analyze_tautau_updated /hdfs/store/user/jmadhusu/MC2018_Autumn18_monoHiggs_28Aug2022/DY1JetsToLL_M-50_TuneCP5_13TeV-madgraphMLM-pythia8/crab_job_DY1JetsToLL/220829_023011/0000/ out.root 10000 1000 2018 MC

./${1} /hdfs/${2}/ ${3}.root -1 1000 2017 ${5}
#for MC 
#xrdcp ${3}.root /hdfs/store/user/bsahu/Resolved_MC_Skimm/2017_skimmed/tautau/
# for blinded data
#xrdcp ${3}.root /hdfs/store/user/bsahu/Resolved_MC_Skimm/2017_skimmed/tautau/blinded/
# for unblinded data also uncomment if (jentry%5 !=0) continue; (in skimm.C file)
xrdcp ${3}.root /hdfs/store/user/bsahu/Resolved_MC_Skimm/2017_skimmed/tautau/unblinded/

rm ${3}.root
