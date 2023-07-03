#!/usr/bin/env python
import ROOT
import re
from array import array
from sys import argv
import ROOT as Root
import csv
from math import sqrt
from math import pi
#TTTo2L2Nu_TuneCP5_05.root
#filen = 'files_initial/'
filen = '/nfs_scratch/bsahu/MonoHiggs_Nov2022_V2/CMSSW_12_3_5/src/resolved_2017/tautau/output/'
'''
DY = [
'TTTo2L2Nu_TuneCP5_00',
'TTTo2L2Nu_TuneCP5_01',
'TTTo2L2Nu_TuneCP5_02',
'TTTo2L2Nu_TuneCP5_03',
'TTTo2L2Nu_TuneCP5_04',
'TTTo2L2Nu_TuneCP5_05']
'''


DY = [
'TTToSemiLeptonic_TuneCP5_00',
'TTToSemiLeptonic_TuneCP5_01',
'TTToSemiLeptonic_TuneCP5_02',
'TTToSemiLeptonic_TuneCP5_03',
'TTToSemiLeptonic_TuneCP5_04',
'TTToSemiLeptonic_TuneCP5_05',
'TTToSemiLeptonic_TuneCP5_06',
'TTToSemiLeptonic_TuneCP5_07',
'TTToSemiLeptonic_TuneCP5_08'
#'TTToSemiLeptonic_TuneCP5_09'
]



#idx_num = ['7', '23', '39', '2', '10', '16', '26', '32', '36']
#idx_num = ['7', '23', '39', '2', '10', '26', '32', '36']

selection = ['5', '7', '8', '9', '9']
#selection = ['9']

print("################ n events ##################################")
#for sel in selection:
for d in DY:
    inputFile_=filen+d+'.root'
    OutFile=ROOT.TFile(inputFile_,"r")
    OutFile.cd()
    histo = 'nEvents'                                                                                                                                                         
    Data_hist    =OutFile.Get(histo)
    print(Data_hist.GetBinContent(1))                                                                                                                                         

print("################ events afters selection ##################################")
for sel in selection:
    print(sel)
    for d in DY:
        inputFile_=filen+d+'.root'
        OutFile=ROOT.TFile(inputFile_,"r")
        OutFile.cd()
        histo = 'tot_TMass_new_'+sel
        Data_hist    =OutFile.Get(histo)
        print("%.6f"%Data_hist.Integral())


print("################ Acc* eff ##################################")
for sel in selection:
    print(sel)
    for d in DY:
        inputFile_=filen+d+'.root'
        OutFile=ROOT.TFile(inputFile_,"r")
        OutFile.cd()
        histo = 'tot_TMass_new_'+sel
        Data_hist    =OutFile.Get(histo)
        histo2 = 'nEvents'
        Data_hist2    =OutFile.Get(histo2)
        print("%.7f"%(Data_hist.Integral()/Data_hist2.GetBinContent(1)))

print("################ sample ##################################")
#for sel in selection:                                                                                                                                  
for d in DY:
    print(d)


