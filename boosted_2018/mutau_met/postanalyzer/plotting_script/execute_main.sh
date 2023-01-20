set -e


#python main.py -hist 17 -idx 9 -ch mutau -y 2018 --blinded 1
python main.py -hist 4,7,19,20,21,22,51,26,30,32,35,55 -idx 9 -ch mutau -y 2018 --blinded 1
#bash do_make_plots.sh 9

#python main.py -hist 32,55,35 -idx 9 -ch mutau -y 2018 --blinded 0
#python3 makeplot.py -name tot_TMass_full_9 -cat 0 -ch mutau -xaxis tot_TMass_full_9 -year 2018 --blindingRatio 1 
