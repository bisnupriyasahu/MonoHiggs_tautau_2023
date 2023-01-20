#!/bin/sh
source /cvmfs/cms.cern.ch/cmsset_default.sh 
cd /cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5/
eval export CMSSW_RELEASE_BASE="/cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5";
export PATH="/cvmfs/cms.cern.ch/share/overrides/bin:/nfs_scratch/jmadhusu/CMSSW_12_3_5/bin/slc7_amd64_gcc10:/nfs_scratch/jmadhusu/CMSSW_12_3_5/external/slc7_amd64_gcc10/bin:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5/bin/slc7_amd64_gcc10:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5/external/slc7_amd64_gcc10/bin:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/external/llvm/12.0.1-98ba1be77003441f04b47ab03db13dc0/bin:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/external/gcc/10.3.0-84898dea653199466402e67d73657f10/bin:/cvmfs/cms.cern.ch/common:/cvmfs/cms.cern.ch/common:/usr/local/bin/smb:/usr/local/bin/raid:/usr/lib64/qt-3.3/bin:/usr/local/etc:/usr/local/bin/hadoop:/usr/local/bin/firstboot:/usr/local/bin/defaultcls:/usr/condabin:/usr/local/bin/cephdir:/usr/local/bin/afs:/usr/local/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/opt/puppetlabs/bin:/afs/hep.wisc.edu/home/ms/bin";
cd ${_CONDOR_SCRATCH_DIR}


hadd GluGluHToTauTau_0000_06.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/GluGluHToTauTau_0000/Ntuple_mc_1-635.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/GluGluHToTauTau_0000/Ntuple_mc_1-636.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/GluGluHToTauTau_0000/Ntuple_mc_1-637.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/GluGluHToTauTau_0000/Ntuple_mc_1-638.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/GluGluHToTauTau_0000/Ntuple_mc_1-639.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/GluGluHToTauTau_0000/Ntuple_mc_1-64.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/GluGluHToTauTau_0000/Ntuple_mc_1-640.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/GluGluHToTauTau_0000/Ntuple_mc_1-641.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/GluGluHToTauTau_0000/Ntuple_mc_1-642.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/GluGluHToTauTau_0000/Ntuple_mc_1-643.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/GluGluHToTauTau_0000/Ntuple_mc_1-644.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/GluGluHToTauTau_0000/Ntuple_mc_1-645.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/GluGluHToTauTau_0000/Ntuple_mc_1-646.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/GluGluHToTauTau_0000/Ntuple_mc_1-647.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/GluGluHToTauTau_0000/Ntuple_mc_1-648.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/GluGluHToTauTau_0000/Ntuple_mc_1-649.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/GluGluHToTauTau_0000/Ntuple_mc_1-65.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/GluGluHToTauTau_0000/Ntuple_mc_1-650.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/GluGluHToTauTau_0000/Ntuple_mc_1-651.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/GluGluHToTauTau_0000/Ntuple_mc_1-652.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/GluGluHToTauTau_0000/Ntuple_mc_1-653.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/GluGluHToTauTau_0000/Ntuple_mc_1-654.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/GluGluHToTauTau_0000/Ntuple_mc_1-655.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/GluGluHToTauTau_0000/Ntuple_mc_1-656.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/GluGluHToTauTau_0000/Ntuple_mc_1-657.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/GluGluHToTauTau_0000/Ntuple_mc_1-658.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/GluGluHToTauTau_0000/Ntuple_mc_1-659.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/GluGluHToTauTau_0000/Ntuple_mc_1-66.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/GluGluHToTauTau_0000/Ntuple_mc_1-660.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/GluGluHToTauTau_0000/Ntuple_mc_1-661.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/GluGluHToTauTau_0000/Ntuple_mc_1-662.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/GluGluHToTauTau_0000/Ntuple_mc_1-663.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/GluGluHToTauTau_0000/Ntuple_mc_1-664.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/GluGluHToTauTau_0000/Ntuple_mc_1-665.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/GluGluHToTauTau_0000/Ntuple_mc_1-666.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/GluGluHToTauTau_0000/Ntuple_mc_1-667.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/GluGluHToTauTau_0000/Ntuple_mc_1-668.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/GluGluHToTauTau_0000/Ntuple_mc_1-669.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/GluGluHToTauTau_0000/Ntuple_mc_1-67.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/GluGluHToTauTau_0000/Ntuple_mc_1-670.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/GluGluHToTauTau_0000/Ntuple_mc_1-671.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/GluGluHToTauTau_0000/Ntuple_mc_1-672.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/GluGluHToTauTau_0000/Ntuple_mc_1-673.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/GluGluHToTauTau_0000/Ntuple_mc_1-674.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/GluGluHToTauTau_0000/Ntuple_mc_1-675.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/GluGluHToTauTau_0000/Ntuple_mc_1-676.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/GluGluHToTauTau_0000/Ntuple_mc_1-677.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/GluGluHToTauTau_0000/Ntuple_mc_1-678.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/GluGluHToTauTau_0000/Ntuple_mc_1-679.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/GluGluHToTauTau_0000/Ntuple_mc_1-68.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/GluGluHToTauTau_0000/Ntuple_mc_1-680.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/GluGluHToTauTau_0000/Ntuple_mc_1-681.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/GluGluHToTauTau_0000/Ntuple_mc_1-682.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/GluGluHToTauTau_0000/Ntuple_mc_1-683.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/GluGluHToTauTau_0000/Ntuple_mc_1-684.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/GluGluHToTauTau_0000/Ntuple_mc_1-685.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/GluGluHToTauTau_0000/Ntuple_mc_1-686.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/GluGluHToTauTau_0000/Ntuple_mc_1-687.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/GluGluHToTauTau_0000/Ntuple_mc_1-688.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/GluGluHToTauTau_0000/Ntuple_mc_1-689.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/GluGluHToTauTau_0000/Ntuple_mc_1-69.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/GluGluHToTauTau_0000/Ntuple_mc_1-690.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/GluGluHToTauTau_0000/Ntuple_mc_1-691.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/GluGluHToTauTau_0000/Ntuple_mc_1-692.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/GluGluHToTauTau_0000/Ntuple_mc_1-693.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/GluGluHToTauTau_0000/Ntuple_mc_1-694.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/GluGluHToTauTau_0000/Ntuple_mc_1-695.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/GluGluHToTauTau_0000/Ntuple_mc_1-696.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/GluGluHToTauTau_0000/Ntuple_mc_1-697.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/GluGluHToTauTau_0000/Ntuple_mc_1-698.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/GluGluHToTauTau_0000/Ntuple_mc_1-699.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/GluGluHToTauTau_0000/Ntuple_mc_1-7.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/GluGluHToTauTau_0000/Ntuple_mc_1-70.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/GluGluHToTauTau_0000/Ntuple_mc_1-700.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/GluGluHToTauTau_0000/Ntuple_mc_1-701.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/GluGluHToTauTau_0000/Ntuple_mc_1-702.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/GluGluHToTauTau_0000/Ntuple_mc_1-703.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/GluGluHToTauTau_0000/Ntuple_mc_1-704.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/GluGluHToTauTau_0000/Ntuple_mc_1-705.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/GluGluHToTauTau_0000/Ntuple_mc_1-706.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/GluGluHToTauTau_0000/Ntuple_mc_1-707.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/GluGluHToTauTau_0000/Ntuple_mc_1-708.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/GluGluHToTauTau_0000/Ntuple_mc_1-709.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/GluGluHToTauTau_0000/Ntuple_mc_1-71.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/GluGluHToTauTau_0000/Ntuple_mc_1-710.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/GluGluHToTauTau_0000/Ntuple_mc_1-711.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/GluGluHToTauTau_0000/Ntuple_mc_1-712.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/GluGluHToTauTau_0000/Ntuple_mc_1-713.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/GluGluHToTauTau_0000/Ntuple_mc_1-714.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/GluGluHToTauTau_0000/Ntuple_mc_1-715.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/GluGluHToTauTau_0000/Ntuple_mc_1-716.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/GluGluHToTauTau_0000/Ntuple_mc_1-717.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/GluGluHToTauTau_0000/Ntuple_mc_1-718.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/GluGluHToTauTau_0000/Ntuple_mc_1-719.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/GluGluHToTauTau_0000/Ntuple_mc_1-72.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/GluGluHToTauTau_0000/Ntuple_mc_1-720.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/GluGluHToTauTau_0000/Ntuple_mc_1-721.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/GluGluHToTauTau_0000/Ntuple_mc_1-722.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/GluGluHToTauTau_0000/Ntuple_mc_1-723.root
mv GluGluHToTauTau_0000_06.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau_hadd/ 
