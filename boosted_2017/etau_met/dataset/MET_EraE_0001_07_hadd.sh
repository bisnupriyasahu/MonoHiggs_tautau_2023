#!/bin/sh
source /cvmfs/cms.cern.ch/cmsset_default.sh 
cd /cvmfs/cms.cern.ch/slc7_amd64_gcc630/cms/cmssw/CMSSW_9_4_13/
eval export CMSSW_RELEASE_BASE="/cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5";
export PATH="/cvmfs/cms.cern.ch/share/overrides/bin:/nfs_scratch/jmadhusu/CMSSW_12_3_5/bin/slc7_amd64_gcc10:/nfs_scratch/jmadhusu/CMSSW_12_3_5/external/slc7_amd64_gcc10/bin:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5/bin/slc7_amd64_gcc10:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5/external/slc7_amd64_gcc10/bin:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/external/llvm/12.0.1-98ba1be77003441f04b47ab03db13dc0/bin:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/external/gcc/10.3.0-84898dea653199466402e67d73657f10/bin:/cvmfs/cms.cern.ch/common:/cvmfs/cms.cern.ch/common:/usr/local/bin/smb:/usr/local/bin/raid:/usr/lib64/qt-3.3/bin:/usr/local/etc:/usr/local/bin/hadoop:/usr/local/bin/firstboot:/usr/local/bin/defaultcls:/usr/condabin:/usr/local/bin/cephdir:/usr/local/bin/afs:/usr/local/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/opt/puppetlabs/bin:/afs/hep.wisc.edu/home/ms/bin";
cd ${_CONDOR_SCRATCH_DIR}


hadd MET_EraE_0001_07.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraE_0001/Ntuple_data2017_MET_EraE_1694.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraE_0001/Ntuple_data2017_MET_EraE_1695.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraE_0001/Ntuple_data2017_MET_EraE_1696.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraE_0001/Ntuple_data2017_MET_EraE_1697.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraE_0001/Ntuple_data2017_MET_EraE_1698.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraE_0001/Ntuple_data2017_MET_EraE_1699.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraE_0001/Ntuple_data2017_MET_EraE_1700.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraE_0001/Ntuple_data2017_MET_EraE_1701.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraE_0001/Ntuple_data2017_MET_EraE_1702.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraE_0001/Ntuple_data2017_MET_EraE_1703.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraE_0001/Ntuple_data2017_MET_EraE_1704.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraE_0001/Ntuple_data2017_MET_EraE_1705.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraE_0001/Ntuple_data2017_MET_EraE_1706.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraE_0001/Ntuple_data2017_MET_EraE_1707.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraE_0001/Ntuple_data2017_MET_EraE_1708.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraE_0001/Ntuple_data2017_MET_EraE_1709.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraE_0001/Ntuple_data2017_MET_EraE_1710.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraE_0001/Ntuple_data2017_MET_EraE_1711.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraE_0001/Ntuple_data2017_MET_EraE_1712.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraE_0001/Ntuple_data2017_MET_EraE_1713.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraE_0001/Ntuple_data2017_MET_EraE_1714.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraE_0001/Ntuple_data2017_MET_EraE_1715.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraE_0001/Ntuple_data2017_MET_EraE_1716.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraE_0001/Ntuple_data2017_MET_EraE_1717.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraE_0001/Ntuple_data2017_MET_EraE_1718.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraE_0001/Ntuple_data2017_MET_EraE_1719.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraE_0001/Ntuple_data2017_MET_EraE_1720.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraE_0001/Ntuple_data2017_MET_EraE_1721.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraE_0001/Ntuple_data2017_MET_EraE_1722.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraE_0001/Ntuple_data2017_MET_EraE_1723.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraE_0001/Ntuple_data2017_MET_EraE_1724.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraE_0001/Ntuple_data2017_MET_EraE_1725.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraE_0001/Ntuple_data2017_MET_EraE_1726.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraE_0001/Ntuple_data2017_MET_EraE_1727.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraE_0001/Ntuple_data2017_MET_EraE_1728.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraE_0001/Ntuple_data2017_MET_EraE_1729.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraE_0001/Ntuple_data2017_MET_EraE_1730.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraE_0001/Ntuple_data2017_MET_EraE_1731.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraE_0001/Ntuple_data2017_MET_EraE_1732.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraE_0001/Ntuple_data2017_MET_EraE_1733.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraE_0001/Ntuple_data2017_MET_EraE_1734.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraE_0001/Ntuple_data2017_MET_EraE_1735.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraE_0001/Ntuple_data2017_MET_EraE_1736.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraE_0001/Ntuple_data2017_MET_EraE_1737.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraE_0001/Ntuple_data2017_MET_EraE_1738.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraE_0001/Ntuple_data2017_MET_EraE_1739.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraE_0001/Ntuple_data2017_MET_EraE_1740.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraE_0001/Ntuple_data2017_MET_EraE_1741.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraE_0001/Ntuple_data2017_MET_EraE_1742.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraE_0001/Ntuple_data2017_MET_EraE_1743.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraE_0001/Ntuple_data2017_MET_EraE_1744.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraE_0001/Ntuple_data2017_MET_EraE_1745.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraE_0001/Ntuple_data2017_MET_EraE_1746.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraE_0001/Ntuple_data2017_MET_EraE_1747.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraE_0001/Ntuple_data2017_MET_EraE_1748.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraE_0001/Ntuple_data2017_MET_EraE_1749.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraE_0001/Ntuple_data2017_MET_EraE_1750.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraE_0001/Ntuple_data2017_MET_EraE_1751.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraE_0001/Ntuple_data2017_MET_EraE_1752.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraE_0001/Ntuple_data2017_MET_EraE_1753.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraE_0001/Ntuple_data2017_MET_EraE_1754.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraE_0001/Ntuple_data2017_MET_EraE_1755.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraE_0001/Ntuple_data2017_MET_EraE_1756.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraE_0001/Ntuple_data2017_MET_EraE_1757.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraE_0001/Ntuple_data2017_MET_EraE_1758.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraE_0001/Ntuple_data2017_MET_EraE_1759.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraE_0001/Ntuple_data2017_MET_EraE_1760.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraE_0001/Ntuple_data2017_MET_EraE_1761.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraE_0001/Ntuple_data2017_MET_EraE_1762.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraE_0001/Ntuple_data2017_MET_EraE_1763.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraE_0001/Ntuple_data2017_MET_EraE_1764.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraE_0001/Ntuple_data2017_MET_EraE_1765.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraE_0001/Ntuple_data2017_MET_EraE_1766.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraE_0001/Ntuple_data2017_MET_EraE_1767.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraE_0001/Ntuple_data2017_MET_EraE_1768.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraE_0001/Ntuple_data2017_MET_EraE_1769.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraE_0001/Ntuple_data2017_MET_EraE_1770.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraE_0001/Ntuple_data2017_MET_EraE_1771.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraE_0001/Ntuple_data2017_MET_EraE_1772.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraE_0001/Ntuple_data2017_MET_EraE_1773.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraE_0001/Ntuple_data2017_MET_EraE_1774.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraE_0001/Ntuple_data2017_MET_EraE_1775.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraE_0001/Ntuple_data2017_MET_EraE_1776.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraE_0001/Ntuple_data2017_MET_EraE_1777.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraE_0001/Ntuple_data2017_MET_EraE_1778.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraE_0001/Ntuple_data2017_MET_EraE_1779.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraE_0001/Ntuple_data2017_MET_EraE_1780.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraE_0001/Ntuple_data2017_MET_EraE_1781.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraE_0001/Ntuple_data2017_MET_EraE_1782.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraE_0001/Ntuple_data2017_MET_EraE_1783.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraE_0001/Ntuple_data2017_MET_EraE_1784.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraE_0001/Ntuple_data2017_MET_EraE_1785.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraE_0001/Ntuple_data2017_MET_EraE_1786.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraE_0001/Ntuple_data2017_MET_EraE_1787.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraE_0001/Ntuple_data2017_MET_EraE_1788.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraE_0001/Ntuple_data2017_MET_EraE_1789.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraE_0001/Ntuple_data2017_MET_EraE_1790.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraE_0001/Ntuple_data2017_MET_EraE_1791.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraE_0001/Ntuple_data2017_MET_EraE_1792.root
mv MET_EraE_0001_07.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau_hadd/ 
