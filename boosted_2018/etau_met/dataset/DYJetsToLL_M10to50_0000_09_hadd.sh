#!/bin/sh
source /cvmfs/cms.cern.ch/cmsset_default.sh 
cd /cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5/
eval export CMSSW_RELEASE_BASE="/cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5";
export PATH="/cvmfs/cms.cern.ch/share/overrides/bin:/nfs_scratch/jmadhusu/CMSSW_12_3_5/bin/slc7_amd64_gcc10:/nfs_scratch/jmadhusu/CMSSW_12_3_5/external/slc7_amd64_gcc10/bin:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5/bin/slc7_amd64_gcc10:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5/external/slc7_amd64_gcc10/bin:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/external/llvm/12.0.1-98ba1be77003441f04b47ab03db13dc0/bin:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/external/gcc/10.3.0-84898dea653199466402e67d73657f10/bin:/cvmfs/cms.cern.ch/common:/cvmfs/cms.cern.ch/common:/usr/local/bin/smb:/usr/local/bin/raid:/usr/lib64/qt-3.3/bin:/usr/local/etc:/usr/local/bin/hadoop:/usr/local/bin/firstboot:/usr/local/bin/defaultcls:/usr/condabin:/usr/local/bin/cephdir:/usr/local/bin/afs:/usr/local/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/opt/puppetlabs/bin:/afs/hep.wisc.edu/home/ms/bin";
cd ${_CONDOR_SCRATCH_DIR}


hadd DYJetsToLL_M10to50_0000_09.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_M10to50_0000/Ntuple_mc_3-353.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_M10to50_0000/Ntuple_mc_3-354.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_M10to50_0000/Ntuple_mc_3-355.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_M10to50_0000/Ntuple_mc_3-356.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_M10to50_0000/Ntuple_mc_3-357.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_M10to50_0000/Ntuple_mc_3-358.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_M10to50_0000/Ntuple_mc_3-359.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_M10to50_0000/Ntuple_mc_3-36.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_M10to50_0000/Ntuple_mc_3-360.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_M10to50_0000/Ntuple_mc_3-361.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_M10to50_0000/Ntuple_mc_3-362.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_M10to50_0000/Ntuple_mc_3-363.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_M10to50_0000/Ntuple_mc_3-364.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_M10to50_0000/Ntuple_mc_3-365.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_M10to50_0000/Ntuple_mc_3-366.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_M10to50_0000/Ntuple_mc_3-367.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_M10to50_0000/Ntuple_mc_3-368.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_M10to50_0000/Ntuple_mc_3-369.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_M10to50_0000/Ntuple_mc_3-37.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_M10to50_0000/Ntuple_mc_3-370.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_M10to50_0000/Ntuple_mc_3-371.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_M10to50_0000/Ntuple_mc_3-372.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_M10to50_0000/Ntuple_mc_3-373.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_M10to50_0000/Ntuple_mc_3-374.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_M10to50_0000/Ntuple_mc_3-375.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_M10to50_0000/Ntuple_mc_3-376.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_M10to50_0000/Ntuple_mc_3-377.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_M10to50_0000/Ntuple_mc_3-378.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_M10to50_0000/Ntuple_mc_3-379.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_M10to50_0000/Ntuple_mc_3-38.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_M10to50_0000/Ntuple_mc_3-380.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_M10to50_0000/Ntuple_mc_3-381.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_M10to50_0000/Ntuple_mc_3-382.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_M10to50_0000/Ntuple_mc_3-383.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_M10to50_0000/Ntuple_mc_3-384.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_M10to50_0000/Ntuple_mc_3-385.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_M10to50_0000/Ntuple_mc_3-386.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_M10to50_0000/Ntuple_mc_3-387.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_M10to50_0000/Ntuple_mc_3-388.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_M10to50_0000/Ntuple_mc_3-389.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_M10to50_0000/Ntuple_mc_3-39.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_M10to50_0000/Ntuple_mc_3-390.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_M10to50_0000/Ntuple_mc_3-391.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_M10to50_0000/Ntuple_mc_3-392.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_M10to50_0000/Ntuple_mc_3-393.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_M10to50_0000/Ntuple_mc_3-394.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_M10to50_0000/Ntuple_mc_3-395.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_M10to50_0000/Ntuple_mc_3-396.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_M10to50_0000/Ntuple_mc_3-397.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_M10to50_0000/Ntuple_mc_3-398.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_M10to50_0000/Ntuple_mc_3-399.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_M10to50_0000/Ntuple_mc_3-4.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_M10to50_0000/Ntuple_mc_3-40.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_M10to50_0000/Ntuple_mc_3-400.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_M10to50_0000/Ntuple_mc_3-401.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_M10to50_0000/Ntuple_mc_3-402.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_M10to50_0000/Ntuple_mc_3-403.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_M10to50_0000/Ntuple_mc_3-404.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_M10to50_0000/Ntuple_mc_3-405.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_M10to50_0000/Ntuple_mc_3-406.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_M10to50_0000/Ntuple_mc_3-407.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_M10to50_0000/Ntuple_mc_3-408.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_M10to50_0000/Ntuple_mc_3-409.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_M10to50_0000/Ntuple_mc_3-41.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_M10to50_0000/Ntuple_mc_3-410.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_M10to50_0000/Ntuple_mc_3-411.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_M10to50_0000/Ntuple_mc_3-412.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_M10to50_0000/Ntuple_mc_3-413.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_M10to50_0000/Ntuple_mc_3-414.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_M10to50_0000/Ntuple_mc_3-415.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_M10to50_0000/Ntuple_mc_3-416.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_M10to50_0000/Ntuple_mc_3-417.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_M10to50_0000/Ntuple_mc_3-418.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_M10to50_0000/Ntuple_mc_3-419.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_M10to50_0000/Ntuple_mc_3-42.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_M10to50_0000/Ntuple_mc_3-420.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_M10to50_0000/Ntuple_mc_3-421.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_M10to50_0000/Ntuple_mc_3-422.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_M10to50_0000/Ntuple_mc_3-423.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_M10to50_0000/Ntuple_mc_3-424.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_M10to50_0000/Ntuple_mc_3-425.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_M10to50_0000/Ntuple_mc_3-426.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_M10to50_0000/Ntuple_mc_3-427.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_M10to50_0000/Ntuple_mc_3-428.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_M10to50_0000/Ntuple_mc_3-429.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_M10to50_0000/Ntuple_mc_3-43.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_M10to50_0000/Ntuple_mc_3-430.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_M10to50_0000/Ntuple_mc_3-431.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_M10to50_0000/Ntuple_mc_3-432.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_M10to50_0000/Ntuple_mc_3-433.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_M10to50_0000/Ntuple_mc_3-434.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_M10to50_0000/Ntuple_mc_3-435.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_M10to50_0000/Ntuple_mc_3-436.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_M10to50_0000/Ntuple_mc_3-437.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_M10to50_0000/Ntuple_mc_3-438.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_M10to50_0000/Ntuple_mc_3-439.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_M10to50_0000/Ntuple_mc_3-44.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_M10to50_0000/Ntuple_mc_3-440.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_M10to50_0000/Ntuple_mc_3-441.root
mv DYJetsToLL_M10to50_0000_09.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau_hadd/ 
