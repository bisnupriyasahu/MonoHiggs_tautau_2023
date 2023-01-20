set -e


#python main.py -hist 4,7,19,20,21,22,51,30,32,33 -idx 9 -ch mutau -y 2017 --blinded 1
python main.py -hist 4,7,20 -idx 9 -ch mutau -y 2017 --blinded 1
#python main.py -hist 4 -idx 9 -ch mutau -y 2017 --blinded 1
#bash do_make_plots.sh 9

# python main.py -hist 34 -idx 9 -ch mutau -y 2017 --blinded 0
# bash do_make_plots.sh 
