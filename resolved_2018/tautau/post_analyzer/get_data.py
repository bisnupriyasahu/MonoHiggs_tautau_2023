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
DY = ['files_initial/fullLumi_TauA_final.root',  'files_initial/fullLumi_TauB_final.root',  'files_initial/fullLumi_TauC_final.root',  'files_initial/fullLumi_TauD_PromptReco_final.root']
#idx_num = ['7', '23', '39', '2', '10', '16', '26', '32', '36']
#idx_num = ['7', '23', '39', '2', '10', '26', '32', '36']

selection = ['5', '7', '8', '9', '9b']
#selection = ['9']

print("################ n events ##################################")
#for sel in selection:
for d in DY:
    inputFile_= d
    OutFile=ROOT.TFile(inputFile_,"r")
    OutFile.cd()
    histo = 'nEvents'                                                                                                                                                         
    Data_hist    =OutFile.Get(histo)
    print(Data_hist.GetBinContent(1))                                                                                                                                         

print("################ events afters selection ##################################")
for sel in selection:
    print(sel)
    for d in DY:
        inputFile_= d
        OutFile=ROOT.TFile(inputFile_,"r")
        OutFile.cd()
        histo = 'tot_TMass_new_'+sel
        Data_hist    =OutFile.Get(histo)
        print("%.6f"%Data_hist.Integral())

    
