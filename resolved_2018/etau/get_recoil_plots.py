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

from prettytable import PrettyTable
from myPlotStyle import *

ROOT.gStyle.SetFrameLineWidth(1)
ROOT.gStyle.SetLineWidth(2)
ROOT.gStyle.SetOptStat(0)

mc_samples = []

        
def checkHistogram(f, histogram):
    isthere=  f.GetListOfKeys().Contains(histogram)
    #print(isthere)
    return isthere


def GetKeyNames( self, dir = "" ):
    self.cd(dir)
    return [key.GetName() for key in ROOT.gDirectory.GetListOfKeys()]
ROOT.TFile.GetKeyNames = GetKeyNames


file_name = 'sf_files/HTT-utilities/RecoilCorrections/data/TypeI-PFMet_Run2018'
infile = ROOT.TFile(file_name+".root","READ")

category = set()
regoin_jetpt = set()
h_type = ['data' , 'mc']

for hist in infile.GetKeyNames():
    # recoilZParal_NJet1PtGt50_hist_data
    hist = hist.split('_')
    if 'hist' not in hist: continue
    cat = hist[0]
    region = hist[1]
    category.add(cat)
    regoin_jetpt.add(region)

print category, regoin_jetpt




for cat in category:
    for r in regoin_jetpt:
        h_data = infile.Get(cat+'_'+r+'_hist_data')
        h_mc   = infile.Get(cat+'_'+r+'_hist_mc')
        #print c+'_'+r+'_hist' , h_data.Integral(), h_mc.Integral()
        ratio = h_data.Clone()
        ratio.Divide(h_mc)
        
        c.cd()
        padfull.Draw()
        padfull.cd()
        ratio.GetYaxis().SetTitle("data/MC")
        ratio.SetTitle(cat+' '+r)
        ratio.Draw()
        c.SaveAs("Recoil_"+cat+'_'+r+".png")

        
        
infile.Close()
c.Close()
