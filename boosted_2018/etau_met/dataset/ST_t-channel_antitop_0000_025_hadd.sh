#!/bin/sh
source /cvmfs/cms.cern.ch/cmsset_default.sh 
cd /cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5/
eval export CMSSW_RELEASE_BASE="/cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5";
export PATH="/cvmfs/cms.cern.ch/share/overrides/bin:/nfs_scratch/jmadhusu/CMSSW_12_3_5/bin/slc7_amd64_gcc10:/nfs_scratch/jmadhusu/CMSSW_12_3_5/external/slc7_amd64_gcc10/bin:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5/bin/slc7_amd64_gcc10:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5/external/slc7_amd64_gcc10/bin:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/external/llvm/12.0.1-98ba1be77003441f04b47ab03db13dc0/bin:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/external/gcc/10.3.0-84898dea653199466402e67d73657f10/bin:/cvmfs/cms.cern.ch/common:/cvmfs/cms.cern.ch/common:/usr/local/bin/smb:/usr/local/bin/raid:/usr/lib64/qt-3.3/bin:/usr/local/etc:/usr/local/bin/hadoop:/usr/local/bin/firstboot:/usr/local/bin/defaultcls:/usr/condabin:/usr/local/bin/cephdir:/usr/local/bin/afs:/usr/local/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/opt/puppetlabs/bin:/afs/hep.wisc.edu/home/ms/bin";
cd ${_CONDOR_SCRATCH_DIR}


hadd ST_t-channel_antitop_0000_025.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_390.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_391.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_392.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_393.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_394.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_395.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_396.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_397.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_398.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_399.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_4.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_40.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_400.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_401.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_402.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_403.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_404.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_405.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_406.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_407.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_408.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_409.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_41.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_410.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_411.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_412.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_413.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_414.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_415.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_416.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_417.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_418.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_419.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_42.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_420.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_421.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_422.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_423.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_424.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_425.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_426.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_427.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_428.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_429.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_43.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_430.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_431.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_432.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_433.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_434.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_435.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_436.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_437.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_438.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_439.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_44.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_440.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_441.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_442.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_443.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_444.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_445.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_446.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_447.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_448.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_449.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_45.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_450.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_451.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_452.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_453.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_454.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_455.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_456.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_457.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_458.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_459.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_46.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_460.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_461.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_462.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_463.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_464.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_465.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_466.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_467.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_468.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_469.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_47.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_470.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_471.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_472.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_473.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_474.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_475.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_476.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_477.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_478.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_479.root
mv ST_t-channel_antitop_0000_025.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau_hadd/ 
