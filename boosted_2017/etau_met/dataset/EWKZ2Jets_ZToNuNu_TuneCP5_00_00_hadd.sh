#!/bin/sh
source /cvmfs/cms.cern.ch/cmsset_default.sh 
cd /cvmfs/cms.cern.ch/slc7_amd64_gcc630/cms/cmssw/CMSSW_9_4_13/
eval export CMSSW_RELEASE_BASE="/cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5";
export PATH="/cvmfs/cms.cern.ch/share/overrides/bin:/nfs_scratch/jmadhusu/CMSSW_12_3_5/bin/slc7_amd64_gcc10:/nfs_scratch/jmadhusu/CMSSW_12_3_5/external/slc7_amd64_gcc10/bin:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5/bin/slc7_amd64_gcc10:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5/external/slc7_amd64_gcc10/bin:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/external/llvm/12.0.1-98ba1be77003441f04b47ab03db13dc0/bin:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/external/gcc/10.3.0-84898dea653199466402e67d73657f10/bin:/cvmfs/cms.cern.ch/common:/cvmfs/cms.cern.ch/common:/usr/local/bin/smb:/usr/local/bin/raid:/usr/lib64/qt-3.3/bin:/usr/local/etc:/usr/local/bin/hadoop:/usr/local/bin/firstboot:/usr/local/bin/defaultcls:/usr/condabin:/usr/local/bin/cephdir:/usr/local/bin/afs:/usr/local/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/opt/puppetlabs/bin:/afs/hep.wisc.edu/home/ms/bin";
cd ${_CONDOR_SCRATCH_DIR}


hadd EWKZ2Jets_ZToNuNu_TuneCP5_00_00.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/EWKZ2Jets_ZToNuNu_TuneCP5_00/EWKZ2Jets_ZToNuNu_TuneCP5_00_1.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/EWKZ2Jets_ZToNuNu_TuneCP5_00/EWKZ2Jets_ZToNuNu_TuneCP5_00_10.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/EWKZ2Jets_ZToNuNu_TuneCP5_00/EWKZ2Jets_ZToNuNu_TuneCP5_00_11.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/EWKZ2Jets_ZToNuNu_TuneCP5_00/EWKZ2Jets_ZToNuNu_TuneCP5_00_12.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/EWKZ2Jets_ZToNuNu_TuneCP5_00/EWKZ2Jets_ZToNuNu_TuneCP5_00_13.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/EWKZ2Jets_ZToNuNu_TuneCP5_00/EWKZ2Jets_ZToNuNu_TuneCP5_00_14.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/EWKZ2Jets_ZToNuNu_TuneCP5_00/EWKZ2Jets_ZToNuNu_TuneCP5_00_15.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/EWKZ2Jets_ZToNuNu_TuneCP5_00/EWKZ2Jets_ZToNuNu_TuneCP5_00_16.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/EWKZ2Jets_ZToNuNu_TuneCP5_00/EWKZ2Jets_ZToNuNu_TuneCP5_00_17.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/EWKZ2Jets_ZToNuNu_TuneCP5_00/EWKZ2Jets_ZToNuNu_TuneCP5_00_18.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/EWKZ2Jets_ZToNuNu_TuneCP5_00/EWKZ2Jets_ZToNuNu_TuneCP5_00_19.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/EWKZ2Jets_ZToNuNu_TuneCP5_00/EWKZ2Jets_ZToNuNu_TuneCP5_00_2.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/EWKZ2Jets_ZToNuNu_TuneCP5_00/EWKZ2Jets_ZToNuNu_TuneCP5_00_20.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/EWKZ2Jets_ZToNuNu_TuneCP5_00/EWKZ2Jets_ZToNuNu_TuneCP5_00_21.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/EWKZ2Jets_ZToNuNu_TuneCP5_00/EWKZ2Jets_ZToNuNu_TuneCP5_00_22.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/EWKZ2Jets_ZToNuNu_TuneCP5_00/EWKZ2Jets_ZToNuNu_TuneCP5_00_23.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/EWKZ2Jets_ZToNuNu_TuneCP5_00/EWKZ2Jets_ZToNuNu_TuneCP5_00_24.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/EWKZ2Jets_ZToNuNu_TuneCP5_00/EWKZ2Jets_ZToNuNu_TuneCP5_00_25.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/EWKZ2Jets_ZToNuNu_TuneCP5_00/EWKZ2Jets_ZToNuNu_TuneCP5_00_26.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/EWKZ2Jets_ZToNuNu_TuneCP5_00/EWKZ2Jets_ZToNuNu_TuneCP5_00_27.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/EWKZ2Jets_ZToNuNu_TuneCP5_00/EWKZ2Jets_ZToNuNu_TuneCP5_00_28.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/EWKZ2Jets_ZToNuNu_TuneCP5_00/EWKZ2Jets_ZToNuNu_TuneCP5_00_29.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/EWKZ2Jets_ZToNuNu_TuneCP5_00/EWKZ2Jets_ZToNuNu_TuneCP5_00_3.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/EWKZ2Jets_ZToNuNu_TuneCP5_00/EWKZ2Jets_ZToNuNu_TuneCP5_00_30.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/EWKZ2Jets_ZToNuNu_TuneCP5_00/EWKZ2Jets_ZToNuNu_TuneCP5_00_31.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/EWKZ2Jets_ZToNuNu_TuneCP5_00/EWKZ2Jets_ZToNuNu_TuneCP5_00_32.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/EWKZ2Jets_ZToNuNu_TuneCP5_00/EWKZ2Jets_ZToNuNu_TuneCP5_00_33.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/EWKZ2Jets_ZToNuNu_TuneCP5_00/EWKZ2Jets_ZToNuNu_TuneCP5_00_34.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/EWKZ2Jets_ZToNuNu_TuneCP5_00/EWKZ2Jets_ZToNuNu_TuneCP5_00_35.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/EWKZ2Jets_ZToNuNu_TuneCP5_00/EWKZ2Jets_ZToNuNu_TuneCP5_00_36.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/EWKZ2Jets_ZToNuNu_TuneCP5_00/EWKZ2Jets_ZToNuNu_TuneCP5_00_37.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/EWKZ2Jets_ZToNuNu_TuneCP5_00/EWKZ2Jets_ZToNuNu_TuneCP5_00_38.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/EWKZ2Jets_ZToNuNu_TuneCP5_00/EWKZ2Jets_ZToNuNu_TuneCP5_00_39.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/EWKZ2Jets_ZToNuNu_TuneCP5_00/EWKZ2Jets_ZToNuNu_TuneCP5_00_4.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/EWKZ2Jets_ZToNuNu_TuneCP5_00/EWKZ2Jets_ZToNuNu_TuneCP5_00_40.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/EWKZ2Jets_ZToNuNu_TuneCP5_00/EWKZ2Jets_ZToNuNu_TuneCP5_00_41.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/EWKZ2Jets_ZToNuNu_TuneCP5_00/EWKZ2Jets_ZToNuNu_TuneCP5_00_5.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/EWKZ2Jets_ZToNuNu_TuneCP5_00/EWKZ2Jets_ZToNuNu_TuneCP5_00_6.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/EWKZ2Jets_ZToNuNu_TuneCP5_00/EWKZ2Jets_ZToNuNu_TuneCP5_00_7.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/EWKZ2Jets_ZToNuNu_TuneCP5_00/EWKZ2Jets_ZToNuNu_TuneCP5_00_8.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/EWKZ2Jets_ZToNuNu_TuneCP5_00/EWKZ2Jets_ZToNuNu_TuneCP5_00_9.root
mv EWKZ2Jets_ZToNuNu_TuneCP5_00_00.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau_hadd/ 
