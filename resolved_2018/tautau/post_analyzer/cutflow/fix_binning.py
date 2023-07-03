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

channelName = 'mutau'
inputFile =  ROOT.TFile(channelName+'.root',"UPDATE")
        

def GetKeyNames( self, dir = "" ):
    self.cd(dir)
    return [key.GetName() for key in ROOT.gDirectory.GetListOfKeys()]
ROOT.TFile.GetKeyNames = GetKeyNames


def fix_binning(inFile):
    keyList = inFile.GetKeyNames(channelName)
    inFile.cd(channelName)
    for hist in keyList:
        #print hist
        tmpHist = inFile.Get(channelName + '/' + hist)
        #print hist , ' integral = ', tmpHist.Integral()
        for ibin in range(1, tmpHist.GetNbinsX() + 1):
            ibinContent = tmpHist.GetBinContent(ibin)
            #print 'bin', ibin , 'bin content = ', ibinContent
            if ibinContent < 0 :
                tmpHist.SetBinContent(ibin, 0)
                print hist , 'bin content set to zero'
                print 'bin', ibin , 'bin content = ', tmpHist.GetBinContent(ibin)
                tmpHist.Write()


fix_binning(inputFile)

inputFile.Close()
