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
#mc_samples = [ 'EWKWMinus', 'EWKWPlus', 'EWKZ2Jets', 'GluGluH', 'GluGluZH', 'ST_t', 'VBFH', 'VV', 'VVV', 'WplusH', 'WminusH', 'ZH', 'ZJetsToNuNu']
mc_dict = {'STT': ['ST_t'] ,
           'VVT': ['VV', 'VVV' ],
           'otherMC' : [  'GluGluH', 'EWKWMinus', 'EWKWPlus', 'EWKZ2Jets', 'GluGluZH' , 'VBFH', 'WplusH', 'WminusH', 'ZH', 'ZJetsToNuNu' ]
       }
final_mc_list=['ZTTjet', 'ZLLjet', 'TT']
        
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
        #print 'tdir  =  ', tdir
        otherMC = inFile.Get(tdir+'/'+mc_samples[0]+'_'+tdir).Clone()
        otherMC.Reset("ICES")
        for mc in mc_samples:
            tmppath = tdir+'/'+mc+'_'+tdir
            #print 'path  =  ', tmppath
            try:
                tmpHist = inFile.Get(tmppath)
                #print 'intergal = ', tmpHist.Integral()
                otherMC.Add(tmpHist)
            except:
                pass
        #print 'integral  otherMC', otherMC.Integral()
        inFile.cd(tdir)
        otherMC.SetName("otherMC_"+tdir)
        otherMC.Write()
    return tmpList

def getHistList_v3(inFile):
    keyList = inFile.GetKeyNames()
    tmpList= []
    for tdir in keyList:
        print 'tdir  =  ', tdir
        for key, value in mc_dict.items():
            print key, value
            mc_samples = value
            
            try:
                smallMC = inFile.Get(tdir+'/'+mc_samples[0]+'_'+tdir).Clone()
                smallMC.Reset("ICES")
            except:
                continue
            for mc in mc_samples:
                tmppath = tdir+'/'+mc+'_'+tdir
                #print 'path  =  ', tmppath
                try:
                    tmpHist = inFile.Get(tmppath)
                    #print 'intergal = ', tmpHist.Integral()
                    smallMC.Add(tmpHist)
                except:
                    pass
            #print 'integral  otherMC', otherMC.Integral()
            inFile.cd(tdir)
            smallMC.SetName(key+"_"+tdir)
            smallMC.Write()
    return tmpList


# inFile_nominal= ROOT.TFile("f_etau_initial.root","UPDATE")
file_list = ["f_etau_initial.root", "f_etau_up.root", "f_etau_down.root"]

for fname in file_list:
    rootfile = ROOT.TFile(fname,"UPDATE")
    print(getHistList_v3(rootfile))
    rootfile.Close()
    

# for key, value in mc_dict.items():
#     print key, value
