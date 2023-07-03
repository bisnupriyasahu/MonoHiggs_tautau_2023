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


for ch in channel:
        inputFile_=ch+'.root'    
        OutFile=ROOT.TFile(inputFile_,"r")    
        OutFile.cd()
        print(inputFile_)
        for mzp in MZp:
                histo = ch+'/Signal_MZp_'+mzp+'_MChi_1'
                #print(histo)
                Data_hist    =OutFile.Get(histo)
           
                #print(histo)
                print(Data_hist.Integral())


