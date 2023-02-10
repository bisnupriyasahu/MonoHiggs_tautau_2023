#!/bin/sh


currentDir=${PWD}
outDir="Out_$(date +"%d-%m-%Y_%H-%M")"
mkdir $outDir
export CMSSW_RELEASE_BASE=/cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5/

cat > condor_job_${1}<<EOF
x509userproxy = /tmp/x509up_u4548
universe = vanilla
Executable = job_queue.sh
Notification         = never
WhenToTransferOutput = On_Exit
ShouldTransferFiles  = yes
Requirements = ( OpSysAndVer == "CENTOS7" && TARGET.Arch == "X86_64" && (MY.RequiresSharedFS=!=true || TARGET.HasAFS_OSG) && (TARGET.HAS_OSG_WN_CLIENT =?= TRUE || TARGET.IS_GLIDEIN=?=true) && IsSlowSlot=!=true)
on_exit_remove       = (ExitBySignal == FALSE && (ExitCode == 0 || ExitCode == 42 || NumJobStarts>3))
+IsFastQueueJob      = True
getenv               = True
request_memory       = 2G
request_disk         = 2G

#OutputDestination = 
#Initialdir = Out_         
arguments = analyze_mutau \$(hdfs_path) \$(sample) \$(file_name) \$(isData)
Transfer_Input_Files = ${currentDir}/met_samples_${1}.txt , ${currentDir}/analyze_mutau

output               = $outDir/\$(Cluster)_\$(Process)_\$(sample).out
error                = $outDir/\$(Cluster)_\$(Process)_\$(sample).err
Log                  = $outDir/\$(Cluster)_\$(Process)_\$(sample).log
Queue hdfs_path,sample,file_name,isData from met_samples_${1}.txt
EOF


condor_submit condor_job_${1}
