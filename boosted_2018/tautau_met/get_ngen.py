#!/usr/bin/env python
import ROOT
import re
from array import array
from sys import argv
import ROOT as Root
import csv
from math import sqrt
from math import pi


hdfs = '/hdfs/store/user/jmadhusu/2018_skimmed/zprimeBaryonic/signal_para_split/combined/Zpbaryonic2018_'




#idx_num = ['1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '10','10','10','10','10','10','10',]
#zpnum = ['38']
totalIntegral = 0
rootfile = 0 
for i in range(1,44):
    idx = str(i)
    inputFile_=hdfs+idx+'.root'
    #print(inputFile_)
    
    OutFile=ROOT.TFile(inputFile_,"r")
    OutFile.cd()
    #Data_hist    =OutFile.Get("nEvents_ZpB")
    Data_hist    =OutFile.Get("eventTree")
    print(Data_hist.GetEntries())
    #print(Data_hist.GetBinContent(i+1))
    #print('Data_hist', Data_hist.Integral())
    #totalIntegral += totalIntegral+Data_hist.Integral()
    #print('inside loop:    ', totalIntegral)
    #print('intotal:   ',totalIntegral)
    #= ['Signal_ZpBaryonic_2018_0019_30'
#inputFile_='/hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/signal_v2/'+xaxis_label+'.root'

#print(inputFile_)
