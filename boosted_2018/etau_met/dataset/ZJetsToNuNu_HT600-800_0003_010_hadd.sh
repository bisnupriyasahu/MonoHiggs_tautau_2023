#!/bin/sh
source /cvmfs/cms.cern.ch/cmsset_default.sh 
cd /cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5/
eval export CMSSW_RELEASE_BASE="/cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5";
export PATH="/cvmfs/cms.cern.ch/share/overrides/bin:/nfs_scratch/jmadhusu/CMSSW_12_3_5/bin/slc7_amd64_gcc10:/nfs_scratch/jmadhusu/CMSSW_12_3_5/external/slc7_amd64_gcc10/bin:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5/bin/slc7_amd64_gcc10:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5/external/slc7_amd64_gcc10/bin:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/external/llvm/12.0.1-98ba1be77003441f04b47ab03db13dc0/bin:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/external/gcc/10.3.0-84898dea653199466402e67d73657f10/bin:/cvmfs/cms.cern.ch/common:/cvmfs/cms.cern.ch/common:/usr/local/bin/smb:/usr/local/bin/raid:/usr/lib64/qt-3.3/bin:/usr/local/etc:/usr/local/bin/hadoop:/usr/local/bin/firstboot:/usr/local/bin/defaultcls:/usr/condabin:/usr/local/bin/cephdir:/usr/local/bin/afs:/usr/local/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/opt/puppetlabs/bin:/afs/hep.wisc.edu/home/ms/bin";
cd ${_CONDOR_SCRATCH_DIR}


hadd ZJetsToNuNu_HT600-800_0003_010.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0003/Ntuple_mc_1-3991.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0003/Ntuple_mc_1-3992.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0003/Ntuple_mc_1-3993.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0003/Ntuple_mc_1-3994.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0003/Ntuple_mc_1-3995.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0003/Ntuple_mc_1-3996.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0003/Ntuple_mc_1-3997.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0003/Ntuple_mc_1-3998.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0003/Ntuple_mc_1-3999.root
mv ZJetsToNuNu_HT600-800_0003_010.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau_hadd/ 
