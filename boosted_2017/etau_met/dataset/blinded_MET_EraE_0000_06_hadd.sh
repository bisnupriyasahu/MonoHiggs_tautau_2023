#!/bin/sh
source /cvmfs/cms.cern.ch/cmsset_default.sh 
cd /cvmfs/cms.cern.ch/slc7_amd64_gcc630/cms/cmssw/CMSSW_9_4_13/
eval export CMSSW_RELEASE_BASE="/cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5";
export PATH="/cvmfs/cms.cern.ch/share/overrides/bin:/nfs_scratch/jmadhusu/CMSSW_12_3_5/bin/slc7_amd64_gcc10:/nfs_scratch/jmadhusu/CMSSW_12_3_5/external/slc7_amd64_gcc10/bin:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5/bin/slc7_amd64_gcc10:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5/external/slc7_amd64_gcc10/bin:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/external/llvm/12.0.1-98ba1be77003441f04b47ab03db13dc0/bin:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/external/gcc/10.3.0-84898dea653199466402e67d73657f10/bin:/cvmfs/cms.cern.ch/common:/cvmfs/cms.cern.ch/common:/usr/local/bin/smb:/usr/local/bin/raid:/usr/lib64/qt-3.3/bin:/usr/local/etc:/usr/local/bin/hadoop:/usr/local/bin/firstboot:/usr/local/bin/defaultcls:/usr/condabin:/usr/local/bin/cephdir:/usr/local/bin/afs:/usr/local/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/opt/puppetlabs/bin:/afs/hep.wisc.edu/home/ms/bin";
cd ${_CONDOR_SCRATCH_DIR}


hadd blinded_MET_EraE_0000_06.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0000/Ntuple_data2017_MET_EraE_635.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0000/Ntuple_data2017_MET_EraE_636.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0000/Ntuple_data2017_MET_EraE_637.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0000/Ntuple_data2017_MET_EraE_638.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0000/Ntuple_data2017_MET_EraE_639.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0000/Ntuple_data2017_MET_EraE_64.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0000/Ntuple_data2017_MET_EraE_640.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0000/Ntuple_data2017_MET_EraE_641.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0000/Ntuple_data2017_MET_EraE_642.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0000/Ntuple_data2017_MET_EraE_643.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0000/Ntuple_data2017_MET_EraE_644.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0000/Ntuple_data2017_MET_EraE_645.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0000/Ntuple_data2017_MET_EraE_646.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0000/Ntuple_data2017_MET_EraE_647.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0000/Ntuple_data2017_MET_EraE_648.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0000/Ntuple_data2017_MET_EraE_649.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0000/Ntuple_data2017_MET_EraE_65.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0000/Ntuple_data2017_MET_EraE_650.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0000/Ntuple_data2017_MET_EraE_651.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0000/Ntuple_data2017_MET_EraE_652.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0000/Ntuple_data2017_MET_EraE_653.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0000/Ntuple_data2017_MET_EraE_654.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0000/Ntuple_data2017_MET_EraE_655.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0000/Ntuple_data2017_MET_EraE_656.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0000/Ntuple_data2017_MET_EraE_657.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0000/Ntuple_data2017_MET_EraE_658.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0000/Ntuple_data2017_MET_EraE_659.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0000/Ntuple_data2017_MET_EraE_66.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0000/Ntuple_data2017_MET_EraE_660.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0000/Ntuple_data2017_MET_EraE_661.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0000/Ntuple_data2017_MET_EraE_662.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0000/Ntuple_data2017_MET_EraE_663.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0000/Ntuple_data2017_MET_EraE_664.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0000/Ntuple_data2017_MET_EraE_665.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0000/Ntuple_data2017_MET_EraE_666.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0000/Ntuple_data2017_MET_EraE_667.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0000/Ntuple_data2017_MET_EraE_668.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0000/Ntuple_data2017_MET_EraE_669.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0000/Ntuple_data2017_MET_EraE_67.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0000/Ntuple_data2017_MET_EraE_670.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0000/Ntuple_data2017_MET_EraE_671.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0000/Ntuple_data2017_MET_EraE_672.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0000/Ntuple_data2017_MET_EraE_673.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0000/Ntuple_data2017_MET_EraE_674.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0000/Ntuple_data2017_MET_EraE_675.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0000/Ntuple_data2017_MET_EraE_676.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0000/Ntuple_data2017_MET_EraE_677.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0000/Ntuple_data2017_MET_EraE_678.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0000/Ntuple_data2017_MET_EraE_679.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0000/Ntuple_data2017_MET_EraE_68.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0000/Ntuple_data2017_MET_EraE_680.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0000/Ntuple_data2017_MET_EraE_681.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0000/Ntuple_data2017_MET_EraE_682.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0000/Ntuple_data2017_MET_EraE_683.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0000/Ntuple_data2017_MET_EraE_684.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0000/Ntuple_data2017_MET_EraE_685.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0000/Ntuple_data2017_MET_EraE_686.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0000/Ntuple_data2017_MET_EraE_687.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0000/Ntuple_data2017_MET_EraE_688.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0000/Ntuple_data2017_MET_EraE_689.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0000/Ntuple_data2017_MET_EraE_69.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0000/Ntuple_data2017_MET_EraE_690.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0000/Ntuple_data2017_MET_EraE_691.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0000/Ntuple_data2017_MET_EraE_692.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0000/Ntuple_data2017_MET_EraE_693.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0000/Ntuple_data2017_MET_EraE_694.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0000/Ntuple_data2017_MET_EraE_695.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0000/Ntuple_data2017_MET_EraE_696.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0000/Ntuple_data2017_MET_EraE_697.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0000/Ntuple_data2017_MET_EraE_698.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0000/Ntuple_data2017_MET_EraE_699.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0000/Ntuple_data2017_MET_EraE_7.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0000/Ntuple_data2017_MET_EraE_70.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0000/Ntuple_data2017_MET_EraE_700.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0000/Ntuple_data2017_MET_EraE_701.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0000/Ntuple_data2017_MET_EraE_702.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0000/Ntuple_data2017_MET_EraE_703.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0000/Ntuple_data2017_MET_EraE_704.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0000/Ntuple_data2017_MET_EraE_705.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0000/Ntuple_data2017_MET_EraE_706.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0000/Ntuple_data2017_MET_EraE_707.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0000/Ntuple_data2017_MET_EraE_708.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0000/Ntuple_data2017_MET_EraE_709.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0000/Ntuple_data2017_MET_EraE_71.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0000/Ntuple_data2017_MET_EraE_710.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0000/Ntuple_data2017_MET_EraE_711.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0000/Ntuple_data2017_MET_EraE_712.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0000/Ntuple_data2017_MET_EraE_713.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0000/Ntuple_data2017_MET_EraE_714.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0000/Ntuple_data2017_MET_EraE_715.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0000/Ntuple_data2017_MET_EraE_716.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0000/Ntuple_data2017_MET_EraE_717.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0000/Ntuple_data2017_MET_EraE_718.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0000/Ntuple_data2017_MET_EraE_719.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0000/Ntuple_data2017_MET_EraE_72.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0000/Ntuple_data2017_MET_EraE_720.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0000/Ntuple_data2017_MET_EraE_721.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0000/Ntuple_data2017_MET_EraE_722.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0000/Ntuple_data2017_MET_EraE_723.root
xrdcp blinded_MET_EraE_0000_06.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau_hadd/ 
rm blinded_MET_EraE_0000_06.root 