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
# mc_samples = ['ZTTjet', 'EWKWMinus', 'EWKWPlus', 'EWKZ2Jets', 'GluGluH', 'GluGluZH', 'HWminusJ', 'HWplusJ', 'HZJ', 'ST_t', 'TT', 'VBFH', 'WGToLNuG', 'VV', 'VVV', 'WplusH', 'ZH', 'ZJetsToNuNu']
mc_samples = ['ZTTjet', 'ZLLjet', 'TT', 'otherMC', 'STT', 'VVT']
        
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
    for tdir in keyList:
        if "_fr" not in tdir: continue
        if "CMS_htt_boson" in tdir : continue
        # if "tauh_ID" not in tdir : continue
        print 'tdir  =  ', tdir
        jetFakes = inFile.Get(tdir+'/'+mc_samples[0]+'_'+tdir).Clone()
        jetFakes.Reset("ICES")
        for mc in mc_samples:
            tmppath = tdir+'/'+mc+'_'+tdir
            #print 'path  =  ', tmppath
            try:
                tmpHist = inFile.Get(tmppath)
                #print 'intergal = ', tmpHist.Integral()
                jetFakes.Add(tmpHist)
            except:
                pass
        print 'integral  jetFakes', jetFakes.Integral()
        inFile.cd(tdir)
        jetFakes.SetName("jetFakes_"+tdir)
        jetFakes.Write()
    return tmpList


# inFile_nominal= ROOT.TFile("f_mutau_initial.root","UPDATE")
file_list = ["f_etau_up.root", "f_etau_down.root"]

for fname in file_list:
    rootfile = ROOT.TFile(fname,"UPDATE")
    print(getHistList(rootfile))
    rootfile.Close()
    

