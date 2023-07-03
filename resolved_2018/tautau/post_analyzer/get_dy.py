#!/usr/bin/env python
import ROOT
import re
from array import array
from sys import argv
import ROOT as Root
import csv
from math import sqrt
from math import pi

filen = 'files_initial/'
DY = [
'DYJetsToLL_M-50_TuneCP5_v1',
'DYJetsToLL_M-50_TuneCP5_ext1_v1', 
'DY1JetsToLL_M-50_TuneCP5', 
'DY2JetsToLL_M-50_TuneCP5',
'DY3JetsToLL_M-50_TuneCP5_v1',  
'DY3JetsToLL_M-50_TuneCP5_ext1',
'DY4JetsToLL_M-50_TuneCP5'

]
#idx_num = ['7', '23', '39', '2', '10', '16', '26', '32', '36']
#idx_num = ['7', '23', '39', '2', '10', '26', '32', '36']

#selection = ['9b']
selection = ['9']

print("################ afters selection 9b ##################################")
for sel in selection:
    print(sel)
    for d in DY:
        inputFile_=filen+d+'_final.root'
        OutFile=ROOT.TFile(inputFile_,"r")
        OutFile.cd()
        histo = 'tot_TMass_new_'+sel
        Data_hist    =OutFile.Get(histo)
        print("%.6f"%Data_hist.Integral())

print("################ n events ##################################")
#for sel in selection:
for d in DY:
    inputFile_=filen+d+'_final.root'
    OutFile=ROOT.TFile(inputFile_,"r")
    OutFile.cd()
    histo = 'nEvents'                                                                                                                                                         
    Data_hist    =OutFile.Get(histo)
    print(Data_hist.GetBinContent(1))                                                                                                                                         
    
