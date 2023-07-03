#!/bin/sh
source /cvmfs/cms.cern.ch/cmsset_default.sh 
cd /cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5/
#eval export SRT_INTEL_LICENSE_FILE_SCRAMRTDEL="/nfs_scratch/jmadhusu/CMSSW_12_3_5/src/with_boostedtaus/2017/condor_sample/28518@lxlicen01.cern.ch,28518@lxlicen02.cern.ch,28518@lxlicen03.cern.ch";
export CMSSW_RELEASE_BASE="/cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5";
#export INTEL_LICENSE_FILE="/nfs_scratch/jmadhusu/CMSSW_12_3_5/src/with_boostedtaus/2017/condor_sample/28518@lxlicen01.cern.ch,28518@lxlicen02.cern.ch,28518@lxlicen03.cern.ch";
export PATH="/cvmfs/cms.cern.ch/share/overrides/bin:/nfs_scratch/bsahu/Checking_2018/CMSSW_12_3_5/bin/slc7_amd64_gcc10:/nfs_scratch/bsahu/Checking_2018/CMSSW_12_3_5/external/slc7_amd64_gcc10/bin:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5/bin/slc7_amd64_gcc10:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5/external/slc7_amd64_gcc10/bin:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/external/llvm/12.0.1-98ba1be77003441f04b47ab03db13dc0/bin:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/external/gcc/10.3.0-84898dea653199466402e67d73657f10/bin:/cvmfs/cms.cern.ch/common:/usr/local/bin/smb:/usr/local/bin/raid:/usr/lib64/qt-3.3/bin:/usr/local/etc:/usr/local/bin/hadoop:/usr/local/bin/firstboot:/usr/local/bin/defaultcls:/usr/condabin:/usr/local/bin/cephdir:/usr/local/bin/afs:/usr/local/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/opt/puppetlabs/bin:/afs/hep.wisc.edu/home/bsahu/bin";


cd ${_CONDOR_SCRATCH_DIR}

#echo ${1} ${2} ${3} ${4} ${5} ${6} ${7}

#./${1} root://cmsxrootd.hep.wisc.edu:1094/${2}/${4}.root ${3}_${4}_${6}.root -1 1000 2017 ${5} ${3} ${6}
#xrdcp ${3}_${4}_${6}.root root://cmsxrootd.hep.wisc.edu:1094//store/user/bsahu/with_boostedtau/2017_skimmed/with_boostedtaus/signal_final/${3}/ 
#rm ${3}_${4}_${6}.root 

./${1} /hdfs/${2}/${4}.root ${3}_${4}_${6}.root -1 1000 2017 ${5} ${3} ${6}
#mv ${3}_${4}_${6}.root /hdfs/store/user/bsahu/Resolved_ZPB_signal_sample_17032023/2017_skimmed/signal/${3}/ 
mv ${3}_${4}_${6}.root /hdfs/store/user/bsahu/Resolved_ZPB_signal_sample_17032023/2018_skimmed_in2017skimmer/signal/${3}/ 



