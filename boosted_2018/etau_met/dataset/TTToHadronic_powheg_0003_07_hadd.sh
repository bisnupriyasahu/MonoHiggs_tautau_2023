#!/bin/sh
source /cvmfs/cms.cern.ch/cmsset_default.sh 
cd /cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5/
eval export CMSSW_RELEASE_BASE="/cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5";
export PATH="/cvmfs/cms.cern.ch/share/overrides/bin:/nfs_scratch/jmadhusu/CMSSW_12_3_5/bin/slc7_amd64_gcc10:/nfs_scratch/jmadhusu/CMSSW_12_3_5/external/slc7_amd64_gcc10/bin:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5/bin/slc7_amd64_gcc10:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5/external/slc7_amd64_gcc10/bin:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/external/llvm/12.0.1-98ba1be77003441f04b47ab03db13dc0/bin:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/external/gcc/10.3.0-84898dea653199466402e67d73657f10/bin:/cvmfs/cms.cern.ch/common:/cvmfs/cms.cern.ch/common:/usr/local/bin/smb:/usr/local/bin/raid:/usr/lib64/qt-3.3/bin:/usr/local/etc:/usr/local/bin/hadoop:/usr/local/bin/firstboot:/usr/local/bin/defaultcls:/usr/condabin:/usr/local/bin/cephdir:/usr/local/bin/afs:/usr/local/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/opt/puppetlabs/bin:/afs/hep.wisc.edu/home/ms/bin";
cd ${_CONDOR_SCRATCH_DIR}


hadd TTToHadronic_powheg_0003_07.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_1-3694.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_1-3695.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_1-3696.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_1-3697.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_1-3698.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_1-3699.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_1-3700.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_1-3701.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_1-3702.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_1-3703.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_1-3704.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_1-3705.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_1-3706.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_1-3707.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_1-3708.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_1-3709.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_1-3710.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_1-3711.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_1-3712.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_1-3713.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_1-3714.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_1-3715.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_1-3716.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_1-3717.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_1-3718.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_1-3719.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_1-3720.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_1-3721.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_1-3722.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_1-3723.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_1-3724.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_1-3725.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_1-3726.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_1-3727.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_1-3728.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_1-3729.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_1-3730.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_1-3731.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_1-3732.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_1-3733.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_1-3734.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_1-3735.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_1-3736.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_1-3737.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_1-3738.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_1-3739.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_1-3740.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_1-3741.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_1-3742.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_1-3743.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_1-3744.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_1-3745.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_1-3746.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_1-3747.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_1-3748.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_1-3749.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_1-3750.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_1-3751.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_1-3752.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_1-3753.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_1-3754.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_1-3755.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_1-3756.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_1-3757.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_1-3758.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_1-3759.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_1-3760.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_1-3761.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_1-3762.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_1-3763.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_1-3764.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_1-3765.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_1-3766.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_1-3767.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_1-3768.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_1-3769.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_1-3770.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_1-3771.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_1-3772.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_1-3773.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_1-3774.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_1-3775.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_1-3776.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_1-3777.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_1-3778.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_1-3779.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_1-3780.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_1-3781.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_1-3782.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_1-3783.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_1-3784.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_1-3785.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_1-3786.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_1-3787.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_1-3788.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_1-3789.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_1-3790.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_1-3791.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_1-3792.root
mv TTToHadronic_powheg_0003_07.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau_hadd/ 
