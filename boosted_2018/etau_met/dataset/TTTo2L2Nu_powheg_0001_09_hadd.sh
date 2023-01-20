#!/bin/sh
source /cvmfs/cms.cern.ch/cmsset_default.sh 
cd /cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5/
eval export CMSSW_RELEASE_BASE="/cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5";
export PATH="/cvmfs/cms.cern.ch/share/overrides/bin:/nfs_scratch/jmadhusu/CMSSW_12_3_5/bin/slc7_amd64_gcc10:/nfs_scratch/jmadhusu/CMSSW_12_3_5/external/slc7_amd64_gcc10/bin:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5/bin/slc7_amd64_gcc10:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5/external/slc7_amd64_gcc10/bin:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/external/llvm/12.0.1-98ba1be77003441f04b47ab03db13dc0/bin:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/external/gcc/10.3.0-84898dea653199466402e67d73657f10/bin:/cvmfs/cms.cern.ch/common:/cvmfs/cms.cern.ch/common:/usr/local/bin/smb:/usr/local/bin/raid:/usr/lib64/qt-3.3/bin:/usr/local/etc:/usr/local/bin/hadoop:/usr/local/bin/firstboot:/usr/local/bin/defaultcls:/usr/condabin:/usr/local/bin/cephdir:/usr/local/bin/afs:/usr/local/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/opt/puppetlabs/bin:/afs/hep.wisc.edu/home/ms/bin";
cd ${_CONDOR_SCRATCH_DIR}


hadd TTTo2L2Nu_powheg_0001_09.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1892.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1893.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1894.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1895.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1896.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1897.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1898.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1899.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1900.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1901.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1902.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1903.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1904.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1905.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1906.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1907.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1908.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1909.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1910.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1911.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1912.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1913.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1914.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1915.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1916.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1917.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1918.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1919.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1920.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1921.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1922.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1923.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1924.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1925.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1926.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1927.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1928.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1929.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1930.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1931.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1932.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1933.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1934.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1935.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1936.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1937.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1938.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1939.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1940.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1941.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1942.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1943.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1944.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1945.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1946.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1947.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1948.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1949.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1950.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1951.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1952.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1953.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1954.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1955.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1956.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1957.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1958.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1959.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1960.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1961.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1962.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1963.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1964.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1965.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1966.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1967.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1968.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1969.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1970.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1971.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1972.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1973.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1974.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1975.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1976.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1977.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1978.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1979.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1980.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1981.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1982.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1983.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1984.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1985.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1986.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1987.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1988.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1989.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1990.root
mv TTTo2L2Nu_powheg_0001_09.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau_hadd/ 
