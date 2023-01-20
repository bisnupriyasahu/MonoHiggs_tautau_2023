#!/bin/sh
source /cvmfs/cms.cern.ch/cmsset_default.sh 
cd /cvmfs/cms.cern.ch/slc7_amd64_gcc630/cms/cmssw/CMSSW_9_4_13/
eval export CMSSW_RELEASE_BASE="/cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5";
export PATH="/cvmfs/cms.cern.ch/share/overrides/bin:/nfs_scratch/jmadhusu/CMSSW_12_3_5/bin/slc7_amd64_gcc10:/nfs_scratch/jmadhusu/CMSSW_12_3_5/external/slc7_amd64_gcc10/bin:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5/bin/slc7_amd64_gcc10:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5/external/slc7_amd64_gcc10/bin:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/external/llvm/12.0.1-98ba1be77003441f04b47ab03db13dc0/bin:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/external/gcc/10.3.0-84898dea653199466402e67d73657f10/bin:/cvmfs/cms.cern.ch/common:/cvmfs/cms.cern.ch/common:/usr/local/bin/smb:/usr/local/bin/raid:/usr/lib64/qt-3.3/bin:/usr/local/etc:/usr/local/bin/hadoop:/usr/local/bin/firstboot:/usr/local/bin/defaultcls:/usr/condabin:/usr/local/bin/cephdir:/usr/local/bin/afs:/usr/local/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/opt/puppetlabs/bin:/afs/hep.wisc.edu/home/ms/bin";
cd ${_CONDOR_SCRATCH_DIR}


hadd W1JetsToLNu_TuneCP5_00_06.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/W1JetsToLNu_TuneCP5_00/W1JetsToLNu_TuneCP5_00_635.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/W1JetsToLNu_TuneCP5_00/W1JetsToLNu_TuneCP5_00_636.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/W1JetsToLNu_TuneCP5_00/W1JetsToLNu_TuneCP5_00_637.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/W1JetsToLNu_TuneCP5_00/W1JetsToLNu_TuneCP5_00_638.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/W1JetsToLNu_TuneCP5_00/W1JetsToLNu_TuneCP5_00_639.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/W1JetsToLNu_TuneCP5_00/W1JetsToLNu_TuneCP5_00_64.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/W1JetsToLNu_TuneCP5_00/W1JetsToLNu_TuneCP5_00_640.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/W1JetsToLNu_TuneCP5_00/W1JetsToLNu_TuneCP5_00_641.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/W1JetsToLNu_TuneCP5_00/W1JetsToLNu_TuneCP5_00_642.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/W1JetsToLNu_TuneCP5_00/W1JetsToLNu_TuneCP5_00_643.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/W1JetsToLNu_TuneCP5_00/W1JetsToLNu_TuneCP5_00_644.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/W1JetsToLNu_TuneCP5_00/W1JetsToLNu_TuneCP5_00_645.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/W1JetsToLNu_TuneCP5_00/W1JetsToLNu_TuneCP5_00_646.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/W1JetsToLNu_TuneCP5_00/W1JetsToLNu_TuneCP5_00_647.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/W1JetsToLNu_TuneCP5_00/W1JetsToLNu_TuneCP5_00_648.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/W1JetsToLNu_TuneCP5_00/W1JetsToLNu_TuneCP5_00_649.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/W1JetsToLNu_TuneCP5_00/W1JetsToLNu_TuneCP5_00_65.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/W1JetsToLNu_TuneCP5_00/W1JetsToLNu_TuneCP5_00_650.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/W1JetsToLNu_TuneCP5_00/W1JetsToLNu_TuneCP5_00_651.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/W1JetsToLNu_TuneCP5_00/W1JetsToLNu_TuneCP5_00_652.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/W1JetsToLNu_TuneCP5_00/W1JetsToLNu_TuneCP5_00_653.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/W1JetsToLNu_TuneCP5_00/W1JetsToLNu_TuneCP5_00_654.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/W1JetsToLNu_TuneCP5_00/W1JetsToLNu_TuneCP5_00_655.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/W1JetsToLNu_TuneCP5_00/W1JetsToLNu_TuneCP5_00_656.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/W1JetsToLNu_TuneCP5_00/W1JetsToLNu_TuneCP5_00_657.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/W1JetsToLNu_TuneCP5_00/W1JetsToLNu_TuneCP5_00_658.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/W1JetsToLNu_TuneCP5_00/W1JetsToLNu_TuneCP5_00_659.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/W1JetsToLNu_TuneCP5_00/W1JetsToLNu_TuneCP5_00_66.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/W1JetsToLNu_TuneCP5_00/W1JetsToLNu_TuneCP5_00_660.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/W1JetsToLNu_TuneCP5_00/W1JetsToLNu_TuneCP5_00_661.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/W1JetsToLNu_TuneCP5_00/W1JetsToLNu_TuneCP5_00_662.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/W1JetsToLNu_TuneCP5_00/W1JetsToLNu_TuneCP5_00_663.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/W1JetsToLNu_TuneCP5_00/W1JetsToLNu_TuneCP5_00_664.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/W1JetsToLNu_TuneCP5_00/W1JetsToLNu_TuneCP5_00_665.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/W1JetsToLNu_TuneCP5_00/W1JetsToLNu_TuneCP5_00_666.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/W1JetsToLNu_TuneCP5_00/W1JetsToLNu_TuneCP5_00_667.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/W1JetsToLNu_TuneCP5_00/W1JetsToLNu_TuneCP5_00_668.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/W1JetsToLNu_TuneCP5_00/W1JetsToLNu_TuneCP5_00_669.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/W1JetsToLNu_TuneCP5_00/W1JetsToLNu_TuneCP5_00_67.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/W1JetsToLNu_TuneCP5_00/W1JetsToLNu_TuneCP5_00_670.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/W1JetsToLNu_TuneCP5_00/W1JetsToLNu_TuneCP5_00_671.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/W1JetsToLNu_TuneCP5_00/W1JetsToLNu_TuneCP5_00_672.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/W1JetsToLNu_TuneCP5_00/W1JetsToLNu_TuneCP5_00_673.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/W1JetsToLNu_TuneCP5_00/W1JetsToLNu_TuneCP5_00_674.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/W1JetsToLNu_TuneCP5_00/W1JetsToLNu_TuneCP5_00_675.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/W1JetsToLNu_TuneCP5_00/W1JetsToLNu_TuneCP5_00_676.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/W1JetsToLNu_TuneCP5_00/W1JetsToLNu_TuneCP5_00_677.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/W1JetsToLNu_TuneCP5_00/W1JetsToLNu_TuneCP5_00_678.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/W1JetsToLNu_TuneCP5_00/W1JetsToLNu_TuneCP5_00_679.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/W1JetsToLNu_TuneCP5_00/W1JetsToLNu_TuneCP5_00_68.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/W1JetsToLNu_TuneCP5_00/W1JetsToLNu_TuneCP5_00_680.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/W1JetsToLNu_TuneCP5_00/W1JetsToLNu_TuneCP5_00_681.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/W1JetsToLNu_TuneCP5_00/W1JetsToLNu_TuneCP5_00_682.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/W1JetsToLNu_TuneCP5_00/W1JetsToLNu_TuneCP5_00_683.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/W1JetsToLNu_TuneCP5_00/W1JetsToLNu_TuneCP5_00_684.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/W1JetsToLNu_TuneCP5_00/W1JetsToLNu_TuneCP5_00_685.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/W1JetsToLNu_TuneCP5_00/W1JetsToLNu_TuneCP5_00_686.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/W1JetsToLNu_TuneCP5_00/W1JetsToLNu_TuneCP5_00_687.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/W1JetsToLNu_TuneCP5_00/W1JetsToLNu_TuneCP5_00_688.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/W1JetsToLNu_TuneCP5_00/W1JetsToLNu_TuneCP5_00_689.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/W1JetsToLNu_TuneCP5_00/W1JetsToLNu_TuneCP5_00_69.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/W1JetsToLNu_TuneCP5_00/W1JetsToLNu_TuneCP5_00_690.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/W1JetsToLNu_TuneCP5_00/W1JetsToLNu_TuneCP5_00_691.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/W1JetsToLNu_TuneCP5_00/W1JetsToLNu_TuneCP5_00_692.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/W1JetsToLNu_TuneCP5_00/W1JetsToLNu_TuneCP5_00_693.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/W1JetsToLNu_TuneCP5_00/W1JetsToLNu_TuneCP5_00_694.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/W1JetsToLNu_TuneCP5_00/W1JetsToLNu_TuneCP5_00_695.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/W1JetsToLNu_TuneCP5_00/W1JetsToLNu_TuneCP5_00_696.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/W1JetsToLNu_TuneCP5_00/W1JetsToLNu_TuneCP5_00_697.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/W1JetsToLNu_TuneCP5_00/W1JetsToLNu_TuneCP5_00_698.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/W1JetsToLNu_TuneCP5_00/W1JetsToLNu_TuneCP5_00_699.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/W1JetsToLNu_TuneCP5_00/W1JetsToLNu_TuneCP5_00_7.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/W1JetsToLNu_TuneCP5_00/W1JetsToLNu_TuneCP5_00_70.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/W1JetsToLNu_TuneCP5_00/W1JetsToLNu_TuneCP5_00_700.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/W1JetsToLNu_TuneCP5_00/W1JetsToLNu_TuneCP5_00_701.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/W1JetsToLNu_TuneCP5_00/W1JetsToLNu_TuneCP5_00_702.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/W1JetsToLNu_TuneCP5_00/W1JetsToLNu_TuneCP5_00_703.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/W1JetsToLNu_TuneCP5_00/W1JetsToLNu_TuneCP5_00_704.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/W1JetsToLNu_TuneCP5_00/W1JetsToLNu_TuneCP5_00_705.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/W1JetsToLNu_TuneCP5_00/W1JetsToLNu_TuneCP5_00_706.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/W1JetsToLNu_TuneCP5_00/W1JetsToLNu_TuneCP5_00_707.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/W1JetsToLNu_TuneCP5_00/W1JetsToLNu_TuneCP5_00_708.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/W1JetsToLNu_TuneCP5_00/W1JetsToLNu_TuneCP5_00_709.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/W1JetsToLNu_TuneCP5_00/W1JetsToLNu_TuneCP5_00_71.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/W1JetsToLNu_TuneCP5_00/W1JetsToLNu_TuneCP5_00_710.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/W1JetsToLNu_TuneCP5_00/W1JetsToLNu_TuneCP5_00_711.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/W1JetsToLNu_TuneCP5_00/W1JetsToLNu_TuneCP5_00_712.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/W1JetsToLNu_TuneCP5_00/W1JetsToLNu_TuneCP5_00_713.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/W1JetsToLNu_TuneCP5_00/W1JetsToLNu_TuneCP5_00_714.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/W1JetsToLNu_TuneCP5_00/W1JetsToLNu_TuneCP5_00_715.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/W1JetsToLNu_TuneCP5_00/W1JetsToLNu_TuneCP5_00_716.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/W1JetsToLNu_TuneCP5_00/W1JetsToLNu_TuneCP5_00_717.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/W1JetsToLNu_TuneCP5_00/W1JetsToLNu_TuneCP5_00_718.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/W1JetsToLNu_TuneCP5_00/W1JetsToLNu_TuneCP5_00_719.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/W1JetsToLNu_TuneCP5_00/W1JetsToLNu_TuneCP5_00_72.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/W1JetsToLNu_TuneCP5_00/W1JetsToLNu_TuneCP5_00_720.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/W1JetsToLNu_TuneCP5_00/W1JetsToLNu_TuneCP5_00_721.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/W1JetsToLNu_TuneCP5_00/W1JetsToLNu_TuneCP5_00_722.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/W1JetsToLNu_TuneCP5_00/W1JetsToLNu_TuneCP5_00_723.root
mv W1JetsToLNu_TuneCP5_00_06.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau_hadd/ 
