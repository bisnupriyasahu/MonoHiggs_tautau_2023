#!/bin/sh
source /cvmfs/cms.cern.ch/cmsset_default.sh 
cd /cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5/
eval export CMSSW_RELEASE_BASE="/cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5";
export PATH="/cvmfs/cms.cern.ch/share/overrides/bin:/nfs_scratch/jmadhusu/CMSSW_12_3_5/bin/slc7_amd64_gcc10:/nfs_scratch/jmadhusu/CMSSW_12_3_5/external/slc7_amd64_gcc10/bin:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5/bin/slc7_amd64_gcc10:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5/external/slc7_amd64_gcc10/bin:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/external/llvm/12.0.1-98ba1be77003441f04b47ab03db13dc0/bin:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/external/gcc/10.3.0-84898dea653199466402e67d73657f10/bin:/cvmfs/cms.cern.ch/common:/cvmfs/cms.cern.ch/common:/usr/local/bin/smb:/usr/local/bin/raid:/usr/lib64/qt-3.3/bin:/usr/local/etc:/usr/local/bin/hadoop:/usr/local/bin/firstboot:/usr/local/bin/defaultcls:/usr/condabin:/usr/local/bin/cephdir:/usr/local/bin/afs:/usr/local/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/opt/puppetlabs/bin:/afs/hep.wisc.edu/home/ms/bin";
cd ${_CONDOR_SCRATCH_DIR}


hadd TTTo2L2Nu_powheg_0001_06.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1595.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1596.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1597.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1598.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1599.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1600.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1601.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1602.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1603.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1604.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1605.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1606.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1607.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1608.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1609.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1610.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1611.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1612.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1613.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1614.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1615.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1616.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1617.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1618.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1619.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1620.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1621.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1622.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1623.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1624.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1625.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1626.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1627.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1628.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1629.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1630.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1631.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1632.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1633.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1634.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1635.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1636.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1637.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1638.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1639.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1640.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1641.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1642.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1643.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1644.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1645.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1646.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1647.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1648.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1649.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1650.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1651.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1652.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1653.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1654.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1655.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1656.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1657.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1658.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1659.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1660.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1661.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1662.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1663.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1664.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1665.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1666.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1667.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1668.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1669.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1670.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1671.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1672.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1673.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1674.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1675.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1676.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1677.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1678.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1679.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1680.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1681.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1682.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1683.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1684.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1685.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1686.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1687.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1688.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1689.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1690.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1691.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1692.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/TTTo2L2Nu_powheg_0001/Ntuple_mc_1-1693.root
mv TTTo2L2Nu_powheg_0001_06.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau_hadd/ 
