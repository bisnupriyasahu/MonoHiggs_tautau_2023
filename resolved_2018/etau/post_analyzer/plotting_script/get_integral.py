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
channel = ['tot_TMass_new', 'elePt', 'higgsPt' ] #, 'mutau', 'tautau']
MZp = ['100', '200', '500', '1000', '1500', '2000', '2500', '3000', '3500']
MChi = '1'
sin = 'Signal_2HDMa_gg_sinp_'
sinp35 = 'Signal_2HDMa_gg_sinp_0p35_tanb_'
tan150 = '_mXd_10_MH3_600_MH4_150'
tan250 = '_mXd_10_MH3_600_MH4_250'
tan1p0 = '_tanb_1p0_mXd_10_MH3_600_MH4_200'
theta = ['0p1', '0p2','0p3', '0p35', '0p4', '0p5', '0p6', '0p7', '0p8','0p9']
betas = ['0p5', '1p0', '1p5', '2p0', '4p0', '8p0', '20p0', '50p0']

#bkg = ['blinded_data_obs', 'ZTTjet', 'TT', 'STT', 'VVT',  'otherMC', 'jetFakes']
bkg = ['blinded_data_obs', 'ZTTjet', 'TT', 'STT', 'VVT', 'otherMC']

for ch in channel:
        inputFile_='f_'+ch+'_initial.root'    
        OutFile=ROOT.TFile(inputFile_,"r")    
        OutFile.cd()
        print(inputFile_)
        print("######################background ##################")
        for bkgs in bkg:
                histo = ch+'_9b/'+bkgs+'_'+ch+'_9b'
                #print(histo)
                Data_hist    =OutFile.Get(histo)
                #print(Data_hist.GetName())
                print("%.7f " %Data_hist.Integral())

