#!/usr/bin/env python
import ROOT
import re
from array import array
import sys
import csv
from math import sqrt
from math import pi
import datetime
import argparse
import os
# from sys import path
# path.append("../../../MacrosAndScripts/")
# from myPlotStyle import *
ROOT.gStyle.SetFrameLineWidth(1)
ROOT.gStyle.SetLineWidth(2)
ROOT.gStyle.SetOptStat(0)
#mc_samples = ['jetFakes', 'ZTTjet', 'ZLLjet', 'EWKWMinus', 'EWKWPlus', 'EWKZ2Jets', 'GluGluH', 'GluGluZH', 'HWminusJ', 'HWplusJ', 'HZJ', 'ST_t', 'TT', 'VBFH', 'WGToLNuG', 'VV', 'VVV', 'WplusH', 'ZH', 'ZJetsToNuNu' , 
              # 'signal_MH3_200_MH4_100', 'signal_MH3_200_MH4_150', 'signal_MH3_300_MH4_100', 'signal_MH3_300_MH4_150', 'signal_MH3_400_MH4_100', 'signal_MH3_400_MH4_150', 'signal_MH3_400_MH4_200', 'signal_MH3_400_MH4_250', 'signal_MH3_500_MH4_150', 'signal_MH3_500_MH4_200', 'signal_MH3_500_MH4_250', 'signal_MH3_500_MH4_300', 'signal_MH3_600_MH4_100', 'signal_MH3_600_MH4_150', 'signal_MH3_600_MH4_200', 'signal_MH3_600_MH4_250', 'signal_MH3_600_MH4_300', 'signal_MH3_600_MH4_350', 'signal_MH3_600_MH4_400', 'signal_MH3_600_MH4_500', 'signal_MH3_700_MH4_250', 'signal_MH3_700_MH4_300', 'signal_MH3_700_MH4_350', 'signal_MH3_700_MH4_400', 'signal_MH3_800_MH4_250', 'signal_MH3_800_MH4_300', 'signal_MH3_800_MH4_350', 'signal_MH3_800_MH4_500', 'signal_MH3_900_MH4_300', 'signal_MH3_900_MH4_350', 'signal_MH3_900_MH4_400', 'signal_MH3_900_MH4_500']
mc_samples = ['jetFakes', 'ZTTjet', 'ZLLjet', 'TT' , 'otherMC']
signal_samples=['signal_MH3_200_MH4_100', 'signal_MH3_200_MH4_150', 'signal_MH3_300_MH4_100', 'signal_MH3_300_MH4_150', 'signal_MH3_400_MH4_100', 'signal_MH3_400_MH4_150', 'signal_MH3_400_MH4_200', 'signal_MH3_400_MH4_250', 'signal_MH3_500_MH4_150', 'signal_MH3_500_MH4_200', 'signal_MH3_500_MH4_250', 'signal_MH3_500_MH4_300', 'signal_MH3_600_MH4_100', 'signal_MH3_600_MH4_150', 'signal_MH3_600_MH4_200', 'signal_MH3_600_MH4_250', 'signal_MH3_600_MH4_300', 'signal_MH3_600_MH4_350', 'signal_MH3_600_MH4_400', 'signal_MH3_600_MH4_500', 'signal_MH3_700_MH4_250', 'signal_MH3_700_MH4_300', 'signal_MH3_700_MH4_350', 'signal_MH3_700_MH4_400', 'signal_MH3_800_MH4_250', 'signal_MH3_800_MH4_300', 'signal_MH3_800_MH4_350', 'signal_MH3_800_MH4_500', 'signal_MH3_900_MH4_300', 'signal_MH3_900_MH4_350', 'signal_MH3_900_MH4_400', 'signal_MH3_900_MH4_500'
]
#outFile =  ROOT.TFile('sample_v2_etau.root',"UPDATE")
        
def checkHistogram(f, histogram):
    isthere=  f.GetListOfKeys().Contains(histogram)
    #print(isthere)
    return isthere


def GetKeyNames( self, dir = "" ):
    self.cd(dir)
    return [key.GetName() for key in ROOT.gDirectory.GetListOfKeys()]
ROOT.TFile.GetKeyNames = GetKeyNames

def getLabel(name):
    label = name
    label = label.replace('tot_TMass_full_9', '')
    label = label.replace('_down1', 'Down')
    label = label.replace('_up1', 'Up')
    label = label.replace('_down', 'Down')
    label = label.replace('_up', 'Up')
    if '_fr' in label:
        label = label.replace('_fr', '')
    return label

def getHistList(inFile):
    keyList = inFile.GetKeyNames()
    #print "\nKeys in file:", keyList
    tmpList= []
    channel = 'mutau'
    if not os.path.exists(channel):
        os.makedirs(channel)
    # outFile.cd()
    # if not outFile.GetDirectory(channel):
    #     outFile.mkdir(channel)
    # outFile.cd(channel)
    
    for signal in signal_samples:
        signal_dir = signal.replace("signal_", "")
        outFile =  ROOT.TFile(channel+'/'+signal_dir+'.root',"UPDATE")
        outFile.cd()
        
        for tdir in keyList:
            if 'tot_TMass_full' not in tdir : continue
            if "_dyll" in tdir: continue
            if tdir == 'tot_TMass_full_9':
                data = inFile.Get(tdir+'/data_obs_'+tdir)
                data.SetName('data_obs')
                data.Write()
            if inFile.Get(tdir+'/'+signal+'_'+tdir) and '_fr' not in tdir:
                signalhist = inFile.Get(tdir+'/'+signal+'_'+tdir)
                signalhist.SetName('signal' + getLabel(tdir))
                signalhist.Write()
            for mc in mc_samples:
                if mc != 'jetFakes' and '_fr' in tdir:
                    continue
                tmppath = tdir+'/'+mc+'_'+tdir
                try:
                    tmpHist = inFile.Get(tmppath)
                    tmpHist.SetName(mc + getLabel(tdir))
                    tmpHist.Write()
                except:
                    pass


    return tmpList


# inFile_nominal= ROOT.TFile("f_mutau_initial.root","UPDATE")
file_list = ["f_mutau_initial.root", "f_mutau_up.root", "f_mutau_down.root"]

for fname in file_list:
    rootfile = ROOT.TFile(fname,"READ")
    print(getHistList(rootfile))
    rootfile.Close()
    

