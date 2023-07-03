

# python py_get_met_corr.py
# cp met_recoil_corrections_2017.png  ~/public_html/monoHiggs/blinded/met_corr/

rm DY_new.root DY_old.root
hadd DY_new.root DYJetsToLL_M-50_TuneCP5_ext1_v1_00.root  DYJetsToLL_M-50_TuneCP5_ext1_v1_02.root  DYJetsToLL_M-50_TuneCP5_ext1_v1_04.root  DYJetsToLL_M-50_TuneCP5_v1_00.root  DYJetsToLL_M-50_TuneCP5_v1_02.root  DYJetsToLL_M-50_TuneCP5_v1_04.root DYJetsToLL_M-50_TuneCP5_ext1_v1_01.root  DYJetsToLL_M-50_TuneCP5_ext1_v1_03.root  DYJetsToLL_M-50_TuneCP5_ext1_v1_05.root  DYJetsToLL_M-50_TuneCP5_v1_01.root  DYJetsToLL_M-50_TuneCP5_v1_03.root  DYJetsToLL_M-50_TuneCP5_v1_05.root

hadd DY_old.root output_backup/DYJetsToLL_M-50_TuneCP5_ext1_v1_00.root  output_backup/DYJetsToLL_M-50_TuneCP5_ext1_v1_02.root  output_backup/DYJetsToLL_M-50_TuneCP5_ext1_v1_04.root  output_backup/DYJetsToLL_M-50_TuneCP5_v1_00.root  output_backup/DYJetsToLL_M-50_TuneCP5_v1_02.root  output_backup/DYJetsToLL_M-50_TuneCP5_v1_04.root output_backup/DYJetsToLL_M-50_TuneCP5_ext1_v1_01.root  output_backup/DYJetsToLL_M-50_TuneCP5_ext1_v1_03.root  output_backup/DYJetsToLL_M-50_TuneCP5_ext1_v1_05.root  output_backup/DYJetsToLL_M-50_TuneCP5_v1_01.root  output_backup/DYJetsToLL_M-50_TuneCP5_v1_03.root  output_backup/DYJetsToLL_M-50_TuneCP5_v1_05.root


python prefiring_effect.py
cp *prefiring*.png  ~/public_html/limits/monohiggs_rebinned/corrections/


# python plot_triggerdiff.py
# cp *trigger_diff.png  ~/public_html/limits/monohiggs_rebinned/corrections/
