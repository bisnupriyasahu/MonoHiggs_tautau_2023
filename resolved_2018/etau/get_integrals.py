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

def getLabel(name):
    label = name
    label = label.replace('tot_TMass_full_9', '')
    label = label.replace('_down1', 'Down')
    label = label.replace('_up1', 'Up')
    label = label.replace('_down', 'Down')
    label = label.replace('_up', 'Up')
    label = label.replace('_Down', 'Down')
    label = label.replace('_Up', 'Up')
    if '_fr' in label:
        label = label.replace('_fr', '')
    return label

def getHistList(inFile, var="Pt", index="9b"):

    c.cd()
    padfull.Draw()
    padfull.cd()
    padfull.SetBottomMargin(0.15)
    
    hist = inFile.Get("genZ_"+var+"_"+index)
    hist.Scale(3.621)

    hist.SetFillColor(ROOT.TColor.GetColor(color_ztt))
    hist.GetYaxis().SetTitle("Events")
    hist.GetXaxis().SetTitle("Z "+var+" [GeV]")
    hist.SetTitle("Gen Z "+var)
    hist.Draw("hist")
    
    l1 = add_lumi('2018', 'etau', False, 1)
    l1.Draw("same")
    l2 = add_CMS()
    l2.Draw("same")
    l3 = add_Preliminary()
    l3.Draw("same")
    


    c.SaveAs("Z_"+var+"_"+index+".png")

if __name__=="__main__":
    infile =  'DY_inc' 
    rootfile = ROOT.TFile(infile+".root","READ")
    getHistList(rootfile, "Pt", "9b")
    getHistList(rootfile, "Pt", "5")
    getHistList(rootfile, "Mass", "9b")
    getHistList(rootfile, "Mass", "5")
    rootfile.Close()
    c.Close()
