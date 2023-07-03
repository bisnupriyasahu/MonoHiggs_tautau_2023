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
# from sys import path
# path.append("../../../MacrosAndScripts/")
# from myPlotStyle import *
ROOT.gStyle.SetFrameLineWidth(1)
ROOT.gStyle.SetLineWidth(2)
ROOT.gStyle.SetOptStat(0)
#mc_samples = ['jetFakes', 'ZTTjet', 'ZLLjet', 'EWKWMinus', 'EWKWPlus', 'EWKZ2Jets', 'GluGluH', 'GluGluZH', 'HWminusJ', 'HWplusJ', 'HZJ', 'ST_t', 'TT', 'VBFH', 'WGToLNuG', 'VV', 'VVV', 'WplusH', 'ZH', 'ZJetsToNuNu' , 
              # 'signal_MH3_200_MH4_100', 'signal_MH3_200_MH4_150', 'signal_MH3_300_MH4_100', 'signal_MH3_300_MH4_150', 'signal_MH3_400_MH4_100', 'signal_MH3_400_MH4_150', 'signal_MH3_400_MH4_200', 'signal_MH3_400_MH4_250', 'signal_MH3_500_MH4_150', 'signal_MH3_500_MH4_200', 'signal_MH3_500_MH4_250', 'signal_MH3_500_MH4_300', 'signal_MH3_600_MH4_100', 'signal_MH3_600_MH4_150', 'signal_MH3_600_MH4_200', 'signal_MH3_600_MH4_250', 'signal_MH3_600_MH4_300', 'signal_MH3_600_MH4_350', 'signal_MH3_600_MH4_400', 'signal_MH3_600_MH4_500', 'signal_MH3_700_MH4_250', 'signal_MH3_700_MH4_300', 'signal_MH3_700_MH4_350', 'signal_MH3_700_MH4_400', 'signal_MH3_800_MH4_250', 'signal_MH3_800_MH4_300', 'signal_MH3_800_MH4_350', 'signal_MH3_800_MH4_500', 'signal_MH3_900_MH4_300', 'signal_MH3_900_MH4_350', 'signal_MH3_900_MH4_400', 'signal_MH3_900_MH4_500']
mc_samples = ['jetFakes', 'ZTTjet', 'ZLLjet', 'TT' , 'otherMC',
              'signal_MH3_200_MH4_100', 'signal_MH3_200_MH4_150', 'signal_MH3_300_MH4_100', 'signal_MH3_300_MH4_150', 'signal_MH3_400_MH4_100', 'signal_MH3_400_MH4_150', 'signal_MH3_400_MH4_200', 'signal_MH3_400_MH4_250', 'signal_MH3_500_MH4_150', 'signal_MH3_500_MH4_200', 'signal_MH3_500_MH4_250', 'signal_MH3_500_MH4_300', 'signal_MH3_600_MH4_100', 'signal_MH3_600_MH4_150', 'signal_MH3_600_MH4_200', 'signal_MH3_600_MH4_250', 'signal_MH3_600_MH4_300', 'signal_MH3_600_MH4_350', 'signal_MH3_600_MH4_400', 'signal_MH3_600_MH4_500', 'signal_MH3_700_MH4_250', 'signal_MH3_700_MH4_300', 'signal_MH3_700_MH4_350', 'signal_MH3_700_MH4_400', 'signal_MH3_800_MH4_250', 'signal_MH3_800_MH4_300', 'signal_MH3_800_MH4_350', 'signal_MH3_800_MH4_500', 'signal_MH3_900_MH4_300', 'signal_MH3_900_MH4_350', 'signal_MH3_900_MH4_400', 'signal_MH3_900_MH4_500'
             ]
outFile =  ROOT.TFile('sample_outfile_etau.root',"UPDATE")
        
def checkHistogram(f, histogram):
    isthere=  f.GetListOfKeys().Contains(histogram)
    #print(isthere)
    return isthere


def GetKeyNames( self, dir = "" ):
    self.cd(dir)
    return [key.GetName() for key in ROOT.gDirectory.GetListOfKeys()]
ROOT.TFile.GetKeyNames = GetKeyNames


def getHistList(inFile):
    keyList = inFile.GetKeyNames()
    #print "\nKeys in file:", keyList
    tmpList= []
    
    outFile.cd()
    outFile.mkdir('etau')
    outFile.cd('etau')
    try:
        data = inFile.Get('tot_TMass_full_9/data_obs_tot_TMass_full_9')
        data.SetName('data_obs')
        data.Write()
    except:
        pass
     

    for mc in mc_samples:
        for tdir in keyList:
            if mc != 'jetFakes' and "_fr" in tdir: 
                continue
            if "_dyll" in tdir: continue
            if 'tot_TMass_full' not in tdir : continue
            print 'tdir  =  ', tdir
            tmppath = tdir+'/'+mc+'_'+tdir
            print 'path  =  ', tmppath
            try:
                tmpHist = inFile.Get(tmppath)
                print(tdir)
                if '_fr' in tdir:
                    tdir = tdir.replace('_fr', '')
                tdir = tdir.replace('tot_TMass_full_9', '')
                tdir = tdir.replace('_down1', 'Down')
                tdir = tdir.replace('_down', 'Down')
                tdir = tdir.replace('_up1', 'Up')
                tdir = tdir.replace('_up', 'Up')
                print('after', tdir)
                tmpHist.SetName(mc+tdir)
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
    


outFile.Close()
