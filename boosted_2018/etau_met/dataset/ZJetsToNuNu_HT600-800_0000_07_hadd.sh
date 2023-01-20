#!/bin/sh
source /cvmfs/cms.cern.ch/cmsset_default.sh 
cd /cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5/
eval export CMSSW_RELEASE_BASE="/cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5";
export PATH="/cvmfs/cms.cern.ch/share/overrides/bin:/nfs_scratch/jmadhusu/CMSSW_12_3_5/bin/slc7_amd64_gcc10:/nfs_scratch/jmadhusu/CMSSW_12_3_5/external/slc7_amd64_gcc10/bin:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5/bin/slc7_amd64_gcc10:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5/external/slc7_amd64_gcc10/bin:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/external/llvm/12.0.1-98ba1be77003441f04b47ab03db13dc0/bin:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/external/gcc/10.3.0-84898dea653199466402e67d73657f10/bin:/cvmfs/cms.cern.ch/common:/cvmfs/cms.cern.ch/common:/usr/local/bin/smb:/usr/local/bin/raid:/usr/lib64/qt-3.3/bin:/usr/local/etc:/usr/local/bin/hadoop:/usr/local/bin/firstboot:/usr/local/bin/defaultcls:/usr/condabin:/usr/local/bin/cephdir:/usr/local/bin/afs:/usr/local/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/opt/puppetlabs/bin:/afs/hep.wisc.edu/home/ms/bin";
cd ${_CONDOR_SCRATCH_DIR}


hadd ZJetsToNuNu_HT600-800_0000_07.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-724.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-725.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-726.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-727.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-728.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-729.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-73.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-730.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-731.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-732.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-733.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-734.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-735.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-736.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-737.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-738.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-739.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-74.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-740.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-741.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-742.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-743.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-744.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-745.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-746.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-747.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-748.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-749.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-75.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-750.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-751.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-752.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-753.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-754.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-755.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-756.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-757.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-758.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-759.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-76.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-760.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-761.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-762.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-763.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-764.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-765.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-766.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-767.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-768.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-769.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-77.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-770.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-771.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-772.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-773.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-774.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-775.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-776.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-777.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-778.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-779.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-78.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-780.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-781.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-782.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-783.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-784.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-785.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-786.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-787.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-788.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-789.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-79.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-790.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-791.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-792.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-793.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-794.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-795.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-796.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-797.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-798.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-799.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-8.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-80.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-800.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-801.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-802.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-803.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-804.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-805.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-806.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-807.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-808.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-809.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-81.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-810.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-811.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-812.root
mv ZJetsToNuNu_HT600-800_0000_07.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau_hadd/ 
