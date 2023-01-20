

from os import listdir
from ROOT import *

_path = "/hdfs/store/user/jmadhusu/2017_skimmed/zprimeBaryonic/signal_para_split/combined/"


f_list = listdir(_path)

#print f_list
mapping = {}
for f in f_list:
    infile = _path+f
    tmp = TFile(infile, "r")
    ngen_hist = tmp.Get("nEvents_ZpB")
    ngen = ngen_hist.Integral()
    #print f , ngen
    f = f.replace(".root", '')
    mapping[f] = int(ngen)
    tmp.Close()



print mapping
