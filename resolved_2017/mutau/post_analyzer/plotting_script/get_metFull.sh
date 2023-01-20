

hadd f_metFull_initial.root sample/*metFull.root
hadd f_metFull_up.root sample/*metFull_up.root
hadd f_metFull_down.root sample/*metFull_down.root

python gather_met.py


