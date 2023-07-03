set -e


python main.py -hist 10,13,19,20,21,22,30,32 -idx 9 -ch tautau -y 2017 --blinded 1
#python main.py -hist 1 -idx 9 -ch etau -y 2017 --blinded 1
bash do_make_plots.sh 9

#python main.py -hist 34 -idx 9 -ch etau -y 2017 --blinded 0
#bash do_make_plots.sh 
