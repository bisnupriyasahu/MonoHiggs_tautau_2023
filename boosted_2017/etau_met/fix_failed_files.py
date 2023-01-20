import os
import glob

# /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/DY1JetsToLL_M-50_TuneCP5_00/DY1JetsToLL_M-50_TuneCP5_00_10.root
# /hdfs/store/user/jmadhusu/MC2017_12Apr2018_monoHiggs_27Aug2022/DY1JetsToLL_M-50_TuneCP5*/*/*/*01
era_map = {
 'DY1JetsToLL_M-50_TuneCP5_00' : '/hdfs/store/user/jmadhusu/MC2017_12Apr2018_monoHiggs_27Aug2022/DY1JetsToLL_M-50_TuneCP5_13TeV-madgraphMLM-pythia8/crab_job_DY1JetsToLL_M-50_TuneCP5/220827_053138/0000/' ,
 'DY1JetsToLL_M-50_TuneCP5_01' : '/hdfs/store/user/jmadhusu/MC2017_12Apr2018_monoHiggs_27Aug2022/DY1JetsToLL_M-50_TuneCP5_13TeV-madgraphMLM-pythia8/crab_job_DY1JetsToLL_M-50_TuneCP5/220827_053138/0001/' ,
 'DY1JetsToLL_M-50_TuneCP5_02' : '/hdfs/store/user/jmadhusu/MC2017_12Apr2018_monoHiggs_27Aug2022/DY1JetsToLL_M-50_TuneCP5_13TeV-madgraphMLM-pythia8/crab_job_DY1JetsToLL_M-50_TuneCP5/220827_053138/0002/' ,
 'DY1JetsToLL_M-50_TuneCP5_03' : '/hdfs/store/user/jmadhusu/MC2017_12Apr2018_monoHiggs_27Aug2022/DY1JetsToLL_M-50_TuneCP5_13TeV-madgraphMLM-pythia8/crab_job_DY1JetsToLL_M-50_TuneCP5/220827_053138/0003/' ,
 'DY1JetsToLL_M-50_TuneCP5_04' : '/hdfs/store/user/jmadhusu/MC2017_12Apr2018_monoHiggs_27Aug2022/DY1JetsToLL_M-50_TuneCP5_13TeV-madgraphMLM-pythia8/crab_job_DY1JetsToLL_M-50_TuneCP5/220827_053138/0004/' ,
 'DY1JetsToLL_M-50_TuneCP5_05' : '/hdfs/store/user/jmadhusu/MC2017_12Apr2018_monoHiggs_27Aug2022/DY1JetsToLL_M-50_TuneCP5_13TeV-madgraphMLM-pythia8/crab_job_DY1JetsToLL_M-50_TuneCP5/220827_053138/0005/' ,
 'DY2JetsToLL_M-50_TuneCP5_00' : '/hdfs/store/user/jmadhusu/MC2017_12Apr2018_monoHiggs_27Aug2022/DY2JetsToLL_M-50_TuneCP5_13TeV-madgraphMLM-pythia8/crab_job_DY2JetsToLL_M-50_TuneCP5/220827_053200/0000/' ,
 'DY3JetsToLL_M-50_TuneCP5_ext1_00' : '/hdfs/store/user/jmadhusu/MC2017_12Apr2018_monoHiggs_27Aug2022/DY3JetsToLL_M-50_TuneCP5_13TeV-madgraphMLM-pythia8/crab_job_DY3JetsToLL_M-50_TuneCP5_ext1/220827_053245/0000/' ,
 'DY3JetsToLL_M-50_TuneCP5_v1_00' : '/hdfs/store/user/jmadhusu/MC2017_12Apr2018_monoHiggs_27Aug2022/DY3JetsToLL_M-50_TuneCP5_13TeV-madgraphMLM-pythia8/crab_job_DY3JetsToLL_M-50_TuneCP5_v1/220827_053223/0000/' ,
 'DY4JetsToLL_M-50_TuneCP5_00' : '/hdfs/store/user/jmadhusu/MC2017_12Apr2018_monoHiggs_27Aug2022/DY4JetsToLL_M-50_TuneCP5_13TeV-madgraphMLM-pythia8/crab_job_DY4JetsToLL_M-50_TuneCP5/220827_053307/0000/' ,
 'DYJetsToLL_M-10to50_TuneCP5_00' : '/hdfs/store/user/jmadhusu/MC2017_12Apr2018_monoHiggs_27Aug2022/DYJetsToLL_M-10to50_TuneCP5_13TeV-madgraphMLM-pythia8/crab_job_DYJetsToLL_M-10to50_TuneCP5/220827_053116/0000/' ,
 'DYJetsToLL_M-50_TuneCP5_ext1_v1_00' : '/hdfs/store/user/jmadhusu/MC2017_12Apr2018_monoHiggs_27Aug2022/DYJetsToLL_M-50_TuneCP5_13TeV-madgraphMLM-pythia8/crab_job_DYJetsToLL_M-50_TuneCP5_ext1_v1/220827_053053/0000/' ,
 'DYJetsToLL_M-50_TuneCP5_ext1_v1_01' : '/hdfs/store/user/jmadhusu/MC2017_12Apr2018_monoHiggs_27Aug2022/DYJetsToLL_M-50_TuneCP5_13TeV-madgraphMLM-pythia8/crab_job_DYJetsToLL_M-50_TuneCP5_ext1_v1/220827_053053/0001/' ,
 'DYJetsToLL_M-50_TuneCP5_ext1_v1_02' : '/hdfs/store/user/jmadhusu/MC2017_12Apr2018_monoHiggs_27Aug2022/DYJetsToLL_M-50_TuneCP5_13TeV-madgraphMLM-pythia8/crab_job_DYJetsToLL_M-50_TuneCP5_ext1_v1/220827_053053/0002/' ,
 'DYJetsToLL_M-50_TuneCP5_ext1_v1_03' : '/hdfs/store/user/jmadhusu/MC2017_12Apr2018_monoHiggs_27Aug2022/DYJetsToLL_M-50_TuneCP5_13TeV-madgraphMLM-pythia8/crab_job_DYJetsToLL_M-50_TuneCP5_ext1_v1/220827_053053/0003/' ,
 'DYJetsToLL_M-50_TuneCP5_ext1_v1_04' : '/hdfs/store/user/jmadhusu/MC2017_12Apr2018_monoHiggs_27Aug2022/DYJetsToLL_M-50_TuneCP5_13TeV-madgraphMLM-pythia8/crab_job_DYJetsToLL_M-50_TuneCP5_ext1_v1/220827_053053/0004/' ,
 'DYJetsToLL_M-50_TuneCP5_ext1_v1_05' : '/hdfs/store/user/jmadhusu/MC2017_12Apr2018_monoHiggs_27Aug2022/DYJetsToLL_M-50_TuneCP5_13TeV-madgraphMLM-pythia8/crab_job_DYJetsToLL_M-50_TuneCP5_ext1_v1/220827_053053/0005/' ,
 'DYJetsToLL_M-50_TuneCP5_ext1_v1_06' : '/hdfs/store/user/jmadhusu/MC2017_12Apr2018_monoHiggs_27Aug2022/DYJetsToLL_M-50_TuneCP5_13TeV-madgraphMLM-pythia8/crab_job_DYJetsToLL_M-50_TuneCP5_ext1_v1/220827_053053/0006/' ,
 'DYJetsToLL_M-50_TuneCP5_ext1_v1_07' : '/hdfs/store/user/jmadhusu/MC2017_12Apr2018_monoHiggs_27Aug2022/DYJetsToLL_M-50_TuneCP5_13TeV-madgraphMLM-pythia8/crab_job_DYJetsToLL_M-50_TuneCP5_ext1_v1/220827_053053/0007/' ,
 'DYJetsToLL_M-50_TuneCP5_ext1_v1_08' : '/hdfs/store/user/jmadhusu/MC2017_12Apr2018_monoHiggs_27Aug2022/DYJetsToLL_M-50_TuneCP5_13TeV-madgraphMLM-pythia8/crab_job_DYJetsToLL_M-50_TuneCP5_ext1_v1/220827_053053/0008/' ,
 'DYJetsToLL_M-50_TuneCP5_ext1_v1_09' : '/hdfs/store/user/jmadhusu/MC2017_12Apr2018_monoHiggs_27Aug2022/DYJetsToLL_M-50_TuneCP5_13TeV-madgraphMLM-pythia8/crab_job_DYJetsToLL_M-50_TuneCP5_ext1_v1/220827_053053/0009/' ,
 'DYJetsToLL_M-50_TuneCP5_v1_00' : '/hdfs/store/user/jmadhusu/MC2017_12Apr2018_monoHiggs_27Aug2022/DYJetsToLL_M-50_TuneCP5_13TeV-madgraphMLM-pythia8/crab_job_DYJetsToLL_M-50_TuneCP5_v1/220827_053032/0000/' ,
 'DYJetsToLL_M-50_TuneCP5_v1_01' : '/hdfs/store/user/jmadhusu/MC2017_12Apr2018_monoHiggs_27Aug2022/DYJetsToLL_M-50_TuneCP5_13TeV-madgraphMLM-pythia8/crab_job_DYJetsToLL_M-50_TuneCP5_v1/220827_053032/0001/' ,
 'DYJetsToLL_M-50_TuneCP5_v1_02' : '/hdfs/store/user/jmadhusu/MC2017_12Apr2018_monoHiggs_27Aug2022/DYJetsToLL_M-50_TuneCP5_13TeV-madgraphMLM-pythia8/crab_job_DYJetsToLL_M-50_TuneCP5_v1/220827_053032/0002/' ,
 'DYJetsToLL_M-50_TuneCP5_v1_03' : '/hdfs/store/user/jmadhusu/MC2017_12Apr2018_monoHiggs_27Aug2022/DYJetsToLL_M-50_TuneCP5_13TeV-madgraphMLM-pythia8/crab_job_DYJetsToLL_M-50_TuneCP5_v1/220827_053032/0003/' ,
 'DYJetsToLL_M-50_TuneCP5_v1_04' : '/hdfs/store/user/jmadhusu/MC2017_12Apr2018_monoHiggs_27Aug2022/DYJetsToLL_M-50_TuneCP5_13TeV-madgraphMLM-pythia8/crab_job_DYJetsToLL_M-50_TuneCP5_v1/220827_053032/0004/' ,
 'DYJetsToLL_M-50_TuneCP5_v1_05' : '/hdfs/store/user/jmadhusu/MC2017_12Apr2018_monoHiggs_27Aug2022/DYJetsToLL_M-50_TuneCP5_13TeV-madgraphMLM-pythia8/crab_job_DYJetsToLL_M-50_TuneCP5_v1/220827_053032/0005/' ,
 'DYJetsToLL_M-50_TuneCP5_v1_06' : '/hdfs/store/user/jmadhusu/MC2017_12Apr2018_monoHiggs_27Aug2022/DYJetsToLL_M-50_TuneCP5_13TeV-madgraphMLM-pythia8/crab_job_DYJetsToLL_M-50_TuneCP5_v1/220827_053032/0006/' ,
 'DYJetsToLL_M-50_TuneCP5_v1_07' : '/hdfs/store/user/jmadhusu/MC2017_12Apr2018_monoHiggs_27Aug2022/DYJetsToLL_M-50_TuneCP5_13TeV-madgraphMLM-pythia8/crab_job_DYJetsToLL_M-50_TuneCP5_v1/220827_053032/0007/' ,
 'DYJetsToLL_M-50_TuneCP5_v1_08' : '/hdfs/store/user/jmadhusu/MC2017_12Apr2018_monoHiggs_27Aug2022/DYJetsToLL_M-50_TuneCP5_13TeV-madgraphMLM-pythia8/crab_job_DYJetsToLL_M-50_TuneCP5_v1/220827_053032/0008/' ,
 'DYJetsToLL_M-50_TuneCP5_v1_09' : '/hdfs/store/user/jmadhusu/MC2017_12Apr2018_monoHiggs_27Aug2022/DYJetsToLL_M-50_TuneCP5_13TeV-madgraphMLM-pythia8/crab_job_DYJetsToLL_M-50_TuneCP5_v1/220827_053032/0009/' ,
 'DYJetsToLL_Pt-100To250_00' : '/hdfs/store/user/jmadhusu/MC2017_12Apr2018_monoHiggs_27Aug2022/DYJetsToLL_Pt-100To250_TuneCP5_13TeV-amcatnloFXFX-pythia8/crab_job_DYJetsToLL_Pt-100To250/220827_052904/0000/' ,
 'DYJetsToLL_Pt-100To250_01' : '/hdfs/store/user/jmadhusu/MC2017_12Apr2018_monoHiggs_27Aug2022/DYJetsToLL_Pt-100To250_TuneCP5_13TeV-amcatnloFXFX-pythia8/crab_job_DYJetsToLL_Pt-100To250/220827_052904/0001/' ,
 'DYJetsToLL_Pt-250To400_00' : '/hdfs/store/user/jmadhusu/MC2017_12Apr2018_monoHiggs_27Aug2022/DYJetsToLL_Pt-250To400_TuneCP5_13TeV-amcatnloFXFX-pythia8/crab_job_DYJetsToLL_Pt-250To400/220827_052926/0000/' ,
 'DYJetsToLL_Pt-400To650_00' : '/hdfs/store/user/jmadhusu/MC2017_12Apr2018_monoHiggs_27Aug2022/DYJetsToLL_Pt-400To650_TuneCP5_13TeV-amcatnloFXFX-pythia8/crab_job_DYJetsToLL_Pt-400To650/220827_052948/0000/' ,
 'DYJetsToLL_Pt-50To100_00' : '/hdfs/store/user/jmadhusu/MC2017_12Apr2018_monoHiggs_27Aug2022/DYJetsToLL_Pt-50To100_TuneCP5_13TeV-amcatnloFXFX-pythia8/crab_job_DYJetsToLL_Pt-50To100/220827_052841/0000/' ,
 'DYJetsToLL_Pt-50To100_01' : '/hdfs/store/user/jmadhusu/MC2017_12Apr2018_monoHiggs_27Aug2022/DYJetsToLL_Pt-50To100_TuneCP5_13TeV-amcatnloFXFX-pythia8/crab_job_DYJetsToLL_Pt-50To100/220827_052841/0001/' ,
 'DYJetsToLL_Pt-50To100_02' : '/hdfs/store/user/jmadhusu/MC2017_12Apr2018_monoHiggs_27Aug2022/DYJetsToLL_Pt-50To100_TuneCP5_13TeV-amcatnloFXFX-pythia8/crab_job_DYJetsToLL_Pt-50To100/220827_052841/0002/' ,
 'DYJetsToLL_Pt-650ToInf_00' : '/hdfs/store/user/jmadhusu/MC2017_12Apr2018_monoHiggs_27Aug2022/DYJetsToLL_Pt-650ToInf_TuneCP5_13TeV-amcatnloFXFX-pythia8/crab_job_DYJetsToLL_Pt-650ToInf/220827_053010/0000/' ,
 'EWKWMinus2Jets_WToLNu_M-50_TuneCP5_00' : '/hdfs/store/user/jmadhusu/MC2017_12Apr2018_monoHiggs_27Aug2022/EWKWMinus2Jets_WToLNu_M-50_TuneCP5_13TeV-madgraph-pythia8/crab_job_EWKWMinus2Jets_WToLNu_M-50_TuneCP5/220827_053710/0000/' ,
 'EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00' : '/hdfs/store/user/jmadhusu/MC2017_12Apr2018_monoHiggs_27Aug2022/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_13TeV-madgraph-pythia8/crab_job_EWKWPlus2Jets_WToLNu_M-50_TuneCP5/220827_053648/0000/' ,
 'EWKZ2Jets_ZToLL_M-50_TuneCP5_00' : '/hdfs/store/user/jmadhusu/MC2017_12Apr2018_monoHiggs_27Aug2022/EWKZ2Jets_ZToLL_M-50_TuneCP5_13TeV-madgraph-pythia8/crab_job_EWKZ2Jets_ZToLL_M-50_TuneCP5/220827_053604/0000/' ,
 'EWKZ2Jets_ZToNuNu_TuneCP5_00' : '/hdfs/store/user/jmadhusu/MC2017_12Apr2018_monoHiggs_27Aug2022/EWKZ2Jets_ZToNuNu_TuneCP5_13TeV-madgraph-pythia8/crab_job_EWKZ2Jets_ZToNuNu_TuneCP5/220827_053626/0000/' ,
 'GluGluHToTauTau_M125_00' : '/hdfs/store/user/jmadhusu/MC2017_12Apr2018_monoHiggs_27Aug2022/GluGluHToTauTau_M125_13TeV_powheg_pythia8/crab_job_GluGluHToTauTau_M125/220827_053732/0000/' ,
 'GluGluHToWWTo2L2Nu_M125_00' : '/hdfs/store/user/jmadhusu/MC2017_12Apr2018_monoHiggs_27Aug2022/GluGluHToWWTo2L2Nu_M125_13TeV_powheg2_JHUGenV714_pythia8/crab_job_GluGluHToWWTo2L2Nu_M125/220827_054412/0000/' ,
 'ST_t-channel_antitop_4f_inclusiveDecays_TuneCP5_00' : '/hdfs/store/user/jmadhusu/MC2017_12Apr2018_monoHiggs_27Aug2022/ST_t-channel_antitop_4f_inclusiveDecays_TuneCP5_13TeV-powhegV2-madspin-pythia8/crab_job_ST_t-channel_antitop_4f_inclusiveDecays_TuneCP5/220827_053458/0000/' ,
 'ST_t-channel_top_4f_inclusiveDecays_TuneCP5_00' : '/hdfs/store/user/jmadhusu/MC2017_12Apr2018_monoHiggs_27Aug2022/ST_t-channel_top_4f_inclusiveDecays_TuneCP5_13TeV-powhegV2-madspin-pythia8/crab_job_ST_t-channel_top_4f_inclusiveDecays_TuneCP5/220827_053435/0000/' ,
 'ST_tW_antitop_5f_inclusiveDecays_TuneCP5_00' : '/hdfs/store/user/jmadhusu/MC2017_12Apr2018_monoHiggs_27Aug2022/ST_tW_antitop_5f_inclusiveDecays_TuneCP5_13TeV-powheg-pythia8/crab_job_ST_tW_antitop_5f_inclusiveDecays_TuneCP5/220827_053542/0000/' ,
 'ST_tW_top_5f_inclusiveDecays_TuneCP5_00' : '/hdfs/store/user/jmadhusu/MC2017_12Apr2018_monoHiggs_27Aug2022/ST_tW_top_5f_inclusiveDecays_TuneCP5_13TeV-powheg-pythia8/crab_job_ST_tW_top_5f_inclusiveDecays_TuneCP5/220827_053520/0000/' ,
 'TTTo2L2Nu_TuneCP5_00' : '/hdfs/store/user/jmadhusu/MC2017_12Apr2018_monoHiggs_27Aug2022/TTTo2L2Nu_TuneCP5_13TeV-powheg-pythia8/crab_job_TTTo2L2Nu_TuneCP5/220827_052546/0000/' ,
 'TTToHadronic_TuneCP5_00' : '/hdfs/store/user/jmadhusu/MC2017_12Apr2018_monoHiggs_27Aug2022/TTToHadronic_TuneCP5_13TeV-powheg-pythia8/crab_job_TTToHadronic_TuneCP5/220827_052608/0000/' ,
 'TTToSemiLeptonic_TuneCP5_00' : '/hdfs/store/user/jmadhusu/MC2017_12Apr2018_monoHiggs_27Aug2022/TTToSemiLeptonic_TuneCP5_13TeV-powheg-pythia8/crab_job_TTToSemiLeptonic_TuneCP5/220827_052630/0000/' ,
 'VBFHToTauTau_M125_00' : '/hdfs/store/user/jmadhusu/MC2017_12Apr2018_monoHiggs_27Aug2022/VBFHToTauTau_M125_13TeV_powheg_pythia8/crab_job_VBFHToTauTau_M125/220827_053755/0000/' ,
 'VBFHToWWTo2L2Nu_M125_00' : '/hdfs/store/user/jmadhusu/MC2017_12Apr2018_monoHiggs_27Aug2022/VBFHToWWTo2L2Nu_M125_13TeV_powheg2_JHUGenV714_pythia8/crab_job_VBFHToWWTo2L2Nu_M125/220827_054435/0000/' ,
 'VVTo2L2Nu_00' : '/hdfs/store/user/jmadhusu/MC2017_12Apr2018_monoHiggs_27Aug2022/VVTo2L2Nu_13TeV_amcatnloFXFX_madspin_pythia8/crab_job_VVTo2L2Nu/220827_054220/0000/' ,
 'W1JetsToLNu_TuneCP5_00' : '/hdfs/store/user/jmadhusu/MC2017_12Apr2018_monoHiggs_27Aug2022/W1JetsToLNu_TuneCP5_13TeV-madgraphMLM-pythia8/crab_job_W1JetsToLNu_TuneCP5/220827_052714/0000/' ,
 'W2JetsToLNu_TuneCP5_00' : '/hdfs/store/user/jmadhusu/MC2017_12Apr2018_monoHiggs_27Aug2022/W2JetsToLNu_TuneCP5_13TeV-madgraphMLM-pythia8/crab_job_W2JetsToLNu_TuneCP5/220827_052736/0000/' ,
 'W3JetsToLNu_TuneCP5_00' : '/hdfs/store/user/jmadhusu/MC2017_12Apr2018_monoHiggs_27Aug2022/W3JetsToLNu_TuneCP5_13TeV-madgraphMLM-pythia8/crab_job_W3JetsToLNu_TuneCP5/220827_052757/0000/' ,
 'W4JetsToLNu_TuneCP5_00' : '/hdfs/store/user/jmadhusu/MC2017_12Apr2018_monoHiggs_27Aug2022/W4JetsToLNu_TuneCP5_13TeV-madgraphMLM-pythia8/crab_job_W4JetsToLNu_TuneCP5/220827_052819/0000/' ,
 'WJetsToLNu_HT100-200_00' : '/hdfs/store/user/jmadhusu/MC2017_12Apr2018_monoHiggs_27Aug2022/WJetsToLNu_HT-100To200_TuneCP5_13TeV-madgraphMLM-pythia8/crab_job_WJetsToLNu_HT100-200/221004_153313/0000/' ,
 'WJetsToLNu_HT1200-2500_00' : '/hdfs/store/user/jmadhusu/MC2017_12Apr2018_monoHiggs_27Aug2022/WJetsToLNu_HT-1200To2500_TuneCP5_13TeV-madgraphMLM-pythia8/crab_job_WJetsToLNu_HT1200-2500/221004_153510/0000/' ,
 'WJetsToLNu_HT200-400_00' : '/hdfs/store/user/jmadhusu/MC2017_12Apr2018_monoHiggs_27Aug2022/WJetsToLNu_HT-200To400_TuneCP5_13TeV-madgraphMLM-pythia8/crab_job_WJetsToLNu_HT200-400/221004_153336/0000/' ,
 'WJetsToLNu_HT2500-Inf_00' : '/hdfs/store/user/jmadhusu/MC2017_12Apr2018_monoHiggs_27Aug2022/WJetsToLNu_HT-2500ToInf_TuneCP5_13TeV-madgraphMLM-pythia8/crab_job_WJetsToLNu_HT2500-Inf/221004_153533/0000/' ,
 'WJetsToLNu_HT400-600_00' : '/hdfs/store/user/jmadhusu/MC2017_12Apr2018_monoHiggs_27Aug2022/WJetsToLNu_HT-400To600_TuneCP5_13TeV-madgraphMLM-pythia8/crab_job_WJetsToLNu_HT400-600/221004_153359/0000/' ,
 'WJetsToLNu_HT600-800_00' : '/hdfs/store/user/jmadhusu/MC2017_12Apr2018_monoHiggs_27Aug2022/WJetsToLNu_HT-600To800_TuneCP5_13TeV-madgraphMLM-pythia8/crab_job_WJetsToLNu_HT600-800/221004_153423/0000/' ,
 'WJetsToLNu_HT70-100_00' : '/hdfs/store/user/jmadhusu/MC2017_12Apr2018_monoHiggs_27Aug2022/WJetsToLNu_HT-70To100_TuneCP5_13TeV-madgraphMLM-pythia8/crab_job_WJetsToLNu_HT70-100/221004_153249/0000/' ,
 'WJetsToLNu_HT800-1200_00' : '/hdfs/store/user/jmadhusu/MC2017_12Apr2018_monoHiggs_27Aug2022/WJetsToLNu_HT-800To1200_TuneCP5_13TeV-madgraphMLM-pythia8/crab_job_WJetsToLNu_HT800-1200/221004_153446/0000/' ,
 'WJetsToLNu_Incl_00' : '/hdfs/store/user/jmadhusu/MC2017_12Apr2018_monoHiggs_27Aug2022/WJetsToLNu_TuneCP5_13TeV-madgraphMLM-pythia8/crab_job_WJetsToLNu_Incl/221004_153203/0000/' ,
 'WJetsToLNu_Inclv2_00' : '/hdfs/store/user/jmadhusu/MC2017_12Apr2018_monoHiggs_27Aug2022/WJetsToLNu_TuneCP5_13TeV-madgraphMLM-pythia8/crab_job_WJetsToLNu_Inclv2/221004_153226/0000/' ,
 'WJetsToLNu_TuneCP5_00' : '/hdfs/store/user/jmadhusu/MC2017_12Apr2018_monoHiggs_27Aug2022/WJetsToLNu_TuneCP5_13TeV-madgraphMLM-pythia8/crab_job_WJetsToLNu_TuneCP5/220827_052652/0000/' ,
 'WWTo1L1Nu2Q_00' : '/hdfs/store/user/jmadhusu/MC2017_12Apr2018_monoHiggs_27Aug2022/WWTo1L1Nu2Q_13TeV_amcatnloFXFX_madspin_pythia8/crab_job_WWTo1L1Nu2Q/220827_054305/0000/' ,
 'WWToLNuQQ_NNPDF31_TuneCP5_00' : '/hdfs/store/user/jmadhusu/MC2017_12Apr2018_monoHiggs_27Aug2022/WWToLNuQQ_NNPDF31_TuneCP5_13TeV-powheg-pythia8/crab_job_WWToLNuQQ_NNPDF31_TuneCP5/220827_054158/0000/' ,
 'WWW_4F_TuneCP5_00' : '/hdfs/store/user/jmadhusu/MC2017_12Apr2018_monoHiggs_27Aug2022/WWW_4F_TuneCP5_13TeV-amcatnlo-pythia8/crab_job_WWW_4F_TuneCP5/220827_054457/0000/' ,
 'WWZ_4F_TuneCP5_00' : '/hdfs/store/user/jmadhusu/MC2017_12Apr2018_monoHiggs_27Aug2022/WWZ_4F_TuneCP5_13TeV-amcatnlo-pythia8/crab_job_WWZ_4F_TuneCP5/220827_054518/0000/' ,
 'WW_TuneCP5_00' : '/hdfs/store/user/jmadhusu/MC2017_12Apr2018_monoHiggs_27Aug2022/WW_TuneCP5_13TeV-pythia8/crab_job_WW_TuneCP5/220827_053329/0000/' ,
 'WZTo3LNu_TuneCP5_00' : '/hdfs/store/user/jmadhusu/MC2017_12Apr2018_monoHiggs_27Aug2022/WZTo3LNu_TuneCP5_13TeV-amcatnloFXFX-pythia8/crab_job_WZTo3LNu_TuneCP5/220827_054243/0000/' ,
 'WZZ_TuneCP5_00' : '/hdfs/store/user/jmadhusu/MC2017_12Apr2018_monoHiggs_27Aug2022/WZZ_TuneCP5_13TeV-amcatnlo-pythia8/crab_job_WZZ_TuneCP5/220827_054541/0000/' ,
 'WZ_TuneCP5_00' : '/hdfs/store/user/jmadhusu/MC2017_12Apr2018_monoHiggs_27Aug2022/WZ_TuneCP5_13TeV-pythia8/crab_job_WZ_TuneCP5/220827_053351/0000/' ,
 'WminusHToTauTau_M125_00' : '/hdfs/store/user/jmadhusu/MC2017_12Apr2018_monoHiggs_27Aug2022/WminusHToTauTau_M125_13TeV_powheg_pythia8/crab_job_WminusHToTauTau_M125/220827_053840/0000/' ,
 'WplusHToTauTau_M125_00' : '/hdfs/store/user/jmadhusu/MC2017_12Apr2018_monoHiggs_27Aug2022/WplusHToTauTau_M125_13TeV_powheg_pythia8/crab_job_WplusHToTauTau_M125/220827_053817/0000/' ,
 'ZHToTauTau_M125_00' : '/hdfs/store/user/jmadhusu/MC2017_12Apr2018_monoHiggs_27Aug2022/ZHToTauTau_M125_13TeV_powheg_pythia8/crab_job_ZHToTauTau_M125/220827_053903/0000/' ,
 'ZJetsToNuNu_HT-100To200_00' : '/hdfs/store/user/jmadhusu/MC2017_12Apr2018_monoHiggs_27Aug2022/ZJetsToNuNu_HT-100To200_13TeV-madgraph/crab_job_ZJetsToNuNu_HT-100To200/220827_053924/0000/' ,
 'ZJetsToNuNu_HT-1200To2500_00' : '/hdfs/store/user/jmadhusu/MC2017_12Apr2018_monoHiggs_27Aug2022/ZJetsToNuNu_HT-1200To2500_13TeV-madgraph/crab_job_ZJetsToNuNu_HT-1200To2500/220827_054115/0000/' ,
 'ZJetsToNuNu_HT-200To400_00' : '/hdfs/store/user/jmadhusu/MC2017_12Apr2018_monoHiggs_27Aug2022/ZJetsToNuNu_HT-200To400_13TeV-madgraph/crab_job_ZJetsToNuNu_HT-200To400/220827_053946/0000/' ,
 'ZJetsToNuNu_HT-2500ToInf_00' : '/hdfs/store/user/jmadhusu/MC2017_12Apr2018_monoHiggs_27Aug2022/ZJetsToNuNu_HT-2500ToInf_13TeV-madgraph/crab_job_ZJetsToNuNu_HT-2500ToInf/220827_054136/0000/' ,
 'ZJetsToNuNu_HT-400To600_00' : '/hdfs/store/user/jmadhusu/MC2017_12Apr2018_monoHiggs_27Aug2022/ZJetsToNuNu_HT-400To600_13TeV-madgraph/crab_job_ZJetsToNuNu_HT-400To600/220827_054009/0000/' ,
 'ZJetsToNuNu_HT-600To800_00' : '/hdfs/store/user/jmadhusu/MC2017_12Apr2018_monoHiggs_27Aug2022/ZJetsToNuNu_HT-600To800_13TeV-madgraph/crab_job_ZJetsToNuNu_HT-600To800/220827_054030/0000/' ,
 'ZJetsToNuNu_HT-800To1200_00' : '/hdfs/store/user/jmadhusu/MC2017_12Apr2018_monoHiggs_27Aug2022/ZJetsToNuNu_HT-800To1200_13TeV-madgraph/crab_job_ZJetsToNuNu_HT-800To1200/220827_054052/0000/' ,
 'ZZTo2L2Q_00' : '/hdfs/store/user/jmadhusu/MC2017_12Apr2018_monoHiggs_27Aug2022/ZZTo2L2Q_13TeV_amcatnloFXFX_madspin_pythia8/crab_job_ZZTo2L2Q/220827_054350/0000/' ,
 'ZZTo4L_TuneCP5_00' : '/hdfs/store/user/jmadhusu/MC2017_12Apr2018_monoHiggs_27Aug2022/ZZTo4L_TuneCP5_13TeV-amcatnloFXFX-pythia8/crab_job_ZZTo4L_TuneCP5/220827_054328/0000/' ,
 'ZZZ_TuneCP5_00' : '/hdfs/store/user/jmadhusu/MC2017_12Apr2018_monoHiggs_27Aug2022/ZZZ_TuneCP5_13TeV-amcatnlo-pythia8/crab_job_ZZZ_TuneCP5/220827_054603/0000/' ,
 'ZZ_TuneCP5_00' : '/hdfs/store/user/jmadhusu/MC2017_12Apr2018_monoHiggs_27Aug2022/ZZ_TuneCP5_13TeV-pythia8/crab_job_ZZ_TuneCP5/220827_053413/0000/' ,
 'MET_EraB_0000' : '/hdfs/store/user/jmadhusu/data2017_31Mar2018_27Aug2022/MET/crab_job_MET_EraB/220919_005522/0000/' ,
 'MET_EraB_0001' : '/hdfs/store/user/jmadhusu/data2017_31Mar2018_27Aug2022/MET/crab_job_MET_EraB/220919_005522/0001/' ,
 'MET_EraC_0000' : '/hdfs/store/user/jmadhusu/data2017_31Mar2018_27Aug2022/MET/crab_job_MET_EraC/220919_005551/0000/' ,
 'MET_EraC_0001' : '/hdfs/store/user/jmadhusu/data2017_31Mar2018_27Aug2022/MET/crab_job_MET_EraC/220919_005551/0001/' ,
 'MET_EraC_0002' : '/hdfs/store/user/jmadhusu/data2017_31Mar2018_27Aug2022/MET/crab_job_MET_EraC/220919_005551/0002/' ,
 'MET_EraC_0003' : '/hdfs/store/user/jmadhusu/data2017_31Mar2018_27Aug2022/MET/crab_job_MET_EraC/220919_005551/0003/' ,
 'MET_EraC_0011' : '/hdfs/store/user/jmadhusu/data2017_31Mar2018_27Aug2022/MET/crab_job_MET_EraC/220919_005551/0011/' ,
 'MET_EraD_0000' : '/hdfs/store/user/jmadhusu/data2017_31Mar2018_27Aug2022/MET/crab_job_MET_EraD/220919_005620/0000/' ,
 'MET_EraD_0001' : '/hdfs/store/user/jmadhusu/data2017_31Mar2018_27Aug2022/MET/crab_job_MET_EraD/220919_005620/0001/' ,
 'MET_EraE_0000' : '/hdfs/store/user/jmadhusu/data2017_31Mar2018_27Aug2022/MET/crab_job_MET_EraE/220919_005648/0000/' ,
 'MET_EraE_0001' : '/hdfs/store/user/jmadhusu/data2017_31Mar2018_27Aug2022/MET/crab_job_MET_EraE/220919_005648/0001/' ,
 'MET_EraE_0002' : '/hdfs/store/user/jmadhusu/data2017_31Mar2018_27Aug2022/MET/crab_job_MET_EraE/220919_005648/0002/' ,
 'MET_EraF_0000' : '/hdfs/store/user/jmadhusu/data2017_31Mar2018_27Aug2022/MET/crab_job_MET_EraF/220919_005716/0000/' ,
 'MET_EraF_0001' : '/hdfs/store/user/jmadhusu/data2017_31Mar2018_27Aug2022/MET/crab_job_MET_EraF/220919_005716/0001/' ,
 'MET_EraF_0002' : '/hdfs/store/user/jmadhusu/data2017_31Mar2018_27Aug2022/MET/crab_job_MET_EraF/220919_005716/0002/' ,
 'MET_EraF_0003' : '/hdfs/store/user/jmadhusu/data2017_31Mar2018_27Aug2022/MET/crab_job_MET_EraF/220919_005716/0003/' ,
}


fin = open('failed_files.txt', 'r')
fout = open('run_fix.sh', 'w')

sources = {}
lines = fin.readlines()
for iline, line in enumerate(lines):
    # if iline > 0 :
    #     continue
    line = line.strip()
    print(line)
    destination = '/'.join(line.split('/')[:-1])
    file_name = line.split('/')[-1]
    sample_name = line.split('/')[-2]
    sample_name = '_'.join(sample_name.split('_'))
    icount = file_name.replace('.root', '').split('_')[-1]
    if sample_name not in era_map:
        continue
    source_path = era_map[sample_name]
    file_in_path = os.listdir(source_path)
    tmp_out = open('tmp_list_'+sample_name, 'w')
    for ifile in sorted(file_in_path):
        tmp_out.write(ifile+'\n')
    source_file = ''
    if not os.path.exists('tmp_list_'+sample_name):
        continue
    with open('tmp_list_'+sample_name, 'r') as ftmp:
        tmplines = ftmp.readlines()
        count = 0
        for tmpline in tmplines:
            count += 1
            source_file = tmpline
            if count == int(icount):
                break
    sources[iline] = [line, source_path, destination+'/', icount, source_file]
    

heading_script = "./rootcom skimm_mt_2017 analyze_mutau"
out_string = "./analyze_mutau {infile} {outfile} -1 1000 2017 MC {sample_name} \n"

fout.write(heading_script +' \n\n')
f_redo = open('redo_files', 'w')
for k,v in sources.items():
    if v[4]=='':
        f_redo.write(v[0]+' '+v[1]+' '+v[2]+' '+v[3]+' '+v[4]+'\n')
    else:
        fout.write(out_string.format(infile=v[1]+v[4].strip(), outfile=v[0].split('/')[-1], sample_name=v[2].split('/')[-2]))
        fout.write('mv '+v[0].split('/')[-1] + ' ' + v[2] + ' \n\n')

fout.close()
f_redo.close()

    
