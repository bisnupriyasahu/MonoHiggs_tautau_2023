#!/bin/sh
source /cvmfs/cms.cern.ch/cmsset_default.sh 
cd /cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5/
eval export CMSSW_RELEASE_BASE="/cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5";
export PATH="/cvmfs/cms.cern.ch/share/overrides/bin:/nfs_scratch/jmadhusu/CMSSW_12_3_5/bin/slc7_amd64_gcc10:/nfs_scratch/jmadhusu/CMSSW_12_3_5/external/slc7_amd64_gcc10/bin:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5/bin/slc7_amd64_gcc10:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5/external/slc7_amd64_gcc10/bin:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/external/llvm/12.0.1-98ba1be77003441f04b47ab03db13dc0/bin:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/external/gcc/10.3.0-84898dea653199466402e67d73657f10/bin:/cvmfs/cms.cern.ch/common:/cvmfs/cms.cern.ch/common:/usr/local/bin/smb:/usr/local/bin/raid:/usr/lib64/qt-3.3/bin:/usr/local/etc:/usr/local/bin/hadoop:/usr/local/bin/firstboot:/usr/local/bin/defaultcls:/usr/condabin:/usr/local/bin/cephdir:/usr/local/bin/afs:/usr/local/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/opt/puppetlabs/bin:/afs/hep.wisc.edu/home/ms/bin";
cd ${_CONDOR_SCRATCH_DIR}


hadd TTToSemiLeptonic_powheg_0004_00.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0004/Ntuple_mc_1-4000.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0004/Ntuple_mc_1-4001.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0004/Ntuple_mc_1-4002.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0004/Ntuple_mc_1-4003.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0004/Ntuple_mc_1-4004.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0004/Ntuple_mc_1-4005.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0004/Ntuple_mc_1-4006.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0004/Ntuple_mc_1-4007.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0004/Ntuple_mc_1-4008.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0004/Ntuple_mc_1-4009.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0004/Ntuple_mc_1-4010.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0004/Ntuple_mc_1-4011.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0004/Ntuple_mc_1-4012.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0004/Ntuple_mc_1-4013.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0004/Ntuple_mc_1-4014.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0004/Ntuple_mc_1-4015.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0004/Ntuple_mc_1-4016.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0004/Ntuple_mc_1-4017.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0004/Ntuple_mc_1-4018.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0004/Ntuple_mc_1-4019.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0004/Ntuple_mc_1-4020.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0004/Ntuple_mc_1-4021.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0004/Ntuple_mc_1-4022.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0004/Ntuple_mc_1-4023.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0004/Ntuple_mc_1-4024.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0004/Ntuple_mc_1-4025.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0004/Ntuple_mc_1-4026.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0004/Ntuple_mc_1-4027.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0004/Ntuple_mc_1-4028.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0004/Ntuple_mc_1-4029.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0004/Ntuple_mc_1-4030.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0004/Ntuple_mc_1-4031.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0004/Ntuple_mc_1-4032.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0004/Ntuple_mc_1-4033.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0004/Ntuple_mc_1-4034.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0004/Ntuple_mc_1-4035.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0004/Ntuple_mc_1-4036.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0004/Ntuple_mc_1-4037.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0004/Ntuple_mc_1-4038.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0004/Ntuple_mc_1-4039.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0004/Ntuple_mc_1-4040.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0004/Ntuple_mc_1-4041.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0004/Ntuple_mc_1-4042.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0004/Ntuple_mc_1-4043.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0004/Ntuple_mc_1-4044.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0004/Ntuple_mc_1-4045.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0004/Ntuple_mc_1-4046.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0004/Ntuple_mc_1-4047.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0004/Ntuple_mc_1-4048.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0004/Ntuple_mc_1-4049.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0004/Ntuple_mc_1-4050.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0004/Ntuple_mc_1-4051.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0004/Ntuple_mc_1-4052.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0004/Ntuple_mc_1-4053.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0004/Ntuple_mc_1-4054.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0004/Ntuple_mc_1-4055.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0004/Ntuple_mc_1-4056.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0004/Ntuple_mc_1-4057.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0004/Ntuple_mc_1-4058.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0004/Ntuple_mc_1-4059.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0004/Ntuple_mc_1-4060.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0004/Ntuple_mc_1-4061.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0004/Ntuple_mc_1-4062.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0004/Ntuple_mc_1-4063.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0004/Ntuple_mc_1-4064.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0004/Ntuple_mc_1-4065.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0004/Ntuple_mc_1-4066.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0004/Ntuple_mc_1-4067.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0004/Ntuple_mc_1-4068.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0004/Ntuple_mc_1-4069.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0004/Ntuple_mc_1-4070.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0004/Ntuple_mc_1-4071.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0004/Ntuple_mc_1-4072.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0004/Ntuple_mc_1-4073.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0004/Ntuple_mc_1-4074.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0004/Ntuple_mc_1-4075.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0004/Ntuple_mc_1-4076.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0004/Ntuple_mc_1-4077.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0004/Ntuple_mc_1-4078.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0004/Ntuple_mc_1-4079.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0004/Ntuple_mc_1-4080.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0004/Ntuple_mc_1-4081.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0004/Ntuple_mc_1-4082.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0004/Ntuple_mc_1-4083.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0004/Ntuple_mc_1-4084.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0004/Ntuple_mc_1-4085.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0004/Ntuple_mc_1-4086.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0004/Ntuple_mc_1-4087.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0004/Ntuple_mc_1-4088.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0004/Ntuple_mc_1-4089.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0004/Ntuple_mc_1-4090.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0004/Ntuple_mc_1-4091.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0004/Ntuple_mc_1-4092.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0004/Ntuple_mc_1-4093.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0004/Ntuple_mc_1-4094.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0004/Ntuple_mc_1-4095.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0004/Ntuple_mc_1-4096.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0004/Ntuple_mc_1-4097.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0004/Ntuple_mc_1-4098.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0004/Ntuple_mc_1-4099.root
mv TTToSemiLeptonic_powheg_0004_00.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau_hadd/ 
