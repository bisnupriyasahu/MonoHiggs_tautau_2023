#!/bin/sh
source /cvmfs/cms.cern.ch/cmsset_default.sh 
cd /cvmfs/cms.cern.ch/slc7_amd64_gcc630/cms/cmssw/CMSSW_9_4_13/
eval export CMSSW_RELEASE_BASE="/cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5";
export PATH="/cvmfs/cms.cern.ch/share/overrides/bin:/nfs_scratch/jmadhusu/CMSSW_12_3_5/bin/slc7_amd64_gcc10:/nfs_scratch/jmadhusu/CMSSW_12_3_5/external/slc7_amd64_gcc10/bin:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5/bin/slc7_amd64_gcc10:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5/external/slc7_amd64_gcc10/bin:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/external/llvm/12.0.1-98ba1be77003441f04b47ab03db13dc0/bin:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/external/gcc/10.3.0-84898dea653199466402e67d73657f10/bin:/cvmfs/cms.cern.ch/common:/cvmfs/cms.cern.ch/common:/usr/local/bin/smb:/usr/local/bin/raid:/usr/lib64/qt-3.3/bin:/usr/local/etc:/usr/local/bin/hadoop:/usr/local/bin/firstboot:/usr/local/bin/defaultcls:/usr/condabin:/usr/local/bin/cephdir:/usr/local/bin/afs:/usr/local/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/opt/puppetlabs/bin:/afs/hep.wisc.edu/home/ms/bin";
cd ${_CONDOR_SCRATCH_DIR}


hadd blinded_MET_EraF_0003_00.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraF_0003/Ntuple_data2017_MET_EraF_3000.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraF_0003/Ntuple_data2017_MET_EraF_3001.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraF_0003/Ntuple_data2017_MET_EraF_3002.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraF_0003/Ntuple_data2017_MET_EraF_3003.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraF_0003/Ntuple_data2017_MET_EraF_3004.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraF_0003/Ntuple_data2017_MET_EraF_3005.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraF_0003/Ntuple_data2017_MET_EraF_3006.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraF_0003/Ntuple_data2017_MET_EraF_3007.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraF_0003/Ntuple_data2017_MET_EraF_3008.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraF_0003/Ntuple_data2017_MET_EraF_3009.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraF_0003/Ntuple_data2017_MET_EraF_3010.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraF_0003/Ntuple_data2017_MET_EraF_3011.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraF_0003/Ntuple_data2017_MET_EraF_3012.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraF_0003/Ntuple_data2017_MET_EraF_3013.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraF_0003/Ntuple_data2017_MET_EraF_3014.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraF_0003/Ntuple_data2017_MET_EraF_3015.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraF_0003/Ntuple_data2017_MET_EraF_3016.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraF_0003/Ntuple_data2017_MET_EraF_3017.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraF_0003/Ntuple_data2017_MET_EraF_3018.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraF_0003/Ntuple_data2017_MET_EraF_3019.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraF_0003/Ntuple_data2017_MET_EraF_3020.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraF_0003/Ntuple_data2017_MET_EraF_3021.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraF_0003/Ntuple_data2017_MET_EraF_3022.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraF_0003/Ntuple_data2017_MET_EraF_3023.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraF_0003/Ntuple_data2017_MET_EraF_3024.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraF_0003/Ntuple_data2017_MET_EraF_3025.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraF_0003/Ntuple_data2017_MET_EraF_3026.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraF_0003/Ntuple_data2017_MET_EraF_3027.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraF_0003/Ntuple_data2017_MET_EraF_3028.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraF_0003/Ntuple_data2017_MET_EraF_3029.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraF_0003/Ntuple_data2017_MET_EraF_3030.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraF_0003/Ntuple_data2017_MET_EraF_3031.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraF_0003/Ntuple_data2017_MET_EraF_3032.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraF_0003/Ntuple_data2017_MET_EraF_3033.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraF_0003/Ntuple_data2017_MET_EraF_3034.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraF_0003/Ntuple_data2017_MET_EraF_3035.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraF_0003/Ntuple_data2017_MET_EraF_3036.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraF_0003/Ntuple_data2017_MET_EraF_3037.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraF_0003/Ntuple_data2017_MET_EraF_3038.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraF_0003/Ntuple_data2017_MET_EraF_3039.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraF_0003/Ntuple_data2017_MET_EraF_3040.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraF_0003/Ntuple_data2017_MET_EraF_3041.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraF_0003/Ntuple_data2017_MET_EraF_3042.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraF_0003/Ntuple_data2017_MET_EraF_3043.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraF_0003/Ntuple_data2017_MET_EraF_3044.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraF_0003/Ntuple_data2017_MET_EraF_3045.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraF_0003/Ntuple_data2017_MET_EraF_3046.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraF_0003/Ntuple_data2017_MET_EraF_3047.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraF_0003/Ntuple_data2017_MET_EraF_3048.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraF_0003/Ntuple_data2017_MET_EraF_3049.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraF_0003/Ntuple_data2017_MET_EraF_3050.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraF_0003/Ntuple_data2017_MET_EraF_3051.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraF_0003/Ntuple_data2017_MET_EraF_3052.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraF_0003/Ntuple_data2017_MET_EraF_3053.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraF_0003/Ntuple_data2017_MET_EraF_3054.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraF_0003/Ntuple_data2017_MET_EraF_3055.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraF_0003/Ntuple_data2017_MET_EraF_3056.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraF_0003/Ntuple_data2017_MET_EraF_3057.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraF_0003/Ntuple_data2017_MET_EraF_3058.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraF_0003/Ntuple_data2017_MET_EraF_3059.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraF_0003/Ntuple_data2017_MET_EraF_3060.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraF_0003/Ntuple_data2017_MET_EraF_3061.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraF_0003/Ntuple_data2017_MET_EraF_3062.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraF_0003/Ntuple_data2017_MET_EraF_3063.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraF_0003/Ntuple_data2017_MET_EraF_3064.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraF_0003/Ntuple_data2017_MET_EraF_3065.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraF_0003/Ntuple_data2017_MET_EraF_3066.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraF_0003/Ntuple_data2017_MET_EraF_3067.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraF_0003/Ntuple_data2017_MET_EraF_3068.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraF_0003/Ntuple_data2017_MET_EraF_3069.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraF_0003/Ntuple_data2017_MET_EraF_3070.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraF_0003/Ntuple_data2017_MET_EraF_3071.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraF_0003/Ntuple_data2017_MET_EraF_3072.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraF_0003/Ntuple_data2017_MET_EraF_3073.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraF_0003/Ntuple_data2017_MET_EraF_3074.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraF_0003/Ntuple_data2017_MET_EraF_3075.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraF_0003/Ntuple_data2017_MET_EraF_3076.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraF_0003/Ntuple_data2017_MET_EraF_3077.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraF_0003/Ntuple_data2017_MET_EraF_3078.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraF_0003/Ntuple_data2017_MET_EraF_3079.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraF_0003/Ntuple_data2017_MET_EraF_3080.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraF_0003/Ntuple_data2017_MET_EraF_3081.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraF_0003/Ntuple_data2017_MET_EraF_3082.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraF_0003/Ntuple_data2017_MET_EraF_3083.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraF_0003/Ntuple_data2017_MET_EraF_3084.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraF_0003/Ntuple_data2017_MET_EraF_3085.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraF_0003/Ntuple_data2017_MET_EraF_3086.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraF_0003/Ntuple_data2017_MET_EraF_3087.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraF_0003/Ntuple_data2017_MET_EraF_3088.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraF_0003/Ntuple_data2017_MET_EraF_3089.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraF_0003/Ntuple_data2017_MET_EraF_3090.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraF_0003/Ntuple_data2017_MET_EraF_3091.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraF_0003/Ntuple_data2017_MET_EraF_3092.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraF_0003/Ntuple_data2017_MET_EraF_3093.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraF_0003/Ntuple_data2017_MET_EraF_3094.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraF_0003/Ntuple_data2017_MET_EraF_3095.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraF_0003/Ntuple_data2017_MET_EraF_3096.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraF_0003/Ntuple_data2017_MET_EraF_3097.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraF_0003/Ntuple_data2017_MET_EraF_3098.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraF_0003/Ntuple_data2017_MET_EraF_3099.root
xrdcp blinded_MET_EraF_0003_00.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau_hadd/ 
rm blinded_MET_EraF_0003_00.root 