#!/bin/sh
source /cvmfs/cms.cern.ch/cmsset_default.sh 
cd /cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5/
eval export CMSSW_RELEASE_BASE="/cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5";
export PATH="/cvmfs/cms.cern.ch/share/overrides/bin:/nfs_scratch/jmadhusu/CMSSW_12_3_5/bin/slc7_amd64_gcc10:/nfs_scratch/jmadhusu/CMSSW_12_3_5/external/slc7_amd64_gcc10/bin:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5/bin/slc7_amd64_gcc10:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5/external/slc7_amd64_gcc10/bin:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/external/llvm/12.0.1-98ba1be77003441f04b47ab03db13dc0/bin:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/external/gcc/10.3.0-84898dea653199466402e67d73657f10/bin:/cvmfs/cms.cern.ch/common:/cvmfs/cms.cern.ch/common:/usr/local/bin/smb:/usr/local/bin/raid:/usr/lib64/qt-3.3/bin:/usr/local/etc:/usr/local/bin/hadoop:/usr/local/bin/firstboot:/usr/local/bin/defaultcls:/usr/condabin:/usr/local/bin/cephdir:/usr/local/bin/afs:/usr/local/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/opt/puppetlabs/bin:/afs/hep.wisc.edu/home/ms/bin";
cd ${_CONDOR_SCRATCH_DIR}


hadd WJetsToLNu_Incl_0000_020.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_248.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_249.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_25.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_250.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_251.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_252.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_253.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_254.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_255.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_256.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_257.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_258.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_259.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_26.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_260.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_261.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_262.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_263.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_264.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_265.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_266.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_267.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_268.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_269.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_27.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_270.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_271.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_272.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_273.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_274.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_275.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_276.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_277.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_278.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_279.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_28.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_280.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_281.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_282.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_283.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_284.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_285.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_286.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_287.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_288.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_289.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_29.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_290.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_291.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_292.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_293.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_294.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_295.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_296.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_297.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_298.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_299.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_3-1.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_3-10.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_3-100.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_3-101.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_3-102.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_3-103.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_3-104.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_3-105.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_3-106.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_3-107.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_3-108.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_3-109.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_3-11.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_3-110.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_3-111.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_3-112.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_3-113.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_3-114.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_3-115.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_3-116.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_3-117.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_3-118.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_3-119.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_3-12.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_3-120.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_3-121.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_3-122.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_3-123.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_3-124.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_3-125.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_3-126.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_3-127.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_3-128.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_3-129.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_3-13.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_3-130.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_3-131.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_3-132.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_3-133.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_3-134.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_3-135.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/WJetsToLNu_Incl_0000/Ntuple_mc_3-136.root
mv WJetsToLNu_Incl_0000_020.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau_hadd/ 
