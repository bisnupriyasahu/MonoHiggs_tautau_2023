#!/bin/sh
source /cvmfs/cms.cern.ch/cmsset_default.sh 
cd /cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5/
eval export CMSSW_RELEASE_BASE="/cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5";
export PATH="/cvmfs/cms.cern.ch/share/overrides/bin:/nfs_scratch/jmadhusu/CMSSW_12_3_5/bin/slc7_amd64_gcc10:/nfs_scratch/jmadhusu/CMSSW_12_3_5/external/slc7_amd64_gcc10/bin:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5/bin/slc7_amd64_gcc10:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5/external/slc7_amd64_gcc10/bin:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/external/llvm/12.0.1-98ba1be77003441f04b47ab03db13dc0/bin:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/external/gcc/10.3.0-84898dea653199466402e67d73657f10/bin:/cvmfs/cms.cern.ch/common:/cvmfs/cms.cern.ch/common:/usr/local/bin/smb:/usr/local/bin/raid:/usr/lib64/qt-3.3/bin:/usr/local/etc:/usr/local/bin/hadoop:/usr/local/bin/firstboot:/usr/local/bin/defaultcls:/usr/condabin:/usr/local/bin/cephdir:/usr/local/bin/afs:/usr/local/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/opt/puppetlabs/bin:/afs/hep.wisc.edu/home/ms/bin";
cd ${_CONDOR_SCRATCH_DIR}


hadd TTToHadronic_powheg_0004_03.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0004/Ntuple_mc_1-4298.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0004/Ntuple_mc_1-4299.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0004/Ntuple_mc_1-4300.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0004/Ntuple_mc_1-4301.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0004/Ntuple_mc_1-4302.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0004/Ntuple_mc_1-4303.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0004/Ntuple_mc_1-4304.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0004/Ntuple_mc_1-4305.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0004/Ntuple_mc_1-4306.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0004/Ntuple_mc_1-4307.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0004/Ntuple_mc_1-4308.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0004/Ntuple_mc_1-4309.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0004/Ntuple_mc_1-4310.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0004/Ntuple_mc_1-4311.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0004/Ntuple_mc_1-4312.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0004/Ntuple_mc_1-4313.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0004/Ntuple_mc_1-4314.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0004/Ntuple_mc_1-4315.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0004/Ntuple_mc_1-4316.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0004/Ntuple_mc_1-4317.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0004/Ntuple_mc_1-4318.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0004/Ntuple_mc_1-4319.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0004/Ntuple_mc_1-4320.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0004/Ntuple_mc_1-4321.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0004/Ntuple_mc_1-4322.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0004/Ntuple_mc_1-4323.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0004/Ntuple_mc_1-4324.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0004/Ntuple_mc_1-4325.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0004/Ntuple_mc_1-4326.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0004/Ntuple_mc_1-4327.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0004/Ntuple_mc_1-4328.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0004/Ntuple_mc_1-4329.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0004/Ntuple_mc_1-4330.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0004/Ntuple_mc_1-4331.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0004/Ntuple_mc_1-4332.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0004/Ntuple_mc_1-4333.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0004/Ntuple_mc_1-4334.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0004/Ntuple_mc_1-4335.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0004/Ntuple_mc_1-4336.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0004/Ntuple_mc_1-4337.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0004/Ntuple_mc_1-4338.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0004/Ntuple_mc_1-4339.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0004/Ntuple_mc_1-4340.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0004/Ntuple_mc_1-4341.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0004/Ntuple_mc_1-4342.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0004/Ntuple_mc_1-4343.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0004/Ntuple_mc_1-4344.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0004/Ntuple_mc_1-4345.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0004/Ntuple_mc_1-4346.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0004/Ntuple_mc_1-4347.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0004/Ntuple_mc_1-4348.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0004/Ntuple_mc_1-4349.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0004/Ntuple_mc_1-4350.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0004/Ntuple_mc_1-4351.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0004/Ntuple_mc_1-4352.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0004/Ntuple_mc_1-4353.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0004/Ntuple_mc_1-4354.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0004/Ntuple_mc_1-4355.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0004/Ntuple_mc_1-4356.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0004/Ntuple_mc_1-4357.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0004/Ntuple_mc_1-4358.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0004/Ntuple_mc_1-4359.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0004/Ntuple_mc_1-4360.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0004/Ntuple_mc_1-4361.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0004/Ntuple_mc_1-4362.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0004/Ntuple_mc_1-4363.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0004/Ntuple_mc_1-4364.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0004/Ntuple_mc_1-4365.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0004/Ntuple_mc_1-4366.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0004/Ntuple_mc_1-4367.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0004/Ntuple_mc_1-4368.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0004/Ntuple_mc_1-4369.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0004/Ntuple_mc_1-4370.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0004/Ntuple_mc_1-4371.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0004/Ntuple_mc_1-4372.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0004/Ntuple_mc_1-4373.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0004/Ntuple_mc_1-4374.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0004/Ntuple_mc_1-4375.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0004/Ntuple_mc_1-4376.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0004/Ntuple_mc_1-4377.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0004/Ntuple_mc_1-4378.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0004/Ntuple_mc_1-4379.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0004/Ntuple_mc_1-4380.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0004/Ntuple_mc_1-4381.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0004/Ntuple_mc_1-4382.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0004/Ntuple_mc_1-4383.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0004/Ntuple_mc_1-4384.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0004/Ntuple_mc_1-4385.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0004/Ntuple_mc_1-4386.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0004/Ntuple_mc_1-4387.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0004/Ntuple_mc_1-4388.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0004/Ntuple_mc_1-4389.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0004/Ntuple_mc_1-4390.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0004/Ntuple_mc_1-4391.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0004/Ntuple_mc_1-4392.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0004/Ntuple_mc_1-4393.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0004/Ntuple_mc_1-4394.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0004/Ntuple_mc_1-4395.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0004/Ntuple_mc_1-4396.root
mv TTToHadronic_powheg_0004_03.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau_hadd/ 
