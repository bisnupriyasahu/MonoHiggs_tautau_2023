#!/bin/sh
source /cvmfs/cms.cern.ch/cmsset_default.sh 
cd /cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5/
eval export CMSSW_RELEASE_BASE="/cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5";
export PATH="/cvmfs/cms.cern.ch/share/overrides/bin:/nfs_scratch/jmadhusu/CMSSW_12_3_5/bin/slc7_amd64_gcc10:/nfs_scratch/jmadhusu/CMSSW_12_3_5/external/slc7_amd64_gcc10/bin:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5/bin/slc7_amd64_gcc10:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5/external/slc7_amd64_gcc10/bin:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/external/llvm/12.0.1-98ba1be77003441f04b47ab03db13dc0/bin:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/external/gcc/10.3.0-84898dea653199466402e67d73657f10/bin:/cvmfs/cms.cern.ch/common:/cvmfs/cms.cern.ch/common:/usr/local/bin/smb:/usr/local/bin/raid:/usr/lib64/qt-3.3/bin:/usr/local/etc:/usr/local/bin/hadoop:/usr/local/bin/firstboot:/usr/local/bin/defaultcls:/usr/condabin:/usr/local/bin/cephdir:/usr/local/bin/afs:/usr/local/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/opt/puppetlabs/bin:/afs/hep.wisc.edu/home/ms/bin";
cd ${_CONDOR_SCRATCH_DIR}


hadd WJetsToLNu_0000_01.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_0000/Ntuple_mc_1-19.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_0000/Ntuple_mc_1-190.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_0000/Ntuple_mc_1-191.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_0000/Ntuple_mc_1-192.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_0000/Ntuple_mc_1-193.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_0000/Ntuple_mc_1-194.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_0000/Ntuple_mc_1-195.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_0000/Ntuple_mc_1-196.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_0000/Ntuple_mc_1-197.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_0000/Ntuple_mc_1-198.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_0000/Ntuple_mc_1-199.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_0000/Ntuple_mc_1-2.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_0000/Ntuple_mc_1-20.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_0000/Ntuple_mc_1-200.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_0000/Ntuple_mc_1-201.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_0000/Ntuple_mc_1-202.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_0000/Ntuple_mc_1-203.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_0000/Ntuple_mc_1-204.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_0000/Ntuple_mc_1-205.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_0000/Ntuple_mc_1-206.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_0000/Ntuple_mc_1-207.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_0000/Ntuple_mc_1-208.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_0000/Ntuple_mc_1-209.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_0000/Ntuple_mc_1-21.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_0000/Ntuple_mc_1-210.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_0000/Ntuple_mc_1-211.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_0000/Ntuple_mc_1-212.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_0000/Ntuple_mc_1-213.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_0000/Ntuple_mc_1-214.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_0000/Ntuple_mc_1-215.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_0000/Ntuple_mc_1-216.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_0000/Ntuple_mc_1-217.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_0000/Ntuple_mc_1-218.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_0000/Ntuple_mc_1-219.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_0000/Ntuple_mc_1-22.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_0000/Ntuple_mc_1-220.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_0000/Ntuple_mc_1-221.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_0000/Ntuple_mc_1-222.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_0000/Ntuple_mc_1-223.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_0000/Ntuple_mc_1-224.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_0000/Ntuple_mc_1-225.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_0000/Ntuple_mc_1-226.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_0000/Ntuple_mc_1-227.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_0000/Ntuple_mc_1-228.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_0000/Ntuple_mc_1-229.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_0000/Ntuple_mc_1-23.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_0000/Ntuple_mc_1-230.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_0000/Ntuple_mc_1-231.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_0000/Ntuple_mc_1-232.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_0000/Ntuple_mc_1-233.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_0000/Ntuple_mc_1-234.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_0000/Ntuple_mc_1-235.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_0000/Ntuple_mc_1-236.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_0000/Ntuple_mc_1-237.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_0000/Ntuple_mc_1-24.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_0000/Ntuple_mc_1-25.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_0000/Ntuple_mc_1-26.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_0000/Ntuple_mc_1-27.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_0000/Ntuple_mc_1-28.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_0000/Ntuple_mc_1-29.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_0000/Ntuple_mc_1-3.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_0000/Ntuple_mc_1-30.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_0000/Ntuple_mc_1-31.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_0000/Ntuple_mc_1-32.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_0000/Ntuple_mc_1-33.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_0000/Ntuple_mc_1-34.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_0000/Ntuple_mc_1-35.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_0000/Ntuple_mc_1-36.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_0000/Ntuple_mc_1-37.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_0000/Ntuple_mc_1-38.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_0000/Ntuple_mc_1-39.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_0000/Ntuple_mc_1-4.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_0000/Ntuple_mc_1-40.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_0000/Ntuple_mc_1-41.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_0000/Ntuple_mc_1-42.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_0000/Ntuple_mc_1-43.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_0000/Ntuple_mc_1-44.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_0000/Ntuple_mc_1-45.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_0000/Ntuple_mc_1-46.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_0000/Ntuple_mc_1-47.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_0000/Ntuple_mc_1-48.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_0000/Ntuple_mc_1-49.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_0000/Ntuple_mc_1-5.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_0000/Ntuple_mc_1-50.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_0000/Ntuple_mc_1-51.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_0000/Ntuple_mc_1-52.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_0000/Ntuple_mc_1-53.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_0000/Ntuple_mc_1-54.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_0000/Ntuple_mc_1-55.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_0000/Ntuple_mc_1-56.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_0000/Ntuple_mc_1-57.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_0000/Ntuple_mc_1-58.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_0000/Ntuple_mc_1-59.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_0000/Ntuple_mc_1-6.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_0000/Ntuple_mc_1-60.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_0000/Ntuple_mc_1-61.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_0000/Ntuple_mc_1-62.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_0000/Ntuple_mc_1-63.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_0000/Ntuple_mc_1-64.root
mv WJetsToLNu_0000_01.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau_hadd/ 
