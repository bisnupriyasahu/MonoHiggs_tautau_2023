#!/bin/sh
source /cvmfs/cms.cern.ch/cmsset_default.sh 
cd /cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5/
eval export CMSSW_RELEASE_BASE="/cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5";
export PATH="/cvmfs/cms.cern.ch/share/overrides/bin:/nfs_scratch/jmadhusu/CMSSW_12_3_5/bin/slc7_amd64_gcc10:/nfs_scratch/jmadhusu/CMSSW_12_3_5/external/slc7_amd64_gcc10/bin:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5/bin/slc7_amd64_gcc10:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5/external/slc7_amd64_gcc10/bin:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/external/llvm/12.0.1-98ba1be77003441f04b47ab03db13dc0/bin:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/external/gcc/10.3.0-84898dea653199466402e67d73657f10/bin:/cvmfs/cms.cern.ch/common:/cvmfs/cms.cern.ch/common:/usr/local/bin/smb:/usr/local/bin/raid:/usr/lib64/qt-3.3/bin:/usr/local/etc:/usr/local/bin/hadoop:/usr/local/bin/firstboot:/usr/local/bin/defaultcls:/usr/condabin:/usr/local/bin/cephdir:/usr/local/bin/afs:/usr/local/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/opt/puppetlabs/bin:/afs/hep.wisc.edu/home/ms/bin";
cd ${_CONDOR_SCRATCH_DIR}


hadd ST_t-channel_antitop_0002_012.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0002/Ntuple_mc_3-2189.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0002/Ntuple_mc_3-2190.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0002/Ntuple_mc_3-2191.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0002/Ntuple_mc_3-2192.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0002/Ntuple_mc_3-2193.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0002/Ntuple_mc_3-2194.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0002/Ntuple_mc_3-2195.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0002/Ntuple_mc_3-2196.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0002/Ntuple_mc_3-2197.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0002/Ntuple_mc_3-2198.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0002/Ntuple_mc_3-2199.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0002/Ntuple_mc_3-2200.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0002/Ntuple_mc_3-2201.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0002/Ntuple_mc_3-2202.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0002/Ntuple_mc_3-2203.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0002/Ntuple_mc_3-2204.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0002/Ntuple_mc_3-2205.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0002/Ntuple_mc_3-2206.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0002/Ntuple_mc_3-2207.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0002/Ntuple_mc_3-2208.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0002/Ntuple_mc_3-2209.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0002/Ntuple_mc_3-2210.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0002/Ntuple_mc_3-2211.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0002/Ntuple_mc_3-2212.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0002/Ntuple_mc_3-2213.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0002/Ntuple_mc_3-2214.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0002/Ntuple_mc_3-2215.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0002/Ntuple_mc_3-2216.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0002/Ntuple_mc_3-2217.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0002/Ntuple_mc_3-2218.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0002/Ntuple_mc_3-2219.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0002/Ntuple_mc_3-2220.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0002/Ntuple_mc_3-2221.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0002/Ntuple_mc_3-2222.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0002/Ntuple_mc_3-2223.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0002/Ntuple_mc_3-2224.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0002/Ntuple_mc_3-2225.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0002/Ntuple_mc_3-2226.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0002/Ntuple_mc_3-2227.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0002/Ntuple_mc_3-2228.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0002/Ntuple_mc_3-2229.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0002/Ntuple_mc_3-2230.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0002/Ntuple_mc_3-2231.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0002/Ntuple_mc_3-2232.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0002/Ntuple_mc_3-2233.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0002/Ntuple_mc_3-2234.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0002/Ntuple_mc_3-2235.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0002/Ntuple_mc_3-2236.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0002/Ntuple_mc_3-2237.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0002/Ntuple_mc_3-2238.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0002/Ntuple_mc_3-2239.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0002/Ntuple_mc_3-2240.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0002/Ntuple_mc_3-2241.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0002/Ntuple_mc_3-2242.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0002/Ntuple_mc_3-2243.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0002/Ntuple_mc_3-2244.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0002/Ntuple_mc_3-2245.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0002/Ntuple_mc_3-2246.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0002/Ntuple_mc_3-2247.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0002/Ntuple_mc_3-2248.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0002/Ntuple_mc_3-2249.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0002/Ntuple_mc_3-2250.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0002/Ntuple_mc_3-2251.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0002/Ntuple_mc_3-2252.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0002/Ntuple_mc_3-2253.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0002/Ntuple_mc_3-2254.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0002/Ntuple_mc_3-2255.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0002/Ntuple_mc_3-2256.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0002/Ntuple_mc_3-2257.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0002/Ntuple_mc_3-2258.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0002/Ntuple_mc_3-2259.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0002/Ntuple_mc_3-2260.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0002/Ntuple_mc_3-2261.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0002/Ntuple_mc_3-2262.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0002/Ntuple_mc_3-2263.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0002/Ntuple_mc_3-2264.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0002/Ntuple_mc_3-2265.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0002/Ntuple_mc_3-2266.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0002/Ntuple_mc_3-2267.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0002/Ntuple_mc_3-2268.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0002/Ntuple_mc_3-2269.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0002/Ntuple_mc_3-2270.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0002/Ntuple_mc_3-2271.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0002/Ntuple_mc_3-2272.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0002/Ntuple_mc_3-2273.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0002/Ntuple_mc_3-2274.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0002/Ntuple_mc_3-2275.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0002/Ntuple_mc_3-2276.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0002/Ntuple_mc_3-2277.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0002/Ntuple_mc_3-2278.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0002/Ntuple_mc_3-2279.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0002/Ntuple_mc_3-2280.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0002/Ntuple_mc_3-2281.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0002/Ntuple_mc_3-2282.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0002/Ntuple_mc_3-2283.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0002/Ntuple_mc_3-2284.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0002/Ntuple_mc_3-2285.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0002/Ntuple_mc_3-2286.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0002/Ntuple_mc_3-2287.root
mv ST_t-channel_antitop_0002_012.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau_hadd/ 
