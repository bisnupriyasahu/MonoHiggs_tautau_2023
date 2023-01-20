#!/bin/sh
source /cvmfs/cms.cern.ch/cmsset_default.sh 
cd /cvmfs/cms.cern.ch/slc7_amd64_gcc630/cms/cmssw/CMSSW_9_4_13/
eval export CMSSW_RELEASE_BASE="/cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5";
export PATH="/cvmfs/cms.cern.ch/share/overrides/bin:/nfs_scratch/jmadhusu/CMSSW_12_3_5/bin/slc7_amd64_gcc10:/nfs_scratch/jmadhusu/CMSSW_12_3_5/external/slc7_amd64_gcc10/bin:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5/bin/slc7_amd64_gcc10:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5/external/slc7_amd64_gcc10/bin:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/external/llvm/12.0.1-98ba1be77003441f04b47ab03db13dc0/bin:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/external/gcc/10.3.0-84898dea653199466402e67d73657f10/bin:/cvmfs/cms.cern.ch/common:/cvmfs/cms.cern.ch/common:/usr/local/bin/smb:/usr/local/bin/raid:/usr/lib64/qt-3.3/bin:/usr/local/etc:/usr/local/bin/hadoop:/usr/local/bin/firstboot:/usr/local/bin/defaultcls:/usr/condabin:/usr/local/bin/cephdir:/usr/local/bin/afs:/usr/local/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/opt/puppetlabs/bin:/afs/hep.wisc.edu/home/ms/bin";
cd ${_CONDOR_SCRATCH_DIR}


hadd TTToHadronic_TuneCP5_00_00.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/TTToHadronic_TuneCP5_00/TTToHadronic_TuneCP5_00_1.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/TTToHadronic_TuneCP5_00/TTToHadronic_TuneCP5_00_10.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/TTToHadronic_TuneCP5_00/TTToHadronic_TuneCP5_00_100.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/TTToHadronic_TuneCP5_00/TTToHadronic_TuneCP5_00_101.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/TTToHadronic_TuneCP5_00/TTToHadronic_TuneCP5_00_102.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/TTToHadronic_TuneCP5_00/TTToHadronic_TuneCP5_00_103.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/TTToHadronic_TuneCP5_00/TTToHadronic_TuneCP5_00_104.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/TTToHadronic_TuneCP5_00/TTToHadronic_TuneCP5_00_105.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/TTToHadronic_TuneCP5_00/TTToHadronic_TuneCP5_00_106.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/TTToHadronic_TuneCP5_00/TTToHadronic_TuneCP5_00_107.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/TTToHadronic_TuneCP5_00/TTToHadronic_TuneCP5_00_108.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/TTToHadronic_TuneCP5_00/TTToHadronic_TuneCP5_00_109.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/TTToHadronic_TuneCP5_00/TTToHadronic_TuneCP5_00_11.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/TTToHadronic_TuneCP5_00/TTToHadronic_TuneCP5_00_110.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/TTToHadronic_TuneCP5_00/TTToHadronic_TuneCP5_00_111.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/TTToHadronic_TuneCP5_00/TTToHadronic_TuneCP5_00_113.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/TTToHadronic_TuneCP5_00/TTToHadronic_TuneCP5_00_114.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/TTToHadronic_TuneCP5_00/TTToHadronic_TuneCP5_00_115.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/TTToHadronic_TuneCP5_00/TTToHadronic_TuneCP5_00_116.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/TTToHadronic_TuneCP5_00/TTToHadronic_TuneCP5_00_117.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/TTToHadronic_TuneCP5_00/TTToHadronic_TuneCP5_00_118.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/TTToHadronic_TuneCP5_00/TTToHadronic_TuneCP5_00_119.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/TTToHadronic_TuneCP5_00/TTToHadronic_TuneCP5_00_12.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/TTToHadronic_TuneCP5_00/TTToHadronic_TuneCP5_00_120.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/TTToHadronic_TuneCP5_00/TTToHadronic_TuneCP5_00_121.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/TTToHadronic_TuneCP5_00/TTToHadronic_TuneCP5_00_122.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/TTToHadronic_TuneCP5_00/TTToHadronic_TuneCP5_00_123.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/TTToHadronic_TuneCP5_00/TTToHadronic_TuneCP5_00_124.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/TTToHadronic_TuneCP5_00/TTToHadronic_TuneCP5_00_125.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/TTToHadronic_TuneCP5_00/TTToHadronic_TuneCP5_00_126.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/TTToHadronic_TuneCP5_00/TTToHadronic_TuneCP5_00_127.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/TTToHadronic_TuneCP5_00/TTToHadronic_TuneCP5_00_128.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/TTToHadronic_TuneCP5_00/TTToHadronic_TuneCP5_00_129.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/TTToHadronic_TuneCP5_00/TTToHadronic_TuneCP5_00_13.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/TTToHadronic_TuneCP5_00/TTToHadronic_TuneCP5_00_130.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/TTToHadronic_TuneCP5_00/TTToHadronic_TuneCP5_00_131.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/TTToHadronic_TuneCP5_00/TTToHadronic_TuneCP5_00_132.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/TTToHadronic_TuneCP5_00/TTToHadronic_TuneCP5_00_133.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/TTToHadronic_TuneCP5_00/TTToHadronic_TuneCP5_00_134.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/TTToHadronic_TuneCP5_00/TTToHadronic_TuneCP5_00_135.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/TTToHadronic_TuneCP5_00/TTToHadronic_TuneCP5_00_136.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/TTToHadronic_TuneCP5_00/TTToHadronic_TuneCP5_00_137.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/TTToHadronic_TuneCP5_00/TTToHadronic_TuneCP5_00_138.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/TTToHadronic_TuneCP5_00/TTToHadronic_TuneCP5_00_139.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/TTToHadronic_TuneCP5_00/TTToHadronic_TuneCP5_00_14.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/TTToHadronic_TuneCP5_00/TTToHadronic_TuneCP5_00_140.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/TTToHadronic_TuneCP5_00/TTToHadronic_TuneCP5_00_141.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/TTToHadronic_TuneCP5_00/TTToHadronic_TuneCP5_00_142.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/TTToHadronic_TuneCP5_00/TTToHadronic_TuneCP5_00_143.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/TTToHadronic_TuneCP5_00/TTToHadronic_TuneCP5_00_144.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/TTToHadronic_TuneCP5_00/TTToHadronic_TuneCP5_00_145.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/TTToHadronic_TuneCP5_00/TTToHadronic_TuneCP5_00_146.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/TTToHadronic_TuneCP5_00/TTToHadronic_TuneCP5_00_147.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/TTToHadronic_TuneCP5_00/TTToHadronic_TuneCP5_00_148.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/TTToHadronic_TuneCP5_00/TTToHadronic_TuneCP5_00_149.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/TTToHadronic_TuneCP5_00/TTToHadronic_TuneCP5_00_15.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/TTToHadronic_TuneCP5_00/TTToHadronic_TuneCP5_00_150.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/TTToHadronic_TuneCP5_00/TTToHadronic_TuneCP5_00_151.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/TTToHadronic_TuneCP5_00/TTToHadronic_TuneCP5_00_152.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/TTToHadronic_TuneCP5_00/TTToHadronic_TuneCP5_00_153.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/TTToHadronic_TuneCP5_00/TTToHadronic_TuneCP5_00_154.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/TTToHadronic_TuneCP5_00/TTToHadronic_TuneCP5_00_155.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/TTToHadronic_TuneCP5_00/TTToHadronic_TuneCP5_00_156.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/TTToHadronic_TuneCP5_00/TTToHadronic_TuneCP5_00_157.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/TTToHadronic_TuneCP5_00/TTToHadronic_TuneCP5_00_158.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/TTToHadronic_TuneCP5_00/TTToHadronic_TuneCP5_00_159.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/TTToHadronic_TuneCP5_00/TTToHadronic_TuneCP5_00_16.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/TTToHadronic_TuneCP5_00/TTToHadronic_TuneCP5_00_160.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/TTToHadronic_TuneCP5_00/TTToHadronic_TuneCP5_00_161.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/TTToHadronic_TuneCP5_00/TTToHadronic_TuneCP5_00_162.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/TTToHadronic_TuneCP5_00/TTToHadronic_TuneCP5_00_163.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/TTToHadronic_TuneCP5_00/TTToHadronic_TuneCP5_00_164.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/TTToHadronic_TuneCP5_00/TTToHadronic_TuneCP5_00_165.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/TTToHadronic_TuneCP5_00/TTToHadronic_TuneCP5_00_166.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/TTToHadronic_TuneCP5_00/TTToHadronic_TuneCP5_00_167.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/TTToHadronic_TuneCP5_00/TTToHadronic_TuneCP5_00_168.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/TTToHadronic_TuneCP5_00/TTToHadronic_TuneCP5_00_169.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/TTToHadronic_TuneCP5_00/TTToHadronic_TuneCP5_00_17.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/TTToHadronic_TuneCP5_00/TTToHadronic_TuneCP5_00_170.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/TTToHadronic_TuneCP5_00/TTToHadronic_TuneCP5_00_171.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/TTToHadronic_TuneCP5_00/TTToHadronic_TuneCP5_00_172.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/TTToHadronic_TuneCP5_00/TTToHadronic_TuneCP5_00_173.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/TTToHadronic_TuneCP5_00/TTToHadronic_TuneCP5_00_174.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/TTToHadronic_TuneCP5_00/TTToHadronic_TuneCP5_00_175.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/TTToHadronic_TuneCP5_00/TTToHadronic_TuneCP5_00_176.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/TTToHadronic_TuneCP5_00/TTToHadronic_TuneCP5_00_177.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/TTToHadronic_TuneCP5_00/TTToHadronic_TuneCP5_00_178.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/TTToHadronic_TuneCP5_00/TTToHadronic_TuneCP5_00_179.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/TTToHadronic_TuneCP5_00/TTToHadronic_TuneCP5_00_18.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/TTToHadronic_TuneCP5_00/TTToHadronic_TuneCP5_00_180.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/TTToHadronic_TuneCP5_00/TTToHadronic_TuneCP5_00_181.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/TTToHadronic_TuneCP5_00/TTToHadronic_TuneCP5_00_182.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/TTToHadronic_TuneCP5_00/TTToHadronic_TuneCP5_00_183.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/TTToHadronic_TuneCP5_00/TTToHadronic_TuneCP5_00_184.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/TTToHadronic_TuneCP5_00/TTToHadronic_TuneCP5_00_185.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/TTToHadronic_TuneCP5_00/TTToHadronic_TuneCP5_00_186.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/TTToHadronic_TuneCP5_00/TTToHadronic_TuneCP5_00_187.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/TTToHadronic_TuneCP5_00/TTToHadronic_TuneCP5_00_188.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/TTToHadronic_TuneCP5_00/TTToHadronic_TuneCP5_00_189.root
mv TTToHadronic_TuneCP5_00_00.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau_hadd/ 
