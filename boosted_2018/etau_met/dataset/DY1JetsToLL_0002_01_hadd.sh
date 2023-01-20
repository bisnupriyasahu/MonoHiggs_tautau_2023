#!/bin/sh
source /cvmfs/cms.cern.ch/cmsset_default.sh 
cd /cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5/
eval export CMSSW_RELEASE_BASE="/cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5";
export PATH="/cvmfs/cms.cern.ch/share/overrides/bin:/nfs_scratch/jmadhusu/CMSSW_12_3_5/bin/slc7_amd64_gcc10:/nfs_scratch/jmadhusu/CMSSW_12_3_5/external/slc7_amd64_gcc10/bin:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5/bin/slc7_amd64_gcc10:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5/external/slc7_amd64_gcc10/bin:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/external/llvm/12.0.1-98ba1be77003441f04b47ab03db13dc0/bin:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/external/gcc/10.3.0-84898dea653199466402e67d73657f10/bin:/cvmfs/cms.cern.ch/common:/cvmfs/cms.cern.ch/common:/usr/local/bin/smb:/usr/local/bin/raid:/usr/lib64/qt-3.3/bin:/usr/local/etc:/usr/local/bin/hadoop:/usr/local/bin/firstboot:/usr/local/bin/defaultcls:/usr/condabin:/usr/local/bin/cephdir:/usr/local/bin/afs:/usr/local/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/opt/puppetlabs/bin:/afs/hep.wisc.edu/home/ms/bin";
cd ${_CONDOR_SCRATCH_DIR}


hadd DY1JetsToLL_0002_01.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0002/Ntuple_mc_3-2100.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0002/Ntuple_mc_3-2101.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0002/Ntuple_mc_3-2102.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0002/Ntuple_mc_3-2103.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0002/Ntuple_mc_3-2104.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0002/Ntuple_mc_3-2105.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0002/Ntuple_mc_3-2106.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0002/Ntuple_mc_3-2107.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0002/Ntuple_mc_3-2108.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0002/Ntuple_mc_3-2109.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0002/Ntuple_mc_3-2110.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0002/Ntuple_mc_3-2111.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0002/Ntuple_mc_3-2112.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0002/Ntuple_mc_3-2113.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0002/Ntuple_mc_3-2114.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0002/Ntuple_mc_3-2115.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0002/Ntuple_mc_3-2116.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0002/Ntuple_mc_3-2117.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0002/Ntuple_mc_3-2118.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0002/Ntuple_mc_3-2119.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0002/Ntuple_mc_3-2120.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0002/Ntuple_mc_3-2121.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0002/Ntuple_mc_3-2122.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0002/Ntuple_mc_3-2123.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0002/Ntuple_mc_3-2124.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0002/Ntuple_mc_3-2125.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0002/Ntuple_mc_3-2126.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0002/Ntuple_mc_3-2127.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0002/Ntuple_mc_3-2128.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0002/Ntuple_mc_3-2129.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0002/Ntuple_mc_3-2130.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0002/Ntuple_mc_3-2131.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0002/Ntuple_mc_3-2132.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0002/Ntuple_mc_3-2133.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0002/Ntuple_mc_3-2134.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0002/Ntuple_mc_3-2135.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0002/Ntuple_mc_3-2136.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0002/Ntuple_mc_3-2137.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0002/Ntuple_mc_3-2138.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0002/Ntuple_mc_3-2139.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0002/Ntuple_mc_3-2140.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0002/Ntuple_mc_3-2141.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0002/Ntuple_mc_3-2142.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0002/Ntuple_mc_3-2143.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0002/Ntuple_mc_3-2144.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0002/Ntuple_mc_3-2145.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0002/Ntuple_mc_3-2146.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0002/Ntuple_mc_3-2147.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0002/Ntuple_mc_3-2148.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0002/Ntuple_mc_3-2149.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0002/Ntuple_mc_3-2150.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0002/Ntuple_mc_3-2151.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0002/Ntuple_mc_3-2152.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0002/Ntuple_mc_3-2153.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0002/Ntuple_mc_3-2154.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0002/Ntuple_mc_3-2155.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0002/Ntuple_mc_3-2156.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0002/Ntuple_mc_3-2157.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0002/Ntuple_mc_3-2158.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0002/Ntuple_mc_3-2159.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0002/Ntuple_mc_3-2160.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0002/Ntuple_mc_3-2161.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0002/Ntuple_mc_3-2162.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0002/Ntuple_mc_3-2163.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0002/Ntuple_mc_3-2164.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0002/Ntuple_mc_3-2165.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0002/Ntuple_mc_3-2166.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0002/Ntuple_mc_3-2167.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0002/Ntuple_mc_3-2168.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0002/Ntuple_mc_3-2169.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0002/Ntuple_mc_3-2170.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0002/Ntuple_mc_3-2171.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0002/Ntuple_mc_3-2172.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0002/Ntuple_mc_3-2173.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0002/Ntuple_mc_3-2174.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0002/Ntuple_mc_3-2175.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0002/Ntuple_mc_3-2176.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0002/Ntuple_mc_3-2177.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0002/Ntuple_mc_3-2178.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0002/Ntuple_mc_3-2179.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0002/Ntuple_mc_3-2180.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0002/Ntuple_mc_3-2181.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0002/Ntuple_mc_3-2182.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0002/Ntuple_mc_3-2183.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0002/Ntuple_mc_3-2184.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0002/Ntuple_mc_3-2185.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0002/Ntuple_mc_3-2186.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0002/Ntuple_mc_3-2187.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0002/Ntuple_mc_3-2188.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0002/Ntuple_mc_3-2189.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0002/Ntuple_mc_3-2190.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0002/Ntuple_mc_3-2191.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0002/Ntuple_mc_3-2192.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0002/Ntuple_mc_3-2193.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0002/Ntuple_mc_3-2194.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0002/Ntuple_mc_3-2195.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0002/Ntuple_mc_3-2196.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0002/Ntuple_mc_3-2197.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DY1JetsToLL_0002/Ntuple_mc_3-2198.root
mv DY1JetsToLL_0002_01.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau_hadd/ 
