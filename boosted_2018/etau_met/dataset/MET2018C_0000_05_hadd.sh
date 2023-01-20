#!/bin/sh
source /cvmfs/cms.cern.ch/cmsset_default.sh 
cd /cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5/
eval export CMSSW_RELEASE_BASE="/cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5";
export PATH="/cvmfs/cms.cern.ch/share/overrides/bin:/nfs_scratch/jmadhusu/CMSSW_12_3_5/bin/slc7_amd64_gcc10:/nfs_scratch/jmadhusu/CMSSW_12_3_5/external/slc7_amd64_gcc10/bin:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5/bin/slc7_amd64_gcc10:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5/external/slc7_amd64_gcc10/bin:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/external/llvm/12.0.1-98ba1be77003441f04b47ab03db13dc0/bin:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/external/gcc/10.3.0-84898dea653199466402e67d73657f10/bin:/cvmfs/cms.cern.ch/common:/cvmfs/cms.cern.ch/common:/usr/local/bin/smb:/usr/local/bin/raid:/usr/lib64/qt-3.3/bin:/usr/local/etc:/usr/local/bin/hadoop:/usr/local/bin/firstboot:/usr/local/bin/defaultcls:/usr/condabin:/usr/local/bin/cephdir:/usr/local/bin/afs:/usr/local/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/opt/puppetlabs/bin:/afs/hep.wisc.edu/home/ms/bin";
cd ${_CONDOR_SCRATCH_DIR}


hadd MET2018C_0000_05.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-546.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-547.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-548.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-549.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-55.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-550.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-551.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-552.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-553.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-554.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-555.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-556.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-557.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-558.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-559.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-56.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-560.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-561.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-562.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-563.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-564.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-565.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-566.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-567.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-568.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-569.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-57.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-570.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-571.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-572.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-573.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-574.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-58.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-59.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-6.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-60.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-61.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-62.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-63.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-64.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-65.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-66.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-67.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-68.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-69.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-7.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-70.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-71.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-72.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-73.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-74.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-75.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-76.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-77.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-78.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-79.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-8.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-80.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-81.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-82.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-83.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-84.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-85.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-86.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-87.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-88.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-89.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-9.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-90.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-91.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-92.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-93.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-94.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-95.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-96.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-97.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-98.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-99.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_10.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_100.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_101.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_102.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_103.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_104.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_105.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_106.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_107.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_108.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_109.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_11.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_110.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_111.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_112.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_113.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_114.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_115.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_116.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_117.root
mv MET2018C_0000_05.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau_hadd/ 
