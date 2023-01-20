#!/bin/sh
source /cvmfs/cms.cern.ch/cmsset_default.sh 
cd /cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5/
eval export CMSSW_RELEASE_BASE="/cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5";
export PATH="/cvmfs/cms.cern.ch/share/overrides/bin:/nfs_scratch/jmadhusu/CMSSW_12_3_5/bin/slc7_amd64_gcc10:/nfs_scratch/jmadhusu/CMSSW_12_3_5/external/slc7_amd64_gcc10/bin:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5/bin/slc7_amd64_gcc10:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5/external/slc7_amd64_gcc10/bin:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/external/llvm/12.0.1-98ba1be77003441f04b47ab03db13dc0/bin:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/external/gcc/10.3.0-84898dea653199466402e67d73657f10/bin:/cvmfs/cms.cern.ch/common:/cvmfs/cms.cern.ch/common:/usr/local/bin/smb:/usr/local/bin/raid:/usr/lib64/qt-3.3/bin:/usr/local/etc:/usr/local/bin/hadoop:/usr/local/bin/firstboot:/usr/local/bin/defaultcls:/usr/condabin:/usr/local/bin/cephdir:/usr/local/bin/afs:/usr/local/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/opt/puppetlabs/bin:/afs/hep.wisc.edu/home/ms/bin";
cd ${_CONDOR_SCRATCH_DIR}


hadd ZJetsToNuNu_HT600-800_0000_05.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-546.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-547.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-548.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-549.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-55.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-550.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-551.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-552.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-553.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-554.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-555.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-556.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-557.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-558.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-559.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-56.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-560.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-561.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-562.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-563.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-564.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-565.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-566.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-567.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-568.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-569.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-57.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-570.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-571.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-572.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-573.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-574.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-575.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-576.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-577.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-578.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-579.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-58.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-580.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-581.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-582.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-583.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-584.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-585.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-586.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-587.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-588.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-589.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-59.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-590.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-591.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-592.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-593.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-594.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-595.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-596.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-597.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-598.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-599.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-6.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-60.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-600.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-601.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-602.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-603.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-604.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-605.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-606.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-607.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-608.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-609.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-61.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-610.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-611.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-612.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-613.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-614.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-615.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-616.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-617.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-618.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-619.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-62.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-620.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-621.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-622.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-623.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-624.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-625.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-626.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-627.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-628.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-629.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-63.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-630.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-631.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-632.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-633.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0000/Ntuple_mc_1-634.root
mv ZJetsToNuNu_HT600-800_0000_05.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau_hadd/ 
