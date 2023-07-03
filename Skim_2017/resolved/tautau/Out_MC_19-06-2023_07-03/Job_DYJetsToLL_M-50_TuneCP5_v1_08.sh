#!/bin/sh
source /cvmfs/cms.cern.ch/cmsset_default.sh 
cd /cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5/
eval export CMSSW_RELEASE_BASE="/cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5";
export PATH="/cvmfs/cms.cern.ch/share/overrides/bin:/nfs_scratch/bsahu/Checking_2018/CMSSW_12_3_5/bin/slc7_amd64_gcc10:/nfs_scratch/bsahu/Checking_2018/CMSSW_12_3_5/external/slc7_amd64_gcc10/bin:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5/bin/slc7_amd64_gcc10:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5/external/slc7_amd64_gcc10/bin:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/external/llvm/12.0.1-98ba1be77003441f04b47ab03db13dc0/bin:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/external/gcc/10.3.0-84898dea653199466402e67d73657f10/bin:/cvmfs/cms.cern.ch/common:/usr/local/bin/smb:/usr/local/bin/raid:/usr/lib64/qt-3.3/bin:/usr/local/etc:/usr/local/bin/hadoop:/usr/local/bin/firstboot:/usr/local/bin/defaultcls:/usr/condabin:/usr/local/bin/cephdir:/usr/local/bin/afs:/usr/local/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/opt/puppetlabs/bin:/afs/hep.wisc.edu/home/bsahu/bin";
cd ${_CONDOR_SCRATCH_DIR}
./analyze_tautau_skim root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/MC2017_12Apr2018_monoHiggs_27Aug2022/DYJetsToLL_M-50_TuneCP5_13TeV-madgraphMLM-pythia8/crab_job_DYJetsToLL_M-50_TuneCP5_v1/220827_053032/0008/ DYJetsToLL_M-50_TuneCP5_v1_08.root -1 1000 2017 MC DYJetsToLL_M-50_TuneCP5_v1_08

