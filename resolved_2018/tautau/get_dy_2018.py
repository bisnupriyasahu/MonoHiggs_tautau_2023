#!/usr/bin/env python
import ROOT
import re
from array import array
from sys import argv
import ROOT as Root
import csv
from math import sqrt
from math import pi

filen = 'output/'
DY = ['DYJetsToLL',
      'DY1JetsToLL',
      'DY2JetsToLL',
      'DY3JetsToLL',
      'DY4JetsToLL']
#idx_num = ['7', '23', '39', '2', '10', '16', '26', '32', '36']
#idx_num = ['7', '23', '39', '2', '10', '26', '32', '36']


selection = ['5', '7', '8', '9', '9b']
#selection = ['9']

print("################ n events ##################################")
#for sel in selection:
for d in DY:
    for num in range(0,1):
        num = str(num)
        inputFile_=filen+d+'_0'+num+'.root'
        print(inputFile_)
        OutFile=ROOT.TFile(inputFile_,"r")
        OutFile.cd()
        histo = 'nEvents'                                                                                                                                                         
        Data_hist    =OutFile.Get(histo)
        print(Data_hist.GetBinContent(1))                                                                                                                                         

print("################ events afters selection ##################################")
for sel in selection:
    print(sel)
    for d in DY:
        for num in range(0,1):
            num = str(num)
            inputFile_=filen+d+'_0'+num+'.root'
            print(inputFile_)
            OutFile=ROOT.TFile(inputFile_,"r")
            OutFile.cd()
            histo = 'tot_TMass_new_'+sel
            Data_hist    =OutFile.Get(histo)
            print("%.6f"%Data_hist.Integral())
            
    
