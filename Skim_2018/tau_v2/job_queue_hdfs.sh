#!/bin/sh
source /cvmfs/cms.cern.ch/cmsset_default.sh 
cd /cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5/
eval export SRT_INTEL_LICENSE_FILE_SCRAMRTDEL="/nfs_scratch/jmadhusu/CMSSW_12_3_5/src/with_boostedtaus/2017/condor_sample/28518@lxlicen01.cern.ch,28518@lxlicen02.cern.ch,28518@lxlicen03.cern.ch";
export CMSSW_RELEASE_BASE="/cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5";
export INTEL_LICENSE_FILE="/nfs_scratch/jmadhusu/CMSSW_12_3_5/src/with_boostedtaus/2017/condor_sample/28518@lxlicen01.cern.ch,28518@lxlicen02.cern.ch,28518@lxlicen03.cern.ch";
export PATH="/cvmfs/cms.cern.ch/share/overrides/bin:/nfs_scratch/jmadhusu/CMSSW_12_3_5/bin/slc7_amd64_gcc10:/nfs_scratch/jmadhusu/CMSSW_12_3_5/external/slc7_amd64_gcc10/bin:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5/bin/slc7_amd64_gcc10:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5/external/slc7_amd64_gcc10/bin:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/external/llvm/12.0.1-98ba1be77003441f04b47ab03db13dc0/bin:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/external/gcc/10.3.0-84898dea653199466402e67d73657f10/bin:/cvmfs/cms.cern.ch/common:/afs/hep.wisc.edu/user/ms/.vscode-server/bin/d045a5eda657f4d7b676dedbfa7aab8207f8a075/bin/remote-cli:/cvmfs/cms.cern.ch/common:/cvmfs/cms.cern.ch/common:/cvmfs/cms.cern.ch/common:/usr/local/bin/smb:/usr/local/bin/raid:/usr/lib64/qt-3.3/bin:/usr/local/etc:/usr/local/sbin:/usr/sbin:/usr/local/bin/hadoop:/usr/local/bin/firstboot:/usr/local/bin/defaultcls:/usr/condabin:/usr/local/bin/cephdir:/usr/local/bin/afs:/usr/local/bin:/usr/bin:/opt/puppetlabs/bin:/afs/hep.wisc.edu/home/ms/bin";
cd ${_CONDOR_SCRATCH_DIR}

#echo ${1} ${2} ${3}

./${1} /hdfs${2}/${4}.root ${4}.root -1 1000 2017 ${5} ${4}

mv ${4}.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/tautau/${3}/
  
# rm ${4}.root 


