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


def GetKeyNames( self, dir = "" ):
    self.cd(dir)
    return [key.GetName() for key in ROOT.gDirectory.GetListOfKeys()]
ROOT.TFile.GetKeyNames = GetKeyNames


def fix_binning_v2(inFile, channelName, year):
    keyList = inFile.GetKeyNames(channelName)
    inFile.cd(channelName)
    for hist in sorted(set(keyList)):
        print (hist)
        tmpHist = inFile.Get(channelName + '/' + hist)
        #if 'Up' not in hist[-10:] and 'Down' not in hist[-10:] : continue
        #bkgname = hist.split('_')
        #if 'MH3' in bkgname : bkgname = '_'.join(bkgname[:4])
        #else : bkgname = bkgname[0]
        #bkg_hist = inFile.Get(channelName + '/' + bkgname)
        rewrite = False
        for ibin in range(1, tmpHist.GetNbinsX() + 1):
            ibinContent = tmpHist.GetBinContent(ibin)
            #bkg_bin_content = bkg_hist.GetBinContent(ibin)
            new_content = 0.001
            if 'Up'    in hist[-10:] : 
                new_content = new_content*1.01
            elif 'Down'  in hist[-10:] : 
                new_content = new_content*0.99
            if ibinContent <= 0 :
                rewrite = True
                tmpHist.SetBinContent(ibin, new_content)
                #print hist , ibin , ' bin content set to 0.001'
        if rewrite:
            tmpHist.SetName(hist)
            tmpHist.Write()


        

def main():
    channel = 'tautau'
    inputFile =  ROOT.TFile(channel+'.root',"UPDATE")
    fix_binning_v2(inputFile, channel, '2018')
    inputFile.Close()


if __name__=="__main__":
    main()
