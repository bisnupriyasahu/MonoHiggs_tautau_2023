#!/bin/sh
source /cvmfs/cms.cern.ch/cmsset_default.sh 
cd /cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5/
eval export CMSSW_RELEASE_BASE="/cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5";
export PATH="/cvmfs/cms.cern.ch/share/overrides/bin:/nfs_scratch/jmadhusu/CMSSW_12_3_5/bin/slc7_amd64_gcc10:/nfs_scratch/jmadhusu/CMSSW_12_3_5/external/slc7_amd64_gcc10/bin:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5/bin/slc7_amd64_gcc10:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5/external/slc7_amd64_gcc10/bin:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/external/llvm/12.0.1-98ba1be77003441f04b47ab03db13dc0/bin:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/external/gcc/10.3.0-84898dea653199466402e67d73657f10/bin:/cvmfs/cms.cern.ch/common:/cvmfs/cms.cern.ch/common:/usr/local/bin/smb:/usr/local/bin/raid:/usr/lib64/qt-3.3/bin:/usr/local/etc:/usr/local/bin/hadoop:/usr/local/bin/firstboot:/usr/local/bin/defaultcls:/usr/condabin:/usr/local/bin/cephdir:/usr/local/bin/afs:/usr/local/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/opt/puppetlabs/bin:/afs/hep.wisc.edu/home/ms/bin";
cd ${_CONDOR_SCRATCH_DIR}


hadd TTToHadronic_powheg_0003_011.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_2-3090.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_2-3091.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_2-3092.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_2-3093.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_2-3094.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_2-3095.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_2-3096.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_2-3097.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_2-3098.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_2-3099.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_2-3100.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_2-3101.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_2-3102.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_2-3103.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_2-3104.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_2-3105.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_2-3106.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_2-3107.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_2-3108.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_2-3109.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_2-3110.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_2-3111.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_2-3112.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_2-3113.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_2-3114.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_2-3115.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_2-3116.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_2-3117.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_2-3118.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_2-3119.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_2-3120.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_2-3121.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_2-3122.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_2-3123.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_2-3124.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_2-3125.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_2-3126.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_2-3127.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_2-3128.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_2-3129.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_2-3130.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_2-3131.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_2-3132.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_2-3133.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_2-3134.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_2-3135.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_2-3136.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_2-3137.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_2-3138.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_2-3139.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_2-3140.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_2-3141.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_2-3142.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_2-3143.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_2-3144.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_2-3145.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_2-3146.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_2-3147.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_2-3148.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_2-3149.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_2-3150.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_2-3151.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_2-3152.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_2-3153.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_2-3154.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_2-3155.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_2-3156.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_2-3157.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_2-3158.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_2-3159.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_2-3160.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_2-3161.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_2-3162.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_2-3163.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_2-3164.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_2-3165.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_2-3166.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_2-3167.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_2-3168.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_2-3169.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_2-3170.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_2-3171.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_2-3172.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_2-3173.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_2-3174.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_2-3175.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_2-3176.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_2-3177.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_2-3178.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_2-3179.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_2-3180.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_2-3181.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_2-3182.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_2-3183.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_2-3184.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_2-3185.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_2-3186.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_2-3187.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToHadronic_powheg_0003/Ntuple_mc_2-3188.root
mv TTToHadronic_powheg_0003_011.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau_hadd/ 
