#!/bin/sh
source /cvmfs/cms.cern.ch/cmsset_default.sh 
cd /cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5/
eval export CMSSW_RELEASE_BASE="/cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5";
export PATH="/cvmfs/cms.cern.ch/share/overrides/bin:/nfs_scratch/jmadhusu/CMSSW_12_3_5/bin/slc7_amd64_gcc10:/nfs_scratch/jmadhusu/CMSSW_12_3_5/external/slc7_amd64_gcc10/bin:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5/bin/slc7_amd64_gcc10:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5/external/slc7_amd64_gcc10/bin:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/external/llvm/12.0.1-98ba1be77003441f04b47ab03db13dc0/bin:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/external/gcc/10.3.0-84898dea653199466402e67d73657f10/bin:/cvmfs/cms.cern.ch/common:/cvmfs/cms.cern.ch/common:/usr/local/bin/smb:/usr/local/bin/raid:/usr/lib64/qt-3.3/bin:/usr/local/etc:/usr/local/bin/hadoop:/usr/local/bin/firstboot:/usr/local/bin/defaultcls:/usr/condabin:/usr/local/bin/cephdir:/usr/local/bin/afs:/usr/local/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/opt/puppetlabs/bin:/afs/hep.wisc.edu/home/ms/bin";
cd ${_CONDOR_SCRATCH_DIR}


hadd ZJetsToNuNu_HT100-200_0000_03.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT100-200_0000/Ntuple_mc_1-368.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT100-200_0000/Ntuple_mc_1-369.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT100-200_0000/Ntuple_mc_1-37.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT100-200_0000/Ntuple_mc_1-370.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT100-200_0000/Ntuple_mc_1-371.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT100-200_0000/Ntuple_mc_1-372.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT100-200_0000/Ntuple_mc_1-373.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT100-200_0000/Ntuple_mc_1-374.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT100-200_0000/Ntuple_mc_1-375.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT100-200_0000/Ntuple_mc_1-376.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT100-200_0000/Ntuple_mc_1-377.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT100-200_0000/Ntuple_mc_1-378.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT100-200_0000/Ntuple_mc_1-379.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT100-200_0000/Ntuple_mc_1-38.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT100-200_0000/Ntuple_mc_1-380.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT100-200_0000/Ntuple_mc_1-381.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT100-200_0000/Ntuple_mc_1-382.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT100-200_0000/Ntuple_mc_1-383.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT100-200_0000/Ntuple_mc_1-384.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT100-200_0000/Ntuple_mc_1-385.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT100-200_0000/Ntuple_mc_1-386.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT100-200_0000/Ntuple_mc_1-387.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT100-200_0000/Ntuple_mc_1-388.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT100-200_0000/Ntuple_mc_1-389.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT100-200_0000/Ntuple_mc_1-39.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT100-200_0000/Ntuple_mc_1-390.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT100-200_0000/Ntuple_mc_1-391.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT100-200_0000/Ntuple_mc_1-392.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT100-200_0000/Ntuple_mc_1-393.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT100-200_0000/Ntuple_mc_1-394.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT100-200_0000/Ntuple_mc_1-395.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT100-200_0000/Ntuple_mc_1-396.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT100-200_0000/Ntuple_mc_1-4.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT100-200_0000/Ntuple_mc_1-40.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT100-200_0000/Ntuple_mc_1-41.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT100-200_0000/Ntuple_mc_1-42.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT100-200_0000/Ntuple_mc_1-43.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT100-200_0000/Ntuple_mc_1-44.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT100-200_0000/Ntuple_mc_1-45.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT100-200_0000/Ntuple_mc_1-46.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT100-200_0000/Ntuple_mc_1-47.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT100-200_0000/Ntuple_mc_1-48.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT100-200_0000/Ntuple_mc_1-49.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT100-200_0000/Ntuple_mc_1-5.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT100-200_0000/Ntuple_mc_1-50.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT100-200_0000/Ntuple_mc_1-51.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT100-200_0000/Ntuple_mc_1-52.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT100-200_0000/Ntuple_mc_1-53.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT100-200_0000/Ntuple_mc_1-54.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT100-200_0000/Ntuple_mc_1-55.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT100-200_0000/Ntuple_mc_1-56.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT100-200_0000/Ntuple_mc_1-57.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT100-200_0000/Ntuple_mc_1-58.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT100-200_0000/Ntuple_mc_1-59.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT100-200_0000/Ntuple_mc_1-6.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT100-200_0000/Ntuple_mc_1-60.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT100-200_0000/Ntuple_mc_1-61.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT100-200_0000/Ntuple_mc_1-62.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT100-200_0000/Ntuple_mc_1-63.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT100-200_0000/Ntuple_mc_1-64.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT100-200_0000/Ntuple_mc_1-65.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT100-200_0000/Ntuple_mc_1-66.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT100-200_0000/Ntuple_mc_1-67.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT100-200_0000/Ntuple_mc_1-68.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT100-200_0000/Ntuple_mc_1-69.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT100-200_0000/Ntuple_mc_1-7.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT100-200_0000/Ntuple_mc_1-70.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT100-200_0000/Ntuple_mc_1-71.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT100-200_0000/Ntuple_mc_1-72.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT100-200_0000/Ntuple_mc_1-73.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT100-200_0000/Ntuple_mc_1-74.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT100-200_0000/Ntuple_mc_1-75.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT100-200_0000/Ntuple_mc_1-76.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT100-200_0000/Ntuple_mc_1-77.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT100-200_0000/Ntuple_mc_1-78.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT100-200_0000/Ntuple_mc_1-79.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT100-200_0000/Ntuple_mc_1-8.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT100-200_0000/Ntuple_mc_1-80.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT100-200_0000/Ntuple_mc_1-81.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT100-200_0000/Ntuple_mc_1-82.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT100-200_0000/Ntuple_mc_1-83.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT100-200_0000/Ntuple_mc_1-84.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT100-200_0000/Ntuple_mc_1-85.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT100-200_0000/Ntuple_mc_1-86.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT100-200_0000/Ntuple_mc_1-87.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT100-200_0000/Ntuple_mc_1-88.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT100-200_0000/Ntuple_mc_1-89.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT100-200_0000/Ntuple_mc_1-9.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT100-200_0000/Ntuple_mc_1-90.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT100-200_0000/Ntuple_mc_1-91.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT100-200_0000/Ntuple_mc_1-92.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT100-200_0000/Ntuple_mc_1-93.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT100-200_0000/Ntuple_mc_1-94.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT100-200_0000/Ntuple_mc_1-95.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT100-200_0000/Ntuple_mc_1-96.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT100-200_0000/Ntuple_mc_1-97.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT100-200_0000/Ntuple_mc_1-98.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT100-200_0000/Ntuple_mc_1-99.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT100-200_0000/Ntuple_mc_1.root
mv ZJetsToNuNu_HT100-200_0000_03.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau_hadd/ 
