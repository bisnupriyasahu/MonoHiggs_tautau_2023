#!/bin/sh
source /cvmfs/cms.cern.ch/cmsset_default.sh 
cd /cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5/
eval export CMSSW_RELEASE_BASE="/cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5";
export PATH="/cvmfs/cms.cern.ch/share/overrides/bin:/nfs_scratch/jmadhusu/CMSSW_12_3_5/bin/slc7_amd64_gcc10:/nfs_scratch/jmadhusu/CMSSW_12_3_5/external/slc7_amd64_gcc10/bin:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5/bin/slc7_amd64_gcc10:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5/external/slc7_amd64_gcc10/bin:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/external/llvm/12.0.1-98ba1be77003441f04b47ab03db13dc0/bin:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/external/gcc/10.3.0-84898dea653199466402e67d73657f10/bin:/cvmfs/cms.cern.ch/common:/cvmfs/cms.cern.ch/common:/usr/local/bin/smb:/usr/local/bin/raid:/usr/lib64/qt-3.3/bin:/usr/local/etc:/usr/local/bin/hadoop:/usr/local/bin/firstboot:/usr/local/bin/defaultcls:/usr/condabin:/usr/local/bin/cephdir:/usr/local/bin/afs:/usr/local/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/opt/puppetlabs/bin:/afs/hep.wisc.edu/home/ms/bin";
cd ${_CONDOR_SCRATCH_DIR}


hadd ST_t-channel_antitop_0000_028.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_665.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_666.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_667.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_668.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_669.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_67.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_670.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_671.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_672.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_673.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_674.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_675.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_676.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_677.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_678.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_679.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_68.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_680.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_681.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_682.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_683.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_684.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_685.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_686.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_687.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_688.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_689.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_69.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_690.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_691.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_692.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_693.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_694.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_695.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_696.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_697.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_698.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_699.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_7.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_70.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_700.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_701.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_702.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_703.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_704.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_705.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_706.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_707.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_708.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_709.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_71.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_710.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_711.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_712.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_713.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_714.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_715.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_716.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_717.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_718.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_719.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_72.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_720.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_721.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_722.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_723.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_724.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_725.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_726.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_727.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_728.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_729.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_73.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_730.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_731.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_732.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_733.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_734.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_735.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_736.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_737.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_738.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_739.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_74.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_740.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_741.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_742.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_743.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_744.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_745.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_746.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_747.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_748.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_749.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_75.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_750.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_751.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_752.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0000/Ntuple_mc_753.root
mv ST_t-channel_antitop_0000_028.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau_hadd/ 
