#!/usr/bin/env python
import ROOT
import re
from array import array
from sys import argv
import ROOT as Root
import csv
from math import sqrt
from math import pi

hdfs = 'files_initial/Signal_2HDMa_gg_sinp_'
hdfsb = 'files_initial/'
tan = '_tanb_'
mxd = '_mXd_10_MH3_600_MH4_'
thetas = ['0p1', '0p2','0p3', '0p35', '0p4', '0p5', '0p6', '0p7', '0p8','0p9']
betas = ['0p5', '1p0', '1p5', '2p0', '4p0', '8p0', '20p0', '50p0']
MH4 = ['150_', '250_']
bkgs = ['WJetsToLNu_TuneCP5', 'W1JetsToLNu_TuneCP5', 'W2JetsToLNu_TuneCP5', 'W3JetsToLNu_TuneCP5', 'W4JetsToLNu_TuneCP5']
#Signal_2HDMa_gg_sinp_0p35_tanb_0p5_mXd_10_MH3_600_MH4_150_final.root


zprim = 'files_initial/Signal_ZpBaryonic2017_'
idx_num = ['7', '23', '39', '2', '10', '16', '26', '32', '36']

#selection = ['9b']
selection = ['9']
print("################nEntries##################################")
for sel in selection:
    print(sel)
    for bkg in bkgs:
        #inputFile_=hdfs+theta+tan+beta+mxd+'_200_final.root'    
        inputFile_=hdfsb+bkg+'_final.root'    
        OutFile=ROOT.TFile(inputFile_,"r")
        OutFile.cd()
        histo = 'nEvents'                                                                                                                                                         
        Data_hist    =OutFile.Get(histo)
        print(Data_hist.GetBinContent(1))                                                                                                                                         

print("################ ZPrimeB ##################################")
for sel in selection:
    print(sel)
    for i in idx_num:
        inputFile_=zprim+i+'_final.root'
        OutFile=ROOT.TFile(inputFile_,"r")
        OutFile.cd()
        histo = 'tot_TMass_new_'+sel
        Data_hist    =OutFile.Get(histo)
        print("%.6f"%Data_hist.Integral())

print("################ 2hdma sintheta ##################################")
for sel in selection:
    print(sel)
    beta = '1p0'
    for theta in thetas:
        inputFile_=hdfs+theta+tan+beta+mxd+'200_final.root'    
        #inputFile_=hdfs+'0p35'+tan+beta+mxd+'_150_final.root'    
        OutFile=ROOT.TFile(inputFile_,"r")    
        OutFile.cd()
        histo = 'tot_TMass_new_'+sel
        Data_hist    =OutFile.Get(histo)
        print("%.6f"%Data_hist.Integral())


print("################nEntries##################################")
for sel in selection:
    beta = '1p0'
    print(sel)
    for theta in thetas:
            inputFile_=hdfs+theta+tan+beta+mxd+'200_final.root'
            OutFile=ROOT.TFile(inputFile_,"r")
            OutFile.cd()
            histo = 'nEvents'                                                                                                                                                         
            Data_hist    =OutFile.Get(histo)
            print(Data_hist.GetBinContent(1))                                                                                                                                         


print("################ 2hdma tanbeta 150 ##################################")
for sel in selection:
    print(sel)
    for beta in betas:
        #inputFile_=hdfs+theta+tan+beta+mxd+'_200_final.root'    
        inputFile_=hdfs+'0p35'+tan+beta+mxd+'150_final.root'    
        OutFile=ROOT.TFile(inputFile_,"r")    
        OutFile.cd()
        histo = 'tot_TMass_new_'+sel
        Data_hist    =OutFile.Get(histo)
        print("%.6f"%Data_hist.Integral())

print("################nEntries##################################")
for sel in selection:
    print(sel)
    for beta in betas:
        #inputFile_=hdfs+theta+tan+beta+mxd+'_200_final.root'    
        inputFile_=hdfs+'0p35'+tan+beta+mxd+'150_final.root'    
        OutFile=ROOT.TFile(inputFile_,"r")
        OutFile.cd()
        histo = 'nEvents'                                                                                                                                                         
        Data_hist    =OutFile.Get(histo)
        print(Data_hist.GetBinContent(1))                                                                                                                                         


print("################ 2hdma tanbeta 250 ##################################")
for sel in selection:
    print(sel)
    for beta in betas:
        #inputFile_=hdfs+theta+tan+beta+mxd+'_200_final.root'    
        inputFile_=hdfs+'0p35'+tan+beta+mxd+'250_final.root'    
        OutFile=ROOT.TFile(inputFile_,"r")    
        OutFile.cd()
        histo = 'tot_TMass_new_'+sel
        Data_hist    =OutFile.Get(histo)
        print("%.6f"%Data_hist.Integral())
            
            
print("################nEntries##################################")
for sel in selection:
    print(sel)
    for beta in betas:
        #inputFile_=hdfs+theta+tan+beta+mxd+'_200_final.root'    
        inputFile_=hdfs+'0p35'+tan+beta+mxd+'250_final.root'    
        OutFile=ROOT.TFile(inputFile_,"r")
        OutFile.cd()
        histo = 'nEvents'                                                                                                                                                         
        Data_hist    =OutFile.Get(histo)
        print(Data_hist.GetBinContent(1))                                                                                                                                         

            

