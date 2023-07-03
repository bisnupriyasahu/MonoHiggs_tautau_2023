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
#mc_samples = ['ZTTjet', 'EWKWMinus', 'EWKWPlus', 'EWKZ2Jets', 'GluGluH', 'GluGluZH', 'HWminusJ', 'HWplusJ', 'HZJ', 'ST_t', 'TT', 'VBFH', 'WGToLNuG', 'VV', 'VVV', 'WplusH', 'ZH', 'ZJetsToNuNu']
mc_samples = ['ZTTjet', 'ZLLjet', 'TT', 'otherMC', 'STT', 'VVT']

        
inFile_nominal= ROOT.TFile("f_etau_initial.root","UPDATE")
# inFile_up     = ROOT.TFile("f_etau_up.root","r")
# inFile_down   = ROOT.TFile("f_etau_down.root","r")
# #tot_TMass_9_dyll_JER_down
# h_selected = "tot_TMass_full"
# #HistSelected = OutFile.Get("tot_TMass")
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
        jetFakes = inFile.Get(tdir+'/'+'data_obs_'+tdir)
        print 'integral  data_obs', jetFakes.Integral()
        for mc in mc_samples:
            tmppath = tdir+'/'+mc+'_'+tdir
            try:
                tmpHist = inFile.Get(tmppath)
                jetFakes.Add(tmpHist, -1)
            except:
                pass
        print 'integral  jetFakes', jetFakes.Integral()
        inFile.cd(tdir)
        jetFakes.SetName("jetFakes_"+tdir)
        jetFakes.Write()
    return tmpList


print(getHistList(inFile_nominal))
inFile_nominal.Close()
# print(getHistList(inFile_up))
# print(getHistList(inFile_down))            

