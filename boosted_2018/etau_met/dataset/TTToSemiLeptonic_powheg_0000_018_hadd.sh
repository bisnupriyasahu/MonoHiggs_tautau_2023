#!/bin/sh
source /cvmfs/cms.cern.ch/cmsset_default.sh 
cd /cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5/
eval export CMSSW_RELEASE_BASE="/cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5";
export PATH="/cvmfs/cms.cern.ch/share/overrides/bin:/nfs_scratch/jmadhusu/CMSSW_12_3_5/bin/slc7_amd64_gcc10:/nfs_scratch/jmadhusu/CMSSW_12_3_5/external/slc7_amd64_gcc10/bin:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5/bin/slc7_amd64_gcc10:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5/external/slc7_amd64_gcc10/bin:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/external/llvm/12.0.1-98ba1be77003441f04b47ab03db13dc0/bin:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/external/gcc/10.3.0-84898dea653199466402e67d73657f10/bin:/cvmfs/cms.cern.ch/common:/cvmfs/cms.cern.ch/common:/usr/local/bin/smb:/usr/local/bin/raid:/usr/lib64/qt-3.3/bin:/usr/local/etc:/usr/local/bin/hadoop:/usr/local/bin/firstboot:/usr/local/bin/defaultcls:/usr/condabin:/usr/local/bin/cephdir:/usr/local/bin/afs:/usr/local/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/opt/puppetlabs/bin:/afs/hep.wisc.edu/home/ms/bin";
cd ${_CONDOR_SCRATCH_DIR}


hadd TTToSemiLeptonic_powheg_0000_018.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0000/Ntuple_mc_3-597.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0000/Ntuple_mc_3-598.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0000/Ntuple_mc_3-599.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0000/Ntuple_mc_3-6.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0000/Ntuple_mc_3-60.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0000/Ntuple_mc_3-600.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0000/Ntuple_mc_3-601.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0000/Ntuple_mc_3-602.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0000/Ntuple_mc_3-603.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0000/Ntuple_mc_3-604.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0000/Ntuple_mc_3-605.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0000/Ntuple_mc_3-606.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0000/Ntuple_mc_3-607.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0000/Ntuple_mc_3-608.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0000/Ntuple_mc_3-609.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0000/Ntuple_mc_3-61.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0000/Ntuple_mc_3-610.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0000/Ntuple_mc_3-611.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0000/Ntuple_mc_3-612.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0000/Ntuple_mc_3-613.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0000/Ntuple_mc_3-614.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0000/Ntuple_mc_3-615.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0000/Ntuple_mc_3-616.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0000/Ntuple_mc_3-617.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0000/Ntuple_mc_3-618.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0000/Ntuple_mc_3-619.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0000/Ntuple_mc_3-62.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0000/Ntuple_mc_3-620.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0000/Ntuple_mc_3-621.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0000/Ntuple_mc_3-622.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0000/Ntuple_mc_3-623.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0000/Ntuple_mc_3-624.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0000/Ntuple_mc_3-625.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0000/Ntuple_mc_3-626.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0000/Ntuple_mc_3-627.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0000/Ntuple_mc_3-628.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0000/Ntuple_mc_3-629.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0000/Ntuple_mc_3-63.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0000/Ntuple_mc_3-630.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0000/Ntuple_mc_3-631.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0000/Ntuple_mc_3-632.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0000/Ntuple_mc_3-633.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0000/Ntuple_mc_3-634.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0000/Ntuple_mc_3-635.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0000/Ntuple_mc_3-636.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0000/Ntuple_mc_3-637.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0000/Ntuple_mc_3-638.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0000/Ntuple_mc_3-639.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0000/Ntuple_mc_3-64.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0000/Ntuple_mc_3-640.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0000/Ntuple_mc_3-641.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0000/Ntuple_mc_3-642.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0000/Ntuple_mc_3-643.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0000/Ntuple_mc_3-644.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0000/Ntuple_mc_3-645.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0000/Ntuple_mc_3-646.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0000/Ntuple_mc_3-647.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0000/Ntuple_mc_3-648.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0000/Ntuple_mc_3-649.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0000/Ntuple_mc_3-65.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0000/Ntuple_mc_3-650.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0000/Ntuple_mc_3-651.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0000/Ntuple_mc_3-652.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0000/Ntuple_mc_3-653.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0000/Ntuple_mc_3-654.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0000/Ntuple_mc_3-655.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0000/Ntuple_mc_3-656.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0000/Ntuple_mc_3-657.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0000/Ntuple_mc_3-658.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0000/Ntuple_mc_3-659.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0000/Ntuple_mc_3-66.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0000/Ntuple_mc_3-660.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0000/Ntuple_mc_3-661.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0000/Ntuple_mc_3-662.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0000/Ntuple_mc_3-663.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0000/Ntuple_mc_3-664.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0000/Ntuple_mc_3-665.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0000/Ntuple_mc_3-666.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0000/Ntuple_mc_3-667.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0000/Ntuple_mc_3-668.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0000/Ntuple_mc_3-669.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0000/Ntuple_mc_3-67.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0000/Ntuple_mc_3-670.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0000/Ntuple_mc_3-671.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0000/Ntuple_mc_3-672.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0000/Ntuple_mc_3-673.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0000/Ntuple_mc_3-674.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0000/Ntuple_mc_3-675.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0000/Ntuple_mc_3-676.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0000/Ntuple_mc_3-677.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0000/Ntuple_mc_3-678.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0000/Ntuple_mc_3-679.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0000/Ntuple_mc_3-68.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0000/Ntuple_mc_3-680.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0000/Ntuple_mc_3-681.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0000/Ntuple_mc_3-682.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0000/Ntuple_mc_3-683.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0000/Ntuple_mc_3-684.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0000/Ntuple_mc_3-685.root
mv TTToSemiLeptonic_powheg_0000_018.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau_hadd/ 
