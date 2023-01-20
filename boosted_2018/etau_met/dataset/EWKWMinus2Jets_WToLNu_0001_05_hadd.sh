#!/bin/sh
source /cvmfs/cms.cern.ch/cmsset_default.sh 
cd /cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5/
eval export CMSSW_RELEASE_BASE="/cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5";
export PATH="/cvmfs/cms.cern.ch/share/overrides/bin:/nfs_scratch/jmadhusu/CMSSW_12_3_5/bin/slc7_amd64_gcc10:/nfs_scratch/jmadhusu/CMSSW_12_3_5/external/slc7_amd64_gcc10/bin:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5/bin/slc7_amd64_gcc10:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5/external/slc7_amd64_gcc10/bin:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/external/llvm/12.0.1-98ba1be77003441f04b47ab03db13dc0/bin:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/external/gcc/10.3.0-84898dea653199466402e67d73657f10/bin:/cvmfs/cms.cern.ch/common:/cvmfs/cms.cern.ch/common:/usr/local/bin/smb:/usr/local/bin/raid:/usr/lib64/qt-3.3/bin:/usr/local/etc:/usr/local/bin/hadoop:/usr/local/bin/firstboot:/usr/local/bin/defaultcls:/usr/condabin:/usr/local/bin/cephdir:/usr/local/bin/afs:/usr/local/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/opt/puppetlabs/bin:/afs/hep.wisc.edu/home/ms/bin";
cd ${_CONDOR_SCRATCH_DIR}


hadd EWKWMinus2Jets_WToLNu_0001_05.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1496.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1497.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1498.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1499.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1500.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1501.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1502.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1503.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1504.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1505.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1506.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1507.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1508.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1509.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1510.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1511.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1512.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1513.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1514.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1515.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1516.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1517.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1518.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1519.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1520.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1521.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1522.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1523.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1524.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1525.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1526.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1527.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1528.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1529.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1530.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1531.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1532.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1533.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1534.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1535.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1536.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1537.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1538.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1539.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1540.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1541.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1542.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1543.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1544.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1545.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1546.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1548.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1549.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1550.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1551.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1552.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1553.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1554.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1555.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1556.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1557.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1558.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1559.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1560.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1561.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1562.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1563.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1564.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1565.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1566.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1567.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1568.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1569.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1570.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1571.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1572.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1573.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1574.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1575.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1576.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1577.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1578.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1579.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1580.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1581.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1582.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1583.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1584.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1585.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1586.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1587.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1588.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1589.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1590.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1591.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1592.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1593.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1594.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1595.root
mv EWKWMinus2Jets_WToLNu_0001_05.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau_hadd/ 
