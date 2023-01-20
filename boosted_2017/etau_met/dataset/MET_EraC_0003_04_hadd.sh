#!/bin/sh
source /cvmfs/cms.cern.ch/cmsset_default.sh 
cd /cvmfs/cms.cern.ch/slc7_amd64_gcc630/cms/cmssw/CMSSW_9_4_13/
eval export CMSSW_RELEASE_BASE="/cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5";
export PATH="/cvmfs/cms.cern.ch/share/overrides/bin:/nfs_scratch/jmadhusu/CMSSW_12_3_5/bin/slc7_amd64_gcc10:/nfs_scratch/jmadhusu/CMSSW_12_3_5/external/slc7_amd64_gcc10/bin:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5/bin/slc7_amd64_gcc10:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5/external/slc7_amd64_gcc10/bin:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/external/llvm/12.0.1-98ba1be77003441f04b47ab03db13dc0/bin:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/external/gcc/10.3.0-84898dea653199466402e67d73657f10/bin:/cvmfs/cms.cern.ch/common:/cvmfs/cms.cern.ch/common:/usr/local/bin/smb:/usr/local/bin/raid:/usr/lib64/qt-3.3/bin:/usr/local/etc:/usr/local/bin/hadoop:/usr/local/bin/firstboot:/usr/local/bin/defaultcls:/usr/condabin:/usr/local/bin/cephdir:/usr/local/bin/afs:/usr/local/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/opt/puppetlabs/bin:/afs/hep.wisc.edu/home/ms/bin";
cd ${_CONDOR_SCRATCH_DIR}


hadd MET_EraC_0003_04.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraC_0003/Ntuple_data2017_MET_EraC_3397.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraC_0003/Ntuple_data2017_MET_EraC_3398.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraC_0003/Ntuple_data2017_MET_EraC_3399.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraC_0003/Ntuple_data2017_MET_EraC_3400.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraC_0003/Ntuple_data2017_MET_EraC_3401.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraC_0003/Ntuple_data2017_MET_EraC_3402.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraC_0003/Ntuple_data2017_MET_EraC_3403.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraC_0003/Ntuple_data2017_MET_EraC_3404.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraC_0003/Ntuple_data2017_MET_EraC_3405.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraC_0003/Ntuple_data2017_MET_EraC_3406.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraC_0003/Ntuple_data2017_MET_EraC_3407.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraC_0003/Ntuple_data2017_MET_EraC_3408.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraC_0003/Ntuple_data2017_MET_EraC_3409.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraC_0003/Ntuple_data2017_MET_EraC_3410.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraC_0003/Ntuple_data2017_MET_EraC_3411.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraC_0003/Ntuple_data2017_MET_EraC_3412.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraC_0003/Ntuple_data2017_MET_EraC_3413.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraC_0003/Ntuple_data2017_MET_EraC_3414.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraC_0003/Ntuple_data2017_MET_EraC_3415.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraC_0003/Ntuple_data2017_MET_EraC_3416.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraC_0003/Ntuple_data2017_MET_EraC_3417.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraC_0003/Ntuple_data2017_MET_EraC_3418.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraC_0003/Ntuple_data2017_MET_EraC_3419.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraC_0003/Ntuple_data2017_MET_EraC_3420.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraC_0003/Ntuple_data2017_MET_EraC_3421.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraC_0003/Ntuple_data2017_MET_EraC_3422.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraC_0003/Ntuple_data2017_MET_EraC_3423.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraC_0003/Ntuple_data2017_MET_EraC_3424.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraC_0003/Ntuple_data2017_MET_EraC_3425.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraC_0003/Ntuple_data2017_MET_EraC_3426.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraC_0003/Ntuple_data2017_MET_EraC_3427.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraC_0003/Ntuple_data2017_MET_EraC_3428.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraC_0003/Ntuple_data2017_MET_EraC_3429.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraC_0003/Ntuple_data2017_MET_EraC_3430.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraC_0003/Ntuple_data2017_MET_EraC_3431.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraC_0003/Ntuple_data2017_MET_EraC_3432.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraC_0003/Ntuple_data2017_MET_EraC_3433.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraC_0003/Ntuple_data2017_MET_EraC_3434.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraC_0003/Ntuple_data2017_MET_EraC_3435.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraC_0003/Ntuple_data2017_MET_EraC_3436.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraC_0003/Ntuple_data2017_MET_EraC_3437.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraC_0003/Ntuple_data2017_MET_EraC_3438.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraC_0003/Ntuple_data2017_MET_EraC_3439.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraC_0003/Ntuple_data2017_MET_EraC_3440.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraC_0003/Ntuple_data2017_MET_EraC_3441.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraC_0003/Ntuple_data2017_MET_EraC_3442.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraC_0003/Ntuple_data2017_MET_EraC_3443.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraC_0003/Ntuple_data2017_MET_EraC_3444.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraC_0003/Ntuple_data2017_MET_EraC_3445.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraC_0003/Ntuple_data2017_MET_EraC_3446.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraC_0003/Ntuple_data2017_MET_EraC_3447.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraC_0003/Ntuple_data2017_MET_EraC_3448.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraC_0003/Ntuple_data2017_MET_EraC_3449.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraC_0003/Ntuple_data2017_MET_EraC_3450.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraC_0003/Ntuple_data2017_MET_EraC_3451.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraC_0003/Ntuple_data2017_MET_EraC_3452.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraC_0003/Ntuple_data2017_MET_EraC_3453.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraC_0003/Ntuple_data2017_MET_EraC_3454.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraC_0003/Ntuple_data2017_MET_EraC_3455.root
mv MET_EraC_0003_04.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau_hadd/ 
