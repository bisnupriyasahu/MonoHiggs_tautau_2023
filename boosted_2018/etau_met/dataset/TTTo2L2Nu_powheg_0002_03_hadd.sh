#!/bin/sh
source /cvmfs/cms.cern.ch/cmsset_default.sh 
cd /cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5/
eval export CMSSW_RELEASE_BASE="/cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5";
export PATH="/cvmfs/cms.cern.ch/share/overrides/bin:/nfs_scratch/jmadhusu/CMSSW_12_3_5/bin/slc7_amd64_gcc10:/nfs_scratch/jmadhusu/CMSSW_12_3_5/external/slc7_amd64_gcc10/bin:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5/bin/slc7_amd64_gcc10:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5/external/slc7_amd64_gcc10/bin:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/external/llvm/12.0.1-98ba1be77003441f04b47ab03db13dc0/bin:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/external/gcc/10.3.0-84898dea653199466402e67d73657f10/bin:/cvmfs/cms.cern.ch/common:/cvmfs/cms.cern.ch/common:/usr/local/bin/smb:/usr/local/bin/raid:/usr/lib64/qt-3.3/bin:/usr/local/etc:/usr/local/bin/hadoop:/usr/local/bin/firstboot:/usr/local/bin/defaultcls:/usr/condabin:/usr/local/bin/cephdir:/usr/local/bin/afs:/usr/local/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/opt/puppetlabs/bin:/afs/hep.wisc.edu/home/ms/bin";
cd ${_CONDOR_SCRATCH_DIR}


hadd TTTo2L2Nu_powheg_0002_03.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0002/Ntuple_mc_1-2298.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0002/Ntuple_mc_1-2299.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0002/Ntuple_mc_1-2300.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0002/Ntuple_mc_1-2301.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0002/Ntuple_mc_1-2302.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0002/Ntuple_mc_1-2303.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0002/Ntuple_mc_1-2304.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0002/Ntuple_mc_1-2305.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0002/Ntuple_mc_1-2306.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0002/Ntuple_mc_1-2307.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0002/Ntuple_mc_1-2308.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0002/Ntuple_mc_1-2309.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0002/Ntuple_mc_1-2310.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0002/Ntuple_mc_1-2311.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0002/Ntuple_mc_1-2312.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0002/Ntuple_mc_1-2313.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0002/Ntuple_mc_1-2314.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0002/Ntuple_mc_1-2315.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0002/Ntuple_mc_1-2316.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0002/Ntuple_mc_1-2317.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0002/Ntuple_mc_1-2318.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0002/Ntuple_mc_1-2319.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0002/Ntuple_mc_1-2320.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0002/Ntuple_mc_1-2321.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0002/Ntuple_mc_1-2322.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0002/Ntuple_mc_1-2323.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0002/Ntuple_mc_1-2324.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0002/Ntuple_mc_1-2325.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0002/Ntuple_mc_1-2326.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0002/Ntuple_mc_1-2327.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0002/Ntuple_mc_1-2328.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0002/Ntuple_mc_1-2329.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0002/Ntuple_mc_1-2330.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0002/Ntuple_mc_1-2331.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0002/Ntuple_mc_1-2332.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0002/Ntuple_mc_1-2333.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0002/Ntuple_mc_1-2334.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0002/Ntuple_mc_1-2335.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0002/Ntuple_mc_1-2336.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0002/Ntuple_mc_1-2337.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0002/Ntuple_mc_1-2338.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0002/Ntuple_mc_1-2339.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0002/Ntuple_mc_1-2340.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0002/Ntuple_mc_1-2341.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0002/Ntuple_mc_1-2342.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0002/Ntuple_mc_1-2343.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0002/Ntuple_mc_1-2344.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0002/Ntuple_mc_1-2345.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0002/Ntuple_mc_1-2346.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0002/Ntuple_mc_1-2347.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0002/Ntuple_mc_1-2348.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0002/Ntuple_mc_1-2349.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0002/Ntuple_mc_1-2350.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0002/Ntuple_mc_1-2351.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0002/Ntuple_mc_1-2352.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0002/Ntuple_mc_1-2353.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0002/Ntuple_mc_1-2354.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0002/Ntuple_mc_1-2355.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0002/Ntuple_mc_1-2356.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0002/Ntuple_mc_1-2357.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0002/Ntuple_mc_1-2358.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0002/Ntuple_mc_1-2359.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0002/Ntuple_mc_1-2360.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0002/Ntuple_mc_1-2361.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0002/Ntuple_mc_1-2362.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0002/Ntuple_mc_1-2363.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0002/Ntuple_mc_1-2364.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0002/Ntuple_mc_1-2365.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0002/Ntuple_mc_1-2366.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0002/Ntuple_mc_1-2367.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0002/Ntuple_mc_1-2368.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0002/Ntuple_mc_1-2369.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0002/Ntuple_mc_1-2370.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0002/Ntuple_mc_1-2371.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0002/Ntuple_mc_1-2372.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0002/Ntuple_mc_1-2373.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0002/Ntuple_mc_1-2374.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0002/Ntuple_mc_1-2375.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0002/Ntuple_mc_1-2376.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0002/Ntuple_mc_1-2377.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0002/Ntuple_mc_1-2378.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0002/Ntuple_mc_1-2379.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0002/Ntuple_mc_1-2380.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0002/Ntuple_mc_1-2381.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0002/Ntuple_mc_1-2382.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0002/Ntuple_mc_1-2383.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0002/Ntuple_mc_1-2384.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0002/Ntuple_mc_1-2385.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0002/Ntuple_mc_1-2386.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0002/Ntuple_mc_1-2387.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0002/Ntuple_mc_1-2388.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0002/Ntuple_mc_1-2389.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0002/Ntuple_mc_1-2390.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0002/Ntuple_mc_1-2391.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0002/Ntuple_mc_1-2392.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0002/Ntuple_mc_1-2393.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0002/Ntuple_mc_1-2394.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0002/Ntuple_mc_1-2395.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0002/Ntuple_mc_1-2396.root
mv TTTo2L2Nu_powheg_0002_03.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau_hadd/ 
