#!/bin/sh
source /cvmfs/cms.cern.ch/cmsset_default.sh 
cd /cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5/
eval export CMSSW_RELEASE_BASE="/cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5";
export PATH="/cvmfs/cms.cern.ch/share/overrides/bin:/nfs_scratch/jmadhusu/CMSSW_12_3_5/bin/slc7_amd64_gcc10:/nfs_scratch/jmadhusu/CMSSW_12_3_5/external/slc7_amd64_gcc10/bin:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5/bin/slc7_amd64_gcc10:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5/external/slc7_amd64_gcc10/bin:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/external/llvm/12.0.1-98ba1be77003441f04b47ab03db13dc0/bin:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/external/gcc/10.3.0-84898dea653199466402e67d73657f10/bin:/cvmfs/cms.cern.ch/common:/cvmfs/cms.cern.ch/common:/usr/local/bin/smb:/usr/local/bin/raid:/usr/lib64/qt-3.3/bin:/usr/local/etc:/usr/local/bin/hadoop:/usr/local/bin/firstboot:/usr/local/bin/defaultcls:/usr/condabin:/usr/local/bin/cephdir:/usr/local/bin/afs:/usr/local/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/opt/puppetlabs/bin:/afs/hep.wisc.edu/home/ms/bin";
cd ${_CONDOR_SCRATCH_DIR}


hadd MET2018C_0002_015.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0002/Ntuple_data2018_MET2018C_3-2486.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0002/Ntuple_data2018_MET2018C_3-2487.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0002/Ntuple_data2018_MET2018C_3-2488.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0002/Ntuple_data2018_MET2018C_3-2489.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0002/Ntuple_data2018_MET2018C_3-2490.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0002/Ntuple_data2018_MET2018C_3-2491.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0002/Ntuple_data2018_MET2018C_3-2492.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0002/Ntuple_data2018_MET2018C_3-2493.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0002/Ntuple_data2018_MET2018C_3-2494.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0002/Ntuple_data2018_MET2018C_3-2495.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0002/Ntuple_data2018_MET2018C_3-2496.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0002/Ntuple_data2018_MET2018C_3-2497.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0002/Ntuple_data2018_MET2018C_3-2498.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0002/Ntuple_data2018_MET2018C_3-2499.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0002/Ntuple_data2018_MET2018C_3-2500.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0002/Ntuple_data2018_MET2018C_3-2501.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0002/Ntuple_data2018_MET2018C_3-2502.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0002/Ntuple_data2018_MET2018C_3-2503.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0002/Ntuple_data2018_MET2018C_3-2504.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0002/Ntuple_data2018_MET2018C_3-2505.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0002/Ntuple_data2018_MET2018C_3-2506.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0002/Ntuple_data2018_MET2018C_3-2507.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0002/Ntuple_data2018_MET2018C_3-2508.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0002/Ntuple_data2018_MET2018C_3-2509.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0002/Ntuple_data2018_MET2018C_3-2510.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0002/Ntuple_data2018_MET2018C_3-2511.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0002/Ntuple_data2018_MET2018C_3-2512.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0002/Ntuple_data2018_MET2018C_3-2513.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0002/Ntuple_data2018_MET2018C_3-2514.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0002/Ntuple_data2018_MET2018C_3-2515.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0002/Ntuple_data2018_MET2018C_3-2516.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0002/Ntuple_data2018_MET2018C_3-2517.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0002/Ntuple_data2018_MET2018C_3-2518.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0002/Ntuple_data2018_MET2018C_3-2519.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0002/Ntuple_data2018_MET2018C_3-2520.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0002/Ntuple_data2018_MET2018C_3-2521.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0002/Ntuple_data2018_MET2018C_3-2522.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0002/Ntuple_data2018_MET2018C_3-2523.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0002/Ntuple_data2018_MET2018C_3-2524.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0002/Ntuple_data2018_MET2018C_3-2525.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0002/Ntuple_data2018_MET2018C_3-2526.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0002/Ntuple_data2018_MET2018C_3-2527.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0002/Ntuple_data2018_MET2018C_3-2528.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0002/Ntuple_data2018_MET2018C_3-2529.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0002/Ntuple_data2018_MET2018C_3-2530.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0002/Ntuple_data2018_MET2018C_3-2531.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0002/Ntuple_data2018_MET2018C_3-2532.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0002/Ntuple_data2018_MET2018C_3-2533.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0002/Ntuple_data2018_MET2018C_3-2534.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0002/Ntuple_data2018_MET2018C_3-2535.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0002/Ntuple_data2018_MET2018C_3-2536.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0002/Ntuple_data2018_MET2018C_3-2537.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0002/Ntuple_data2018_MET2018C_3-2538.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0002/Ntuple_data2018_MET2018C_3-2539.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0002/Ntuple_data2018_MET2018C_3-2540.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0002/Ntuple_data2018_MET2018C_3-2541.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0002/Ntuple_data2018_MET2018C_3-2542.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0002/Ntuple_data2018_MET2018C_3-2543.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0002/Ntuple_data2018_MET2018C_3-2544.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0002/Ntuple_data2018_MET2018C_3-2545.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0002/Ntuple_data2018_MET2018C_3-2546.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0002/Ntuple_data2018_MET2018C_3-2547.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0002/Ntuple_data2018_MET2018C_3-2548.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0002/Ntuple_data2018_MET2018C_3-2549.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0002/Ntuple_data2018_MET2018C_3-2550.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0002/Ntuple_data2018_MET2018C_3-2551.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0002/Ntuple_data2018_MET2018C_3-2552.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0002/Ntuple_data2018_MET2018C_3-2553.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0002/Ntuple_data2018_MET2018C_3-2554.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0002/Ntuple_data2018_MET2018C_3-2555.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0002/Ntuple_data2018_MET2018C_3-2556.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0002/Ntuple_data2018_MET2018C_3-2557.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0002/Ntuple_data2018_MET2018C_3-2558.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0002/Ntuple_data2018_MET2018C_3-2559.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0002/Ntuple_data2018_MET2018C_3-2560.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0002/Ntuple_data2018_MET2018C_3-2561.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0002/Ntuple_data2018_MET2018C_3-2562.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0002/Ntuple_data2018_MET2018C_3-2563.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0002/Ntuple_data2018_MET2018C_3-2564.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0002/Ntuple_data2018_MET2018C_3-2565.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0002/Ntuple_data2018_MET2018C_3-2566.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0002/Ntuple_data2018_MET2018C_3-2567.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0002/Ntuple_data2018_MET2018C_3-2568.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0002/Ntuple_data2018_MET2018C_3-2569.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0002/Ntuple_data2018_MET2018C_3-2570.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0002/Ntuple_data2018_MET2018C_3-2571.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0002/Ntuple_data2018_MET2018C_3-2572.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0002/Ntuple_data2018_MET2018C_3-2573.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0002/Ntuple_data2018_MET2018C_3-2574.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0002/Ntuple_data2018_MET2018C_3-2575.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0002/Ntuple_data2018_MET2018C_3-2576.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0002/Ntuple_data2018_MET2018C_3-2577.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0002/Ntuple_data2018_MET2018C_3-2578.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0002/Ntuple_data2018_MET2018C_3-2579.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0002/Ntuple_data2018_MET2018C_3-2580.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0002/Ntuple_data2018_MET2018C_3-2581.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0002/Ntuple_data2018_MET2018C_3-2582.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0002/Ntuple_data2018_MET2018C_3-2583.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0002/Ntuple_data2018_MET2018C_3-2584.root
mv MET2018C_0002_015.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau_hadd/ 
