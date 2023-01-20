#!/bin/sh
source /cvmfs/cms.cern.ch/cmsset_default.sh 
cd /cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5/
eval export CMSSW_RELEASE_BASE="/cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5";
export PATH="/cvmfs/cms.cern.ch/share/overrides/bin:/nfs_scratch/jmadhusu/CMSSW_12_3_5/bin/slc7_amd64_gcc10:/nfs_scratch/jmadhusu/CMSSW_12_3_5/external/slc7_amd64_gcc10/bin:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5/bin/slc7_amd64_gcc10:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5/external/slc7_amd64_gcc10/bin:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/external/llvm/12.0.1-98ba1be77003441f04b47ab03db13dc0/bin:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/external/gcc/10.3.0-84898dea653199466402e67d73657f10/bin:/cvmfs/cms.cern.ch/common:/cvmfs/cms.cern.ch/common:/usr/local/bin/smb:/usr/local/bin/raid:/usr/lib64/qt-3.3/bin:/usr/local/etc:/usr/local/bin/hadoop:/usr/local/bin/firstboot:/usr/local/bin/defaultcls:/usr/condabin:/usr/local/bin/cephdir:/usr/local/bin/afs:/usr/local/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/opt/puppetlabs/bin:/afs/hep.wisc.edu/home/ms/bin";
cd ${_CONDOR_SCRATCH_DIR}


hadd WJetsToLNu_Incl_0000_026.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_507.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_508.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_509.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_51.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_510.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_511.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_512.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_513.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_514.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_515.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_516.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_517.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_518.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_519.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_52.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_520.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_521.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_522.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_523.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_524.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_525.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_526.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_527.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_528.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_529.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_53.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_530.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_531.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_532.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_533.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_535.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_536.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_537.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_538.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_539.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_54.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_540.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_541.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_542.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_543.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_544.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_545.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_546.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_547.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_548.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_549.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_55.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_550.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_551.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_552.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_56.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_57.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_58.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_59.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_6.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_60.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_61.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_62.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_63.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_64.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_65.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_66.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_67.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_68.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_69.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_7.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_70.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_71.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_72.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_73.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_74.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_75.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_76.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_77.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_78.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_79.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_8.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_80.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_81.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_82.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_83.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_84.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_85.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_86.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_87.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_88.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_89.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_9.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_90.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_91.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_92.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_93.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_94.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_95.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_96.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_97.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_98.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_99.root
mv WJetsToLNu_Incl_0000_026.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau_hadd/ 
