#!/bin/sh
source /cvmfs/cms.cern.ch/cmsset_default.sh 
cd /cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5/
eval export CMSSW_RELEASE_BASE="/cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5";
export PATH="/cvmfs/cms.cern.ch/share/overrides/bin:/nfs_scratch/jmadhusu/CMSSW_12_3_5/bin/slc7_amd64_gcc10:/nfs_scratch/jmadhusu/CMSSW_12_3_5/external/slc7_amd64_gcc10/bin:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5/bin/slc7_amd64_gcc10:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5/external/slc7_amd64_gcc10/bin:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/external/llvm/12.0.1-98ba1be77003441f04b47ab03db13dc0/bin:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/external/gcc/10.3.0-84898dea653199466402e67d73657f10/bin:/cvmfs/cms.cern.ch/common:/cvmfs/cms.cern.ch/common:/usr/local/bin/smb:/usr/local/bin/raid:/usr/lib64/qt-3.3/bin:/usr/local/etc:/usr/local/bin/hadoop:/usr/local/bin/firstboot:/usr/local/bin/defaultcls:/usr/condabin:/usr/local/bin/cephdir:/usr/local/bin/afs:/usr/local/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/opt/puppetlabs/bin:/afs/hep.wisc.edu/home/ms/bin";
cd ${_CONDOR_SCRATCH_DIR}


hadd TTToSemiLeptonic_powheg_0002_00.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0002/Ntuple_mc_1-2000.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0002/Ntuple_mc_1-2001.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0002/Ntuple_mc_1-2002.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0002/Ntuple_mc_1-2003.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0002/Ntuple_mc_1-2004.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0002/Ntuple_mc_1-2005.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0002/Ntuple_mc_1-2006.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0002/Ntuple_mc_1-2007.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0002/Ntuple_mc_1-2008.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0002/Ntuple_mc_1-2009.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0002/Ntuple_mc_1-2010.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0002/Ntuple_mc_1-2011.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0002/Ntuple_mc_1-2012.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0002/Ntuple_mc_1-2013.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0002/Ntuple_mc_1-2014.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0002/Ntuple_mc_1-2015.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0002/Ntuple_mc_1-2016.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0002/Ntuple_mc_1-2017.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0002/Ntuple_mc_1-2018.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0002/Ntuple_mc_1-2019.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0002/Ntuple_mc_1-2020.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0002/Ntuple_mc_1-2021.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0002/Ntuple_mc_1-2022.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0002/Ntuple_mc_1-2023.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0002/Ntuple_mc_1-2024.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0002/Ntuple_mc_1-2025.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0002/Ntuple_mc_1-2026.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0002/Ntuple_mc_1-2027.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0002/Ntuple_mc_1-2028.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0002/Ntuple_mc_1-2029.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0002/Ntuple_mc_1-2030.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0002/Ntuple_mc_1-2031.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0002/Ntuple_mc_1-2032.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0002/Ntuple_mc_1-2033.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0002/Ntuple_mc_1-2034.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0002/Ntuple_mc_1-2035.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0002/Ntuple_mc_1-2036.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0002/Ntuple_mc_1-2037.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0002/Ntuple_mc_1-2038.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0002/Ntuple_mc_1-2039.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0002/Ntuple_mc_1-2040.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0002/Ntuple_mc_1-2041.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0002/Ntuple_mc_1-2042.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0002/Ntuple_mc_1-2043.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0002/Ntuple_mc_1-2044.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0002/Ntuple_mc_1-2045.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0002/Ntuple_mc_1-2046.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0002/Ntuple_mc_1-2047.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0002/Ntuple_mc_1-2048.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0002/Ntuple_mc_1-2049.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0002/Ntuple_mc_1-2050.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0002/Ntuple_mc_1-2051.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0002/Ntuple_mc_1-2052.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0002/Ntuple_mc_1-2053.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0002/Ntuple_mc_1-2054.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0002/Ntuple_mc_1-2055.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0002/Ntuple_mc_1-2056.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0002/Ntuple_mc_1-2057.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0002/Ntuple_mc_1-2058.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0002/Ntuple_mc_1-2059.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0002/Ntuple_mc_1-2060.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0002/Ntuple_mc_1-2061.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0002/Ntuple_mc_1-2062.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0002/Ntuple_mc_1-2063.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0002/Ntuple_mc_1-2064.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0002/Ntuple_mc_1-2065.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0002/Ntuple_mc_1-2066.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0002/Ntuple_mc_1-2067.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0002/Ntuple_mc_1-2068.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0002/Ntuple_mc_1-2069.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0002/Ntuple_mc_1-2070.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0002/Ntuple_mc_1-2071.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0002/Ntuple_mc_1-2072.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0002/Ntuple_mc_1-2073.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0002/Ntuple_mc_1-2074.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0002/Ntuple_mc_1-2075.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0002/Ntuple_mc_1-2076.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0002/Ntuple_mc_1-2077.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0002/Ntuple_mc_1-2078.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0002/Ntuple_mc_1-2079.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0002/Ntuple_mc_1-2080.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0002/Ntuple_mc_1-2081.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0002/Ntuple_mc_1-2082.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0002/Ntuple_mc_1-2083.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0002/Ntuple_mc_1-2084.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0002/Ntuple_mc_1-2085.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0002/Ntuple_mc_1-2086.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0002/Ntuple_mc_1-2087.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0002/Ntuple_mc_1-2088.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0002/Ntuple_mc_1-2089.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0002/Ntuple_mc_1-2090.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0002/Ntuple_mc_1-2091.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0002/Ntuple_mc_1-2092.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0002/Ntuple_mc_1-2093.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0002/Ntuple_mc_1-2094.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0002/Ntuple_mc_1-2095.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0002/Ntuple_mc_1-2096.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0002/Ntuple_mc_1-2097.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0002/Ntuple_mc_1-2098.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTToSemiLeptonic_powheg_0002/Ntuple_mc_1-2099.root
mv TTToSemiLeptonic_powheg_0002_00.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau_hadd/ 
