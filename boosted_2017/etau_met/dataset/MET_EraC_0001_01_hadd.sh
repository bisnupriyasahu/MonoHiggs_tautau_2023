#!/bin/sh
source /cvmfs/cms.cern.ch/cmsset_default.sh 
cd /cvmfs/cms.cern.ch/slc7_amd64_gcc630/cms/cmssw/CMSSW_9_4_13/
eval export CMSSW_RELEASE_BASE="/cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5";
export PATH="/cvmfs/cms.cern.ch/share/overrides/bin:/nfs_scratch/jmadhusu/CMSSW_12_3_5/bin/slc7_amd64_gcc10:/nfs_scratch/jmadhusu/CMSSW_12_3_5/external/slc7_amd64_gcc10/bin:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5/bin/slc7_amd64_gcc10:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5/external/slc7_amd64_gcc10/bin:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/external/llvm/12.0.1-98ba1be77003441f04b47ab03db13dc0/bin:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/external/gcc/10.3.0-84898dea653199466402e67d73657f10/bin:/cvmfs/cms.cern.ch/common:/cvmfs/cms.cern.ch/common:/usr/local/bin/smb:/usr/local/bin/raid:/usr/lib64/qt-3.3/bin:/usr/local/etc:/usr/local/bin/hadoop:/usr/local/bin/firstboot:/usr/local/bin/defaultcls:/usr/condabin:/usr/local/bin/cephdir:/usr/local/bin/afs:/usr/local/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/opt/puppetlabs/bin:/afs/hep.wisc.edu/home/ms/bin";
cd ${_CONDOR_SCRATCH_DIR}


hadd MET_EraC_0001_01.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraC_0001/Ntuple_data2017_MET_EraC_1600.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraC_0001/Ntuple_data2017_MET_EraC_1601.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraC_0001/Ntuple_data2017_MET_EraC_1602.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraC_0001/Ntuple_data2017_MET_EraC_1603.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraC_0001/Ntuple_data2017_MET_EraC_1604.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraC_0001/Ntuple_data2017_MET_EraC_1605.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraC_0001/Ntuple_data2017_MET_EraC_1606.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraC_0001/Ntuple_data2017_MET_EraC_1607.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraC_0001/Ntuple_data2017_MET_EraC_1608.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraC_0001/Ntuple_data2017_MET_EraC_1609.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraC_0001/Ntuple_data2017_MET_EraC_1610.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraC_0001/Ntuple_data2017_MET_EraC_1611.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraC_0001/Ntuple_data2017_MET_EraC_1612.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraC_0001/Ntuple_data2017_MET_EraC_1613.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraC_0001/Ntuple_data2017_MET_EraC_1614.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraC_0001/Ntuple_data2017_MET_EraC_1615.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraC_0001/Ntuple_data2017_MET_EraC_1616.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraC_0001/Ntuple_data2017_MET_EraC_1617.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraC_0001/Ntuple_data2017_MET_EraC_1618.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraC_0001/Ntuple_data2017_MET_EraC_1619.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraC_0001/Ntuple_data2017_MET_EraC_1620.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraC_0001/Ntuple_data2017_MET_EraC_1621.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraC_0001/Ntuple_data2017_MET_EraC_1622.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraC_0001/Ntuple_data2017_MET_EraC_1623.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraC_0001/Ntuple_data2017_MET_EraC_1624.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraC_0001/Ntuple_data2017_MET_EraC_1625.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraC_0001/Ntuple_data2017_MET_EraC_1626.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraC_0001/Ntuple_data2017_MET_EraC_1627.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraC_0001/Ntuple_data2017_MET_EraC_1628.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraC_0001/Ntuple_data2017_MET_EraC_1629.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraC_0001/Ntuple_data2017_MET_EraC_1630.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraC_0001/Ntuple_data2017_MET_EraC_1631.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraC_0001/Ntuple_data2017_MET_EraC_1632.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraC_0001/Ntuple_data2017_MET_EraC_1633.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraC_0001/Ntuple_data2017_MET_EraC_1634.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraC_0001/Ntuple_data2017_MET_EraC_1635.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraC_0001/Ntuple_data2017_MET_EraC_1636.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraC_0001/Ntuple_data2017_MET_EraC_1637.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraC_0001/Ntuple_data2017_MET_EraC_1638.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraC_0001/Ntuple_data2017_MET_EraC_1639.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraC_0001/Ntuple_data2017_MET_EraC_1640.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraC_0001/Ntuple_data2017_MET_EraC_1641.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraC_0001/Ntuple_data2017_MET_EraC_1642.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraC_0001/Ntuple_data2017_MET_EraC_1643.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraC_0001/Ntuple_data2017_MET_EraC_1644.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraC_0001/Ntuple_data2017_MET_EraC_1645.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraC_0001/Ntuple_data2017_MET_EraC_1646.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraC_0001/Ntuple_data2017_MET_EraC_1647.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraC_0001/Ntuple_data2017_MET_EraC_1648.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraC_0001/Ntuple_data2017_MET_EraC_1649.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraC_0001/Ntuple_data2017_MET_EraC_1650.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraC_0001/Ntuple_data2017_MET_EraC_1651.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraC_0001/Ntuple_data2017_MET_EraC_1652.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraC_0001/Ntuple_data2017_MET_EraC_1653.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraC_0001/Ntuple_data2017_MET_EraC_1654.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraC_0001/Ntuple_data2017_MET_EraC_1655.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraC_0001/Ntuple_data2017_MET_EraC_1656.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraC_0001/Ntuple_data2017_MET_EraC_1657.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraC_0001/Ntuple_data2017_MET_EraC_1658.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraC_0001/Ntuple_data2017_MET_EraC_1659.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraC_0001/Ntuple_data2017_MET_EraC_1660.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraC_0001/Ntuple_data2017_MET_EraC_1661.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraC_0001/Ntuple_data2017_MET_EraC_1662.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraC_0001/Ntuple_data2017_MET_EraC_1663.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraC_0001/Ntuple_data2017_MET_EraC_1664.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraC_0001/Ntuple_data2017_MET_EraC_1665.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraC_0001/Ntuple_data2017_MET_EraC_1666.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraC_0001/Ntuple_data2017_MET_EraC_1667.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraC_0001/Ntuple_data2017_MET_EraC_1668.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraC_0001/Ntuple_data2017_MET_EraC_1669.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraC_0001/Ntuple_data2017_MET_EraC_1670.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraC_0001/Ntuple_data2017_MET_EraC_1671.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraC_0001/Ntuple_data2017_MET_EraC_1672.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraC_0001/Ntuple_data2017_MET_EraC_1673.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraC_0001/Ntuple_data2017_MET_EraC_1674.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraC_0001/Ntuple_data2017_MET_EraC_1675.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraC_0001/Ntuple_data2017_MET_EraC_1676.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraC_0001/Ntuple_data2017_MET_EraC_1677.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraC_0001/Ntuple_data2017_MET_EraC_1678.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraC_0001/Ntuple_data2017_MET_EraC_1679.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraC_0001/Ntuple_data2017_MET_EraC_1680.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraC_0001/Ntuple_data2017_MET_EraC_1681.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraC_0001/Ntuple_data2017_MET_EraC_1682.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraC_0001/Ntuple_data2017_MET_EraC_1683.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraC_0001/Ntuple_data2017_MET_EraC_1684.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraC_0001/Ntuple_data2017_MET_EraC_1685.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraC_0001/Ntuple_data2017_MET_EraC_1686.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraC_0001/Ntuple_data2017_MET_EraC_1687.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraC_0001/Ntuple_data2017_MET_EraC_1688.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraC_0001/Ntuple_data2017_MET_EraC_1689.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraC_0001/Ntuple_data2017_MET_EraC_1690.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraC_0001/Ntuple_data2017_MET_EraC_1691.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraC_0001/Ntuple_data2017_MET_EraC_1692.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraC_0001/Ntuple_data2017_MET_EraC_1693.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraC_0001/Ntuple_data2017_MET_EraC_1694.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraC_0001/Ntuple_data2017_MET_EraC_1695.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraC_0001/Ntuple_data2017_MET_EraC_1696.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraC_0001/Ntuple_data2017_MET_EraC_1697.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraC_0001/Ntuple_data2017_MET_EraC_1698.root
mv MET_EraC_0001_01.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau_hadd/ 
