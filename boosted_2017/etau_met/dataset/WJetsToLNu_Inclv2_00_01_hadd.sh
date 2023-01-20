#!/bin/sh
source /cvmfs/cms.cern.ch/cmsset_default.sh 
cd /cvmfs/cms.cern.ch/slc7_amd64_gcc630/cms/cmssw/CMSSW_9_4_13/
eval export CMSSW_RELEASE_BASE="/cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5";
export PATH="/cvmfs/cms.cern.ch/share/overrides/bin:/nfs_scratch/jmadhusu/CMSSW_12_3_5/bin/slc7_amd64_gcc10:/nfs_scratch/jmadhusu/CMSSW_12_3_5/external/slc7_amd64_gcc10/bin:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5/bin/slc7_amd64_gcc10:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5/external/slc7_amd64_gcc10/bin:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/external/llvm/12.0.1-98ba1be77003441f04b47ab03db13dc0/bin:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/external/gcc/10.3.0-84898dea653199466402e67d73657f10/bin:/cvmfs/cms.cern.ch/common:/cvmfs/cms.cern.ch/common:/usr/local/bin/smb:/usr/local/bin/raid:/usr/lib64/qt-3.3/bin:/usr/local/etc:/usr/local/bin/hadoop:/usr/local/bin/firstboot:/usr/local/bin/defaultcls:/usr/condabin:/usr/local/bin/cephdir:/usr/local/bin/afs:/usr/local/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/opt/puppetlabs/bin:/afs/hep.wisc.edu/home/ms/bin";
cd ${_CONDOR_SCRATCH_DIR}


hadd WJetsToLNu_Inclv2_00_01.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/WJetsToLNu_Inclv2_00/WJetsToLNu_Inclv2_00_19.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/WJetsToLNu_Inclv2_00/WJetsToLNu_Inclv2_00_190.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/WJetsToLNu_Inclv2_00/WJetsToLNu_Inclv2_00_191.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/WJetsToLNu_Inclv2_00/WJetsToLNu_Inclv2_00_192.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/WJetsToLNu_Inclv2_00/WJetsToLNu_Inclv2_00_193.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/WJetsToLNu_Inclv2_00/WJetsToLNu_Inclv2_00_194.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/WJetsToLNu_Inclv2_00/WJetsToLNu_Inclv2_00_195.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/WJetsToLNu_Inclv2_00/WJetsToLNu_Inclv2_00_196.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/WJetsToLNu_Inclv2_00/WJetsToLNu_Inclv2_00_197.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/WJetsToLNu_Inclv2_00/WJetsToLNu_Inclv2_00_198.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/WJetsToLNu_Inclv2_00/WJetsToLNu_Inclv2_00_199.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/WJetsToLNu_Inclv2_00/WJetsToLNu_Inclv2_00_2.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/WJetsToLNu_Inclv2_00/WJetsToLNu_Inclv2_00_20.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/WJetsToLNu_Inclv2_00/WJetsToLNu_Inclv2_00_200.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/WJetsToLNu_Inclv2_00/WJetsToLNu_Inclv2_00_201.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/WJetsToLNu_Inclv2_00/WJetsToLNu_Inclv2_00_202.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/WJetsToLNu_Inclv2_00/WJetsToLNu_Inclv2_00_203.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/WJetsToLNu_Inclv2_00/WJetsToLNu_Inclv2_00_204.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/WJetsToLNu_Inclv2_00/WJetsToLNu_Inclv2_00_205.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/WJetsToLNu_Inclv2_00/WJetsToLNu_Inclv2_00_206.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/WJetsToLNu_Inclv2_00/WJetsToLNu_Inclv2_00_207.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/WJetsToLNu_Inclv2_00/WJetsToLNu_Inclv2_00_208.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/WJetsToLNu_Inclv2_00/WJetsToLNu_Inclv2_00_209.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/WJetsToLNu_Inclv2_00/WJetsToLNu_Inclv2_00_21.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/WJetsToLNu_Inclv2_00/WJetsToLNu_Inclv2_00_210.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/WJetsToLNu_Inclv2_00/WJetsToLNu_Inclv2_00_211.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/WJetsToLNu_Inclv2_00/WJetsToLNu_Inclv2_00_212.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/WJetsToLNu_Inclv2_00/WJetsToLNu_Inclv2_00_213.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/WJetsToLNu_Inclv2_00/WJetsToLNu_Inclv2_00_214.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/WJetsToLNu_Inclv2_00/WJetsToLNu_Inclv2_00_215.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/WJetsToLNu_Inclv2_00/WJetsToLNu_Inclv2_00_216.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/WJetsToLNu_Inclv2_00/WJetsToLNu_Inclv2_00_217.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/WJetsToLNu_Inclv2_00/WJetsToLNu_Inclv2_00_218.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/WJetsToLNu_Inclv2_00/WJetsToLNu_Inclv2_00_219.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/WJetsToLNu_Inclv2_00/WJetsToLNu_Inclv2_00_22.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/WJetsToLNu_Inclv2_00/WJetsToLNu_Inclv2_00_220.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/WJetsToLNu_Inclv2_00/WJetsToLNu_Inclv2_00_221.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/WJetsToLNu_Inclv2_00/WJetsToLNu_Inclv2_00_222.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/WJetsToLNu_Inclv2_00/WJetsToLNu_Inclv2_00_223.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/WJetsToLNu_Inclv2_00/WJetsToLNu_Inclv2_00_224.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/WJetsToLNu_Inclv2_00/WJetsToLNu_Inclv2_00_225.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/WJetsToLNu_Inclv2_00/WJetsToLNu_Inclv2_00_226.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/WJetsToLNu_Inclv2_00/WJetsToLNu_Inclv2_00_227.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/WJetsToLNu_Inclv2_00/WJetsToLNu_Inclv2_00_228.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/WJetsToLNu_Inclv2_00/WJetsToLNu_Inclv2_00_229.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/WJetsToLNu_Inclv2_00/WJetsToLNu_Inclv2_00_23.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/WJetsToLNu_Inclv2_00/WJetsToLNu_Inclv2_00_230.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/WJetsToLNu_Inclv2_00/WJetsToLNu_Inclv2_00_231.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/WJetsToLNu_Inclv2_00/WJetsToLNu_Inclv2_00_232.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/WJetsToLNu_Inclv2_00/WJetsToLNu_Inclv2_00_233.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/WJetsToLNu_Inclv2_00/WJetsToLNu_Inclv2_00_234.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/WJetsToLNu_Inclv2_00/WJetsToLNu_Inclv2_00_235.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/WJetsToLNu_Inclv2_00/WJetsToLNu_Inclv2_00_236.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/WJetsToLNu_Inclv2_00/WJetsToLNu_Inclv2_00_237.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/WJetsToLNu_Inclv2_00/WJetsToLNu_Inclv2_00_238.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/WJetsToLNu_Inclv2_00/WJetsToLNu_Inclv2_00_239.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/WJetsToLNu_Inclv2_00/WJetsToLNu_Inclv2_00_24.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/WJetsToLNu_Inclv2_00/WJetsToLNu_Inclv2_00_240.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/WJetsToLNu_Inclv2_00/WJetsToLNu_Inclv2_00_241.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/WJetsToLNu_Inclv2_00/WJetsToLNu_Inclv2_00_242.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/WJetsToLNu_Inclv2_00/WJetsToLNu_Inclv2_00_243.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/WJetsToLNu_Inclv2_00/WJetsToLNu_Inclv2_00_244.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/WJetsToLNu_Inclv2_00/WJetsToLNu_Inclv2_00_245.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/WJetsToLNu_Inclv2_00/WJetsToLNu_Inclv2_00_246.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/WJetsToLNu_Inclv2_00/WJetsToLNu_Inclv2_00_247.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/WJetsToLNu_Inclv2_00/WJetsToLNu_Inclv2_00_248.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/WJetsToLNu_Inclv2_00/WJetsToLNu_Inclv2_00_249.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/WJetsToLNu_Inclv2_00/WJetsToLNu_Inclv2_00_25.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/WJetsToLNu_Inclv2_00/WJetsToLNu_Inclv2_00_250.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/WJetsToLNu_Inclv2_00/WJetsToLNu_Inclv2_00_251.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/WJetsToLNu_Inclv2_00/WJetsToLNu_Inclv2_00_252.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/WJetsToLNu_Inclv2_00/WJetsToLNu_Inclv2_00_253.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/WJetsToLNu_Inclv2_00/WJetsToLNu_Inclv2_00_254.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/WJetsToLNu_Inclv2_00/WJetsToLNu_Inclv2_00_255.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/WJetsToLNu_Inclv2_00/WJetsToLNu_Inclv2_00_256.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/WJetsToLNu_Inclv2_00/WJetsToLNu_Inclv2_00_257.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/WJetsToLNu_Inclv2_00/WJetsToLNu_Inclv2_00_258.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/WJetsToLNu_Inclv2_00/WJetsToLNu_Inclv2_00_259.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/WJetsToLNu_Inclv2_00/WJetsToLNu_Inclv2_00_26.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/WJetsToLNu_Inclv2_00/WJetsToLNu_Inclv2_00_260.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/WJetsToLNu_Inclv2_00/WJetsToLNu_Inclv2_00_261.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/WJetsToLNu_Inclv2_00/WJetsToLNu_Inclv2_00_262.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/WJetsToLNu_Inclv2_00/WJetsToLNu_Inclv2_00_263.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/WJetsToLNu_Inclv2_00/WJetsToLNu_Inclv2_00_264.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/WJetsToLNu_Inclv2_00/WJetsToLNu_Inclv2_00_265.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/WJetsToLNu_Inclv2_00/WJetsToLNu_Inclv2_00_266.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/WJetsToLNu_Inclv2_00/WJetsToLNu_Inclv2_00_267.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/WJetsToLNu_Inclv2_00/WJetsToLNu_Inclv2_00_268.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/WJetsToLNu_Inclv2_00/WJetsToLNu_Inclv2_00_269.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/WJetsToLNu_Inclv2_00/WJetsToLNu_Inclv2_00_27.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/WJetsToLNu_Inclv2_00/WJetsToLNu_Inclv2_00_270.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/WJetsToLNu_Inclv2_00/WJetsToLNu_Inclv2_00_271.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/WJetsToLNu_Inclv2_00/WJetsToLNu_Inclv2_00_272.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/WJetsToLNu_Inclv2_00/WJetsToLNu_Inclv2_00_273.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/WJetsToLNu_Inclv2_00/WJetsToLNu_Inclv2_00_274.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/WJetsToLNu_Inclv2_00/WJetsToLNu_Inclv2_00_275.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/WJetsToLNu_Inclv2_00/WJetsToLNu_Inclv2_00_276.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/WJetsToLNu_Inclv2_00/WJetsToLNu_Inclv2_00_277.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/WJetsToLNu_Inclv2_00/WJetsToLNu_Inclv2_00_278.root
mv WJetsToLNu_Inclv2_00_01.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau_hadd/ 
