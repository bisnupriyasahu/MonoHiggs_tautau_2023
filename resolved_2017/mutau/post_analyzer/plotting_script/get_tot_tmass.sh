

hadd f_mutau_initial.root sample/*tot_TMass_full.root
hadd f_mutau_up.root sample/*tot_TMass_full_up.root
hadd f_mutau_down.root sample/*tot_TMass_full_down.root

python get_zll.py --hist mutau
python get_small_mc.py --hist mutau
python get_jetFakes.py --hist mutau
python get_jetFakes_unc.py --hist mutau

python gather_hist_v3.py

