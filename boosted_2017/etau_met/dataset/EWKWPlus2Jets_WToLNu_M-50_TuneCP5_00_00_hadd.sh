#!/bin/sh
source /cvmfs/cms.cern.ch/cmsset_default.sh 
cd /cvmfs/cms.cern.ch/slc7_amd64_gcc630/cms/cmssw/CMSSW_9_4_13/
eval export CMSSW_RELEASE_BASE="/cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5";
export PATH="/cvmfs/cms.cern.ch/share/overrides/bin:/nfs_scratch/jmadhusu/CMSSW_12_3_5/bin/slc7_amd64_gcc10:/nfs_scratch/jmadhusu/CMSSW_12_3_5/external/slc7_amd64_gcc10/bin:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5/bin/slc7_amd64_gcc10:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5/external/slc7_amd64_gcc10/bin:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/external/llvm/12.0.1-98ba1be77003441f04b47ab03db13dc0/bin:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/external/gcc/10.3.0-84898dea653199466402e67d73657f10/bin:/cvmfs/cms.cern.ch/common:/cvmfs/cms.cern.ch/common:/usr/local/bin/smb:/usr/local/bin/raid:/usr/lib64/qt-3.3/bin:/usr/local/etc:/usr/local/bin/hadoop:/usr/local/bin/firstboot:/usr/local/bin/defaultcls:/usr/condabin:/usr/local/bin/cephdir:/usr/local/bin/afs:/usr/local/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/opt/puppetlabs/bin:/afs/hep.wisc.edu/home/ms/bin";
cd ${_CONDOR_SCRATCH_DIR}


hadd EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00_00.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00_1.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00_10.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00_11.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00_12.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00_13.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00_14.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00_15.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00_16.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00_17.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00_18.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00_19.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00_2.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00_20.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00_21.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00_22.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00_23.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00_24.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00_25.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00_26.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00_28.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00_29.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00_3.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00_30.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00_31.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00_32.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00_33.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00_34.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00_35.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00_36.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00_37.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00_38.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00_39.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00_4.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00_40.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00_41.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00_42.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00_43.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00_44.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00_45.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00_46.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00_47.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00_48.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00_49.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00_5.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00_50.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00_51.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00_52.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00_53.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00_54.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00_55.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00_56.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00_57.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00_58.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00_59.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00_6.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00_60.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00_61.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00_62.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00_63.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00_64.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00_65.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00_66.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00_67.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00_68.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00_69.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00_7.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00_70.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00_71.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00_72.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00_73.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00_74.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00_75.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00_76.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00_77.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00_78.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00_79.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00_8.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00_80.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00_81.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00_82.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00_83.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00_84.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00_85.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00_86.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00_87.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00_88.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00_89.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00_9.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00_90.root
mv EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00_00.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau_hadd/ 
