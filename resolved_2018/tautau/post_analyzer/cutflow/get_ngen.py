#!/usr/bin/env python
import ROOT
import re
from array import array
from sys import argv
import ROOT as Root
import csv
from math import sqrt
from math import pi


year = '2017/'
channel = ['tautau' ] #, 'mutau', 'tautau']
MZp = ['100', '200', '500', '1000', '1500', '2000', '2500', '3000', '3500']
MChi = '1'
sin = 'Signal_2HDMa_gg_sinp_'
sinp35 = 'Signal_2HDMa_gg_sinp_0p35_tanb_'
tan150 = '_mXd_10_MH3_600_MH4_150'
tan250 = '_mXd_10_MH3_600_MH4_250'
tan1p0 = '_tanb_1p0_mXd_10_MH3_600_MH4_200'
theta = ['0p1', '0p2','0p3', '0p35', '0p4', '0p5', '0p6', '0p7', '0p8','0p9']
betas = ['0p5', '1p0', '1p5', '2p0', '4p0', '8p0', '20p0', '50p0']

bkg = ['data_obs', 'TT', 'ZTTjet', 'STT', 'VVT', 'jetFakes', 'otherMC']
#bkg = ['data_obs', 'TT', 'ZTTjet', 'STT', 'VVT', 'otherMC']

for ch in channel:
        inputFile_=ch+'.root'    
        OutFile=ROOT.TFile(inputFile_,"r")    
        OutFile.cd()
        print(inputFile_)
        print("######################background ##################")
        for bkgs in bkg:
                histo = ch+'/'+bkgs
                Data_hist    =OutFile.Get(histo)
                print("%.7f " %Data_hist.Integral())

        print("###################### zprime baryonic ##################")
        

        for mzp in MZp:
                histo = ch+'/Signal_MZp_'+mzp+'_MChi_1'
                Data_hist    =OutFile.Get(histo)
                print("%.7f " %Data_hist.Integral())

        print("###################### 2hdma sintheta  signal ##################")
        for the in theta:
                histo = ch+'/'+sin+the+tan1p0
                Data_hist    =OutFile.Get(histo)
                print("%.7f " %Data_hist.Integral())

        print("###################### 2hdma tanbeta 150 signal ##################")
        for beta in betas:
                histo = ch+'/'+sinp35+beta+tan150
                Data_hist    =OutFile.Get(histo)
                print("%.7f " %Data_hist.Integral())

        print("###################### 2hdma tanbeta 250 signal ##################")
        for beta in betas:
                histo = ch+'/'+sinp35+beta+tan250
                Data_hist    =OutFile.Get(histo)
                print("%.7f " %Data_hist.Integral())
