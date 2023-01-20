#!/bin/sh
source /cvmfs/cms.cern.ch/cmsset_default.sh 
cd /cvmfs/cms.cern.ch/slc7_amd64_gcc630/cms/cmssw/CMSSW_9_4_13/
eval export CMSSW_RELEASE_BASE="/cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5";
export PATH="/cvmfs/cms.cern.ch/share/overrides/bin:/nfs_scratch/jmadhusu/CMSSW_12_3_5/bin/slc7_amd64_gcc10:/nfs_scratch/jmadhusu/CMSSW_12_3_5/external/slc7_amd64_gcc10/bin:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5/bin/slc7_amd64_gcc10:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5/external/slc7_amd64_gcc10/bin:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/external/llvm/12.0.1-98ba1be77003441f04b47ab03db13dc0/bin:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/external/gcc/10.3.0-84898dea653199466402e67d73657f10/bin:/cvmfs/cms.cern.ch/common:/cvmfs/cms.cern.ch/common:/usr/local/bin/smb:/usr/local/bin/raid:/usr/lib64/qt-3.3/bin:/usr/local/etc:/usr/local/bin/hadoop:/usr/local/bin/firstboot:/usr/local/bin/defaultcls:/usr/condabin:/usr/local/bin/cephdir:/usr/local/bin/afs:/usr/local/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/opt/puppetlabs/bin:/afs/hep.wisc.edu/home/ms/bin";
cd ${_CONDOR_SCRATCH_DIR}


hadd blinded_MET_EraE_0002_02.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0002/Ntuple_data2017_MET_EraE_2199.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0002/Ntuple_data2017_MET_EraE_2200.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0002/Ntuple_data2017_MET_EraE_2201.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0002/Ntuple_data2017_MET_EraE_2202.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0002/Ntuple_data2017_MET_EraE_2203.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0002/Ntuple_data2017_MET_EraE_2204.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0002/Ntuple_data2017_MET_EraE_2205.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0002/Ntuple_data2017_MET_EraE_2206.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0002/Ntuple_data2017_MET_EraE_2207.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0002/Ntuple_data2017_MET_EraE_2208.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0002/Ntuple_data2017_MET_EraE_2209.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0002/Ntuple_data2017_MET_EraE_2210.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0002/Ntuple_data2017_MET_EraE_2211.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0002/Ntuple_data2017_MET_EraE_2212.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0002/Ntuple_data2017_MET_EraE_2213.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0002/Ntuple_data2017_MET_EraE_2214.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0002/Ntuple_data2017_MET_EraE_2215.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0002/Ntuple_data2017_MET_EraE_2216.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0002/Ntuple_data2017_MET_EraE_2217.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0002/Ntuple_data2017_MET_EraE_2218.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0002/Ntuple_data2017_MET_EraE_2219.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0002/Ntuple_data2017_MET_EraE_2220.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0002/Ntuple_data2017_MET_EraE_2221.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0002/Ntuple_data2017_MET_EraE_2222.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0002/Ntuple_data2017_MET_EraE_2223.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0002/Ntuple_data2017_MET_EraE_2224.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0002/Ntuple_data2017_MET_EraE_2225.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0002/Ntuple_data2017_MET_EraE_2226.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0002/Ntuple_data2017_MET_EraE_2227.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0002/Ntuple_data2017_MET_EraE_2228.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0002/Ntuple_data2017_MET_EraE_2229.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0002/Ntuple_data2017_MET_EraE_2230.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0002/Ntuple_data2017_MET_EraE_2231.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0002/Ntuple_data2017_MET_EraE_2232.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0002/Ntuple_data2017_MET_EraE_2233.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0002/Ntuple_data2017_MET_EraE_2234.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0002/Ntuple_data2017_MET_EraE_2235.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0002/Ntuple_data2017_MET_EraE_2236.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0002/Ntuple_data2017_MET_EraE_2237.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0002/Ntuple_data2017_MET_EraE_2238.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0002/Ntuple_data2017_MET_EraE_2239.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0002/Ntuple_data2017_MET_EraE_2240.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0002/Ntuple_data2017_MET_EraE_2241.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0002/Ntuple_data2017_MET_EraE_2242.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0002/Ntuple_data2017_MET_EraE_2243.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0002/Ntuple_data2017_MET_EraE_2244.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0002/Ntuple_data2017_MET_EraE_2245.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0002/Ntuple_data2017_MET_EraE_2246.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0002/Ntuple_data2017_MET_EraE_2247.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0002/Ntuple_data2017_MET_EraE_2248.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0002/Ntuple_data2017_MET_EraE_2249.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0002/Ntuple_data2017_MET_EraE_2250.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0002/Ntuple_data2017_MET_EraE_2251.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0002/Ntuple_data2017_MET_EraE_2252.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0002/Ntuple_data2017_MET_EraE_2253.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0002/Ntuple_data2017_MET_EraE_2254.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0002/Ntuple_data2017_MET_EraE_2255.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0002/Ntuple_data2017_MET_EraE_2256.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0002/Ntuple_data2017_MET_EraE_2257.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0002/Ntuple_data2017_MET_EraE_2258.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0002/Ntuple_data2017_MET_EraE_2259.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0002/Ntuple_data2017_MET_EraE_2260.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0002/Ntuple_data2017_MET_EraE_2261.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0002/Ntuple_data2017_MET_EraE_2262.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0002/Ntuple_data2017_MET_EraE_2263.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0002/Ntuple_data2017_MET_EraE_2264.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0002/Ntuple_data2017_MET_EraE_2265.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0002/Ntuple_data2017_MET_EraE_2266.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0002/Ntuple_data2017_MET_EraE_2267.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0002/Ntuple_data2017_MET_EraE_2268.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0002/Ntuple_data2017_MET_EraE_2269.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0002/Ntuple_data2017_MET_EraE_2270.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0002/Ntuple_data2017_MET_EraE_2271.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0002/Ntuple_data2017_MET_EraE_2272.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0002/Ntuple_data2017_MET_EraE_2273.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0002/Ntuple_data2017_MET_EraE_2274.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0002/Ntuple_data2017_MET_EraE_2275.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0002/Ntuple_data2017_MET_EraE_2276.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0002/Ntuple_data2017_MET_EraE_2277.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0002/Ntuple_data2017_MET_EraE_2278.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0002/Ntuple_data2017_MET_EraE_2279.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0002/Ntuple_data2017_MET_EraE_2280.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0002/Ntuple_data2017_MET_EraE_2281.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0002/Ntuple_data2017_MET_EraE_2282.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0002/Ntuple_data2017_MET_EraE_2283.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0002/Ntuple_data2017_MET_EraE_2284.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0002/Ntuple_data2017_MET_EraE_2285.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0002/Ntuple_data2017_MET_EraE_2286.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0002/Ntuple_data2017_MET_EraE_2287.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0002/Ntuple_data2017_MET_EraE_2288.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0002/Ntuple_data2017_MET_EraE_2289.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0002/Ntuple_data2017_MET_EraE_2290.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0002/Ntuple_data2017_MET_EraE_2291.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0002/Ntuple_data2017_MET_EraE_2292.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0002/Ntuple_data2017_MET_EraE_2293.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0002/Ntuple_data2017_MET_EraE_2294.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0002/Ntuple_data2017_MET_EraE_2295.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0002/Ntuple_data2017_MET_EraE_2296.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_0002/Ntuple_data2017_MET_EraE_2297.root
xrdcp blinded_MET_EraE_0002_02.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau_hadd/ 
rm blinded_MET_EraE_0002_02.root 