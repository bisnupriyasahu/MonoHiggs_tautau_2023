#!/usr/bin/env python
import ROOT
import re
from array import array
from os import path
import csv
from math import sqrt
from math import pi
import datetime
import argparse
# from sys import path
# path.append("../../../MacrosAndScripts/")
# from myPlotStyle import *
ROOT.gStyle.SetFrameLineWidth(1)
ROOT.gStyle.SetLineWidth(2)
ROOT.gStyle.SetOptStat(0)
#mc_samples = ['ZTTjet', 'EWKWMinus', 'EWKWPlus', 'EWKZ2Jets', 'GluGluH', 'GluGluZH', 'HWminusJ', 'HWplusJ', 'HZJ', 'ST_t', 'TT', 'VBFH', 'WGToLNuG', 'VV', 'VVV', 'WplusH', 'ZH', 'ZJetsToNuNu']
mc_samples = ['ZTTjet', 'ZLLjet', 'TT', 'otherMC', 'STT', 'VVT', 'jetFakes']

def GetKeyNames( self, dir = "" ):
    self.cd(dir)
    return [key.GetName() for key in ROOT.gDirectory.GetListOfKeys()]
ROOT.TFile.GetKeyNames = GetKeyNames

signal_list = ['MZp_100_MChi_1',
    'MZp_200_MChi_1',
    'MZp_500_MChi_1',
    'MZp_1000_MChi_1',
    'MZp_1500_MChi_1',
    'MZp_2000_MChi_1',
    'MZp_2500_MChi_1',
]

def getHistList():

    inFile = ROOT.TFile('mutau.root')
    keyList = inFile.GetKeyNames('mutau')
    #print "\nKeys in file:", keyList
    tmpList= []
    bkg_sum = 0
    signals = {}
    for h in keyList:
        # print h
        tmp_hist = inFile.Get('mutau/'+h)
        if h in mc_samples:
            print h, tmp_hist.Integral()
            bkg_sum += tmp_hist.Integral()
        if h in signal_list:
            signals[h] = tmp_hist.Integral()

    print 'sum = ', bkg_sum
    print signals
    
    
    signals = sorted(signals.items(), key = lambda x : int(x[0].split('_')[1])  )

    for signal, integral in signals:
        print signal , integral, bkg_sum , integral/sqrt(integral+bkg_sum)

    

if __name__=="__main__":
    getHistList()


