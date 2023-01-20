set -e


python main.py -hist 1,7,19,20,21,22,52,26,30,32,34,55 -idx 9 -ch etau -y 2018 --blinded 1
#python main.py -hist 55 -idx 9 -ch etau -y 2018 --blinded 1
#bash do_make_plots.sh 

#python main.py -hist 32,34 -idx 9 -ch etau -y 2018 --blinded 0
#python3 makeplot.py -name etau -cat 0 -ch etau -xaxis etau -year 2018 --blindingRatio 1 
