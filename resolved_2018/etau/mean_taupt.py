import ROOT
from os import listdir

path = "output"

for x in listdir(path):
    if 'MH3_' in x:
        print(x)

