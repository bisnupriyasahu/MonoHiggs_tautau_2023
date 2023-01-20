#!/bin/sh
source /cvmfs/cms.cern.ch/cmsset_default.sh 
cd /cvmfs/cms.cern.ch/slc7_amd64_gcc630/cms/cmssw/CMSSW_9_4_13/
eval export CMSSW_RELEASE_BASE="/cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5";
export PATH="/cvmfs/cms.cern.ch/share/overrides/bin:/nfs_scratch/jmadhusu/CMSSW_12_3_5/bin/slc7_amd64_gcc10:/nfs_scratch/jmadhusu/CMSSW_12_3_5/external/slc7_amd64_gcc10/bin:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5/bin/slc7_amd64_gcc10:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5/external/slc7_amd64_gcc10/bin:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/external/llvm/12.0.1-98ba1be77003441f04b47ab03db13dc0/bin:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/external/gcc/10.3.0-84898dea653199466402e67d73657f10/bin:/cvmfs/cms.cern.ch/common:/cvmfs/cms.cern.ch/common:/usr/local/bin/smb:/usr/local/bin/raid:/usr/lib64/qt-3.3/bin:/usr/local/etc:/usr/local/bin/hadoop:/usr/local/bin/firstboot:/usr/local/bin/defaultcls:/usr/condabin:/usr/local/bin/cephdir:/usr/local/bin/afs:/usr/local/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/opt/puppetlabs/bin:/afs/hep.wisc.edu/home/ms/bin";
cd ${_CONDOR_SCRATCH_DIR}


hadd MET_EraF_0002_05.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraF_0002/Ntuple_data2017_MET_EraF_2496.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraF_0002/Ntuple_data2017_MET_EraF_2497.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraF_0002/Ntuple_data2017_MET_EraF_2498.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraF_0002/Ntuple_data2017_MET_EraF_2499.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraF_0002/Ntuple_data2017_MET_EraF_2500.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraF_0002/Ntuple_data2017_MET_EraF_2501.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraF_0002/Ntuple_data2017_MET_EraF_2502.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraF_0002/Ntuple_data2017_MET_EraF_2503.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraF_0002/Ntuple_data2017_MET_EraF_2504.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraF_0002/Ntuple_data2017_MET_EraF_2505.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraF_0002/Ntuple_data2017_MET_EraF_2506.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraF_0002/Ntuple_data2017_MET_EraF_2507.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraF_0002/Ntuple_data2017_MET_EraF_2508.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraF_0002/Ntuple_data2017_MET_EraF_2509.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraF_0002/Ntuple_data2017_MET_EraF_2510.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraF_0002/Ntuple_data2017_MET_EraF_2511.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraF_0002/Ntuple_data2017_MET_EraF_2512.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraF_0002/Ntuple_data2017_MET_EraF_2513.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraF_0002/Ntuple_data2017_MET_EraF_2514.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraF_0002/Ntuple_data2017_MET_EraF_2515.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraF_0002/Ntuple_data2017_MET_EraF_2516.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraF_0002/Ntuple_data2017_MET_EraF_2517.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraF_0002/Ntuple_data2017_MET_EraF_2518.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraF_0002/Ntuple_data2017_MET_EraF_2519.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraF_0002/Ntuple_data2017_MET_EraF_2520.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraF_0002/Ntuple_data2017_MET_EraF_2521.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraF_0002/Ntuple_data2017_MET_EraF_2522.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraF_0002/Ntuple_data2017_MET_EraF_2523.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraF_0002/Ntuple_data2017_MET_EraF_2524.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraF_0002/Ntuple_data2017_MET_EraF_2525.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraF_0002/Ntuple_data2017_MET_EraF_2526.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraF_0002/Ntuple_data2017_MET_EraF_2527.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraF_0002/Ntuple_data2017_MET_EraF_2528.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraF_0002/Ntuple_data2017_MET_EraF_2529.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraF_0002/Ntuple_data2017_MET_EraF_2530.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraF_0002/Ntuple_data2017_MET_EraF_2531.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraF_0002/Ntuple_data2017_MET_EraF_2532.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraF_0002/Ntuple_data2017_MET_EraF_2533.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraF_0002/Ntuple_data2017_MET_EraF_2534.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraF_0002/Ntuple_data2017_MET_EraF_2535.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraF_0002/Ntuple_data2017_MET_EraF_2536.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraF_0002/Ntuple_data2017_MET_EraF_2537.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraF_0002/Ntuple_data2017_MET_EraF_2538.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraF_0002/Ntuple_data2017_MET_EraF_2539.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraF_0002/Ntuple_data2017_MET_EraF_2540.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraF_0002/Ntuple_data2017_MET_EraF_2541.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraF_0002/Ntuple_data2017_MET_EraF_2542.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraF_0002/Ntuple_data2017_MET_EraF_2543.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraF_0002/Ntuple_data2017_MET_EraF_2544.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraF_0002/Ntuple_data2017_MET_EraF_2545.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraF_0002/Ntuple_data2017_MET_EraF_2546.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraF_0002/Ntuple_data2017_MET_EraF_2547.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraF_0002/Ntuple_data2017_MET_EraF_2548.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraF_0002/Ntuple_data2017_MET_EraF_2549.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraF_0002/Ntuple_data2017_MET_EraF_2550.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraF_0002/Ntuple_data2017_MET_EraF_2551.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraF_0002/Ntuple_data2017_MET_EraF_2552.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraF_0002/Ntuple_data2017_MET_EraF_2553.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraF_0002/Ntuple_data2017_MET_EraF_2554.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraF_0002/Ntuple_data2017_MET_EraF_2555.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraF_0002/Ntuple_data2017_MET_EraF_2556.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraF_0002/Ntuple_data2017_MET_EraF_2557.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraF_0002/Ntuple_data2017_MET_EraF_2558.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraF_0002/Ntuple_data2017_MET_EraF_2559.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraF_0002/Ntuple_data2017_MET_EraF_2560.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraF_0002/Ntuple_data2017_MET_EraF_2561.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraF_0002/Ntuple_data2017_MET_EraF_2562.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraF_0002/Ntuple_data2017_MET_EraF_2563.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraF_0002/Ntuple_data2017_MET_EraF_2564.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraF_0002/Ntuple_data2017_MET_EraF_2565.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraF_0002/Ntuple_data2017_MET_EraF_2566.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraF_0002/Ntuple_data2017_MET_EraF_2567.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraF_0002/Ntuple_data2017_MET_EraF_2568.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraF_0002/Ntuple_data2017_MET_EraF_2569.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraF_0002/Ntuple_data2017_MET_EraF_2570.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraF_0002/Ntuple_data2017_MET_EraF_2571.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraF_0002/Ntuple_data2017_MET_EraF_2572.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraF_0002/Ntuple_data2017_MET_EraF_2573.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraF_0002/Ntuple_data2017_MET_EraF_2574.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraF_0002/Ntuple_data2017_MET_EraF_2575.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraF_0002/Ntuple_data2017_MET_EraF_2576.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraF_0002/Ntuple_data2017_MET_EraF_2577.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraF_0002/Ntuple_data2017_MET_EraF_2578.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraF_0002/Ntuple_data2017_MET_EraF_2579.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraF_0002/Ntuple_data2017_MET_EraF_2580.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraF_0002/Ntuple_data2017_MET_EraF_2581.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraF_0002/Ntuple_data2017_MET_EraF_2582.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraF_0002/Ntuple_data2017_MET_EraF_2583.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraF_0002/Ntuple_data2017_MET_EraF_2584.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraF_0002/Ntuple_data2017_MET_EraF_2585.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraF_0002/Ntuple_data2017_MET_EraF_2586.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraF_0002/Ntuple_data2017_MET_EraF_2587.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraF_0002/Ntuple_data2017_MET_EraF_2588.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraF_0002/Ntuple_data2017_MET_EraF_2589.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraF_0002/Ntuple_data2017_MET_EraF_2590.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraF_0002/Ntuple_data2017_MET_EraF_2591.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraF_0002/Ntuple_data2017_MET_EraF_2592.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraF_0002/Ntuple_data2017_MET_EraF_2593.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraF_0002/Ntuple_data2017_MET_EraF_2594.root
mv MET_EraF_0002_05.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau_hadd/ 
