#!/bin/sh
source /cvmfs/cms.cern.ch/cmsset_default.sh 
cd /cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5/
eval export CMSSW_RELEASE_BASE="/cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5";
export PATH="/cvmfs/cms.cern.ch/share/overrides/bin:/nfs_scratch/jmadhusu/CMSSW_12_3_5/bin/slc7_amd64_gcc10:/nfs_scratch/jmadhusu/CMSSW_12_3_5/external/slc7_amd64_gcc10/bin:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5/bin/slc7_amd64_gcc10:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5/external/slc7_amd64_gcc10/bin:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/external/llvm/12.0.1-98ba1be77003441f04b47ab03db13dc0/bin:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/external/gcc/10.3.0-84898dea653199466402e67d73657f10/bin:/cvmfs/cms.cern.ch/common:/cvmfs/cms.cern.ch/common:/usr/local/bin/smb:/usr/local/bin/raid:/usr/lib64/qt-3.3/bin:/usr/local/etc:/usr/local/bin/hadoop:/usr/local/bin/firstboot:/usr/local/bin/defaultcls:/usr/condabin:/usr/local/bin/cephdir:/usr/local/bin/afs:/usr/local/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/opt/puppetlabs/bin:/afs/hep.wisc.edu/home/ms/bin";
cd ${_CONDOR_SCRATCH_DIR}


hadd DY1JetsToLL_0000_07.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0000/Ntuple_mc_3-71.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0000/Ntuple_mc_3-710.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0000/Ntuple_mc_3-711.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0000/Ntuple_mc_3-712.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0000/Ntuple_mc_3-713.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0000/Ntuple_mc_3-714.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0000/Ntuple_mc_3-715.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0000/Ntuple_mc_3-716.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0000/Ntuple_mc_3-717.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0000/Ntuple_mc_3-718.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0000/Ntuple_mc_3-719.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0000/Ntuple_mc_3-72.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0000/Ntuple_mc_3-720.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0000/Ntuple_mc_3-721.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0000/Ntuple_mc_3-722.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0000/Ntuple_mc_3-723.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0000/Ntuple_mc_3-724.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0000/Ntuple_mc_3-725.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0000/Ntuple_mc_3-726.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0000/Ntuple_mc_3-727.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0000/Ntuple_mc_3-728.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0000/Ntuple_mc_3-729.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0000/Ntuple_mc_3-73.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0000/Ntuple_mc_3-730.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0000/Ntuple_mc_3-731.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0000/Ntuple_mc_3-732.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0000/Ntuple_mc_3-733.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0000/Ntuple_mc_3-734.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0000/Ntuple_mc_3-735.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0000/Ntuple_mc_3-736.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0000/Ntuple_mc_3-737.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0000/Ntuple_mc_3-738.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0000/Ntuple_mc_3-739.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0000/Ntuple_mc_3-74.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0000/Ntuple_mc_3-740.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0000/Ntuple_mc_3-741.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0000/Ntuple_mc_3-742.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0000/Ntuple_mc_3-743.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0000/Ntuple_mc_3-744.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0000/Ntuple_mc_3-745.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0000/Ntuple_mc_3-746.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0000/Ntuple_mc_3-747.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0000/Ntuple_mc_3-748.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0000/Ntuple_mc_3-749.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0000/Ntuple_mc_3-75.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0000/Ntuple_mc_3-750.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0000/Ntuple_mc_3-751.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0000/Ntuple_mc_3-752.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0000/Ntuple_mc_3-753.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0000/Ntuple_mc_3-754.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0000/Ntuple_mc_3-755.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0000/Ntuple_mc_3-756.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0000/Ntuple_mc_3-757.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0000/Ntuple_mc_3-758.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0000/Ntuple_mc_3-759.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0000/Ntuple_mc_3-76.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0000/Ntuple_mc_3-760.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0000/Ntuple_mc_3-761.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0000/Ntuple_mc_3-762.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0000/Ntuple_mc_3-763.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0000/Ntuple_mc_3-764.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0000/Ntuple_mc_3-765.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0000/Ntuple_mc_3-766.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0000/Ntuple_mc_3-767.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0000/Ntuple_mc_3-768.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0000/Ntuple_mc_3-769.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0000/Ntuple_mc_3-77.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0000/Ntuple_mc_3-770.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0000/Ntuple_mc_3-771.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0000/Ntuple_mc_3-772.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0000/Ntuple_mc_3-773.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0000/Ntuple_mc_3-774.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0000/Ntuple_mc_3-775.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0000/Ntuple_mc_3-776.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0000/Ntuple_mc_3-777.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0000/Ntuple_mc_3-778.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0000/Ntuple_mc_3-779.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0000/Ntuple_mc_3-78.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0000/Ntuple_mc_3-780.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0000/Ntuple_mc_3-781.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0000/Ntuple_mc_3-782.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0000/Ntuple_mc_3-783.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0000/Ntuple_mc_3-784.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0000/Ntuple_mc_3-785.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0000/Ntuple_mc_3-786.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0000/Ntuple_mc_3-787.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0000/Ntuple_mc_3-788.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0000/Ntuple_mc_3-789.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0000/Ntuple_mc_3-79.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0000/Ntuple_mc_3-790.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0000/Ntuple_mc_3-791.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0000/Ntuple_mc_3-792.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0000/Ntuple_mc_3-793.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0000/Ntuple_mc_3-794.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0000/Ntuple_mc_3-795.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0000/Ntuple_mc_3-796.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0000/Ntuple_mc_3-797.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0000/Ntuple_mc_3-798.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0000/Ntuple_mc_3-799.root
mv DY1JetsToLL_0000_07.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau_hadd/ 
