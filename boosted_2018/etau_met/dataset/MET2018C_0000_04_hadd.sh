#!/bin/sh
source /cvmfs/cms.cern.ch/cmsset_default.sh 
cd /cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5/
eval export CMSSW_RELEASE_BASE="/cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5";
export PATH="/cvmfs/cms.cern.ch/share/overrides/bin:/nfs_scratch/jmadhusu/CMSSW_12_3_5/bin/slc7_amd64_gcc10:/nfs_scratch/jmadhusu/CMSSW_12_3_5/external/slc7_amd64_gcc10/bin:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5/bin/slc7_amd64_gcc10:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5/external/slc7_amd64_gcc10/bin:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/external/llvm/12.0.1-98ba1be77003441f04b47ab03db13dc0/bin:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/external/gcc/10.3.0-84898dea653199466402e67d73657f10/bin:/cvmfs/cms.cern.ch/common:/cvmfs/cms.cern.ch/common:/usr/local/bin/smb:/usr/local/bin/raid:/usr/lib64/qt-3.3/bin:/usr/local/etc:/usr/local/bin/hadoop:/usr/local/bin/firstboot:/usr/local/bin/defaultcls:/usr/condabin:/usr/local/bin/cephdir:/usr/local/bin/afs:/usr/local/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/opt/puppetlabs/bin:/afs/hep.wisc.edu/home/ms/bin";
cd ${_CONDOR_SCRATCH_DIR}


hadd MET2018C_0000_04.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-457.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-458.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-459.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-46.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-460.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-461.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-462.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-463.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-464.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-465.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-466.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-467.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-468.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-469.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-47.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-470.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-471.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-472.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-473.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-474.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-475.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-476.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-477.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-478.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-479.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-48.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-480.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-481.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-482.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-483.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-484.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-485.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-486.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-487.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-488.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-489.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-49.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-490.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-491.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-492.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-493.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-494.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-495.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-496.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-497.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-498.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-499.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-5.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-50.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-500.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-501.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-502.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-503.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-504.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-505.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-506.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-507.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-508.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-509.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-51.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-510.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-511.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-512.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-513.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-514.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-515.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-516.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-517.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-518.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-519.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-52.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-520.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-521.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-522.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-523.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-524.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-525.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-526.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-527.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-528.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-529.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-53.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-530.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-531.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-532.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-533.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-534.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-535.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-536.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-537.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-538.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-539.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-54.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-540.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-541.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-542.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-543.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-544.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/MET2018C_0000/Ntuple_data2018_MET2018C_1-545.root
mv MET2018C_0000_04.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau_hadd/ 
