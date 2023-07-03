#!/usr/bin/env python
import ROOT
import re
from array import array
from sys import argv
import ROOT as Root
import csv
from math import sqrt
from math import pi

#filen = 'files_initial/'
filen = '/nfs_scratch/bsahu/MonoHiggs_Nov2022_V2/CMSSW_12_3_5/src/resolved_2018/tautau/output/'


''''
DY = [
'TTTo2L2Nu_powheg_00',
'TTTo2L2Nu_powheg_01',
'TTTo2L2Nu_powheg_02',
'TTTo2L2Nu_powheg_03',
'TTTo2L2Nu_powheg_04',
'TTTo2L2Nu_powheg_05',
'TTTo2L2Nu_powheg_06',
'TTTo2L2Nu_powheg_10',
'TTTo2L2Nu_powheg_20',
'TTTo2L2Nu_powheg_30',
'TTTo2L2Nu_powheg_40',
'TTTo2L2Nu_powheg_50',
'TTTo2L2Nu_powheg_60',
'TTTo2L2Nu_powheg_70'
]

#idx_num = ['7', '23', '39', '2', '10', '16', '26', '32', '36']
#idx_num = ['7', '23', '39', '2', '10', '26', '32', '36']

'''

'''
DY = [
'TTTo2L2Nu_powheg_final',
'TTToSemiLeptonic_powheg_final',
'TTToHadronic_powheg_final'

]


'''



DY = [
'TTToSemiLeptonic_powheg_00',
'TTToSemiLeptonic_powheg_01',
'TTToSemiLeptonic_powheg_10',
'TTToSemiLeptonic_powheg_11',
'TTToSemiLeptonic_powheg_20',
'TTToSemiLeptonic_powheg_21',
'TTToSemiLeptonic_powheg_30',
'TTToSemiLeptonic_powheg_31',
'TTToSemiLeptonic_powheg_40',
'TTToSemiLeptonic_powheg_41',
'TTToSemiLeptonic_powheg_50',
'TTToSemiLeptonic_powheg_51',
'TTToSemiLeptonic_powheg_60',
'TTToSemiLeptonic_powheg_70',
'TTToSemiLeptonic_powheg_80',
'TTToSemiLeptonic_powheg_90'


]


selection = ['5', '7', '8', '9', '9b']
#selection = ['9']

print("################ sample ##################################")
#for sel in selection:
for d in DY:
    print(d)                                                                                                                                         




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

