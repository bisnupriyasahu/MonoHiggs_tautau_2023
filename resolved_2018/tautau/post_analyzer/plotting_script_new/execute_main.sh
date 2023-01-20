set -e



#python main.py -hist 10 -idx 9b -ch tautau -y 2018 --blinded 1
python main.py -hist 10,13,19,20,21,22,52,30,32 -idx 9b -ch tautau -y 2018 --blinded 0
bash do_make_plots.sh

#python main.py -hist 36 -idx 9 -ch tautau -y 2018 --blinded 1

#python main.py -hist 32 -idx 9 -ch tautau -y 2018 --blinded 0  
#python3 makeplot.py -name tot_TMass_full_9 -cat 0 -ch tautau -xaxis tot_TMass_full_9 -year 2018 --blindingRatio 1
