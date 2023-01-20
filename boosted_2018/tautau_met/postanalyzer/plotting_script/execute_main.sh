set -e



#python main.py -hist 10 -idx 9 -ch tautau -y 2018 --blinded 1
python main.py -hist 10,13,19,20,21,22,51,26,30,32,36,55 -idx 9 -ch tautau -y 2018 --blinded 1
#bash do_make_plots.sh 9

#python main.py -hist 55,36 -idx 9 -ch tautau -y 2018 --blinded 0

#python main.py -hist 32 -idx 9 -ch tautau -y 2018 --blinded 1
#python3 makeplot.py -name tot_TMass_full_9 -cat 0 -ch tautau -xaxis tot_TMass_full_9 -year 2018 --blindingRatio 1


#python main.py -hist 55 -idx 9 -ch tautau -y 2018 --blinded 1
#python3 makeplot.py -name tot_TMass_new_9 -cat 0 -ch tautau -xaxis tot_TMass_new_9 -year 2018 --blindingRatio 1
