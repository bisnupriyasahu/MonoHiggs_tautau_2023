#!/bin/sh

currentDir=${PWD}
outDir="dataset"
export CMSSW_RELEASE_BASE=/cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5/

chmod 775 $outDir/${1}_hadd.sh
cat > $outDir/condor_${1}<<EOF
x509userproxy = /tmp/x509up_u4548
universe = vanilla
Executable = $outDir/${1}_hadd.sh
Notification         = never
WhenToTransferOutput = On_Exit
ShouldTransferFiles  = yes
Requirements = (TARGET.HAS_CMS_HDFS && OpSysAndVer == "CENTOS7" && TARGET.Arch == "X86_64" && (MY.RequiresSharedFS=!=true || TARGET.HasAFS_OSG) && (TARGET.HAS_OSG_WN_CLIENT =?= TRUE || TARGET.IS_GLIDEIN=?=true) && IsSlowSlot=!=true)
on_exit_remove       = (ExitBySignal == FALSE && (ExitCode == 0 || ExitCode == 42 || NumJobStarts>3))
+IsFastQueueJob      = True
getenv               = True
request_memory       = 8G
request_disk         = 30G

#OutputDestination = ${outdir}
#Initialdir = Out_${7}         
Transfer_Input_Files = ${currentDir}/dataset/${1}_hadd.sh

output               = $outDir/\$(Cluster)_\$(Process)_${1}.out
error                = $outDir/\$(Cluster)_\$(Process)_${1}.err
Log                  = $outDir/\$(Cluster)_\$(Process)_${1}.log
Queue 
EOF

condor_submit $outDir/condor_${1}
