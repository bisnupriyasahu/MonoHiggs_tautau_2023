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

def drawHist(hist, category):
    c=ROOT.TCanvas("canvas","",0,0,1300,1200)
    c.cd()
    #try:
    hist.SetMarkerSize(50)
    hist.Draw()
    c.SaveAs("ff_"+category+".png")
    # except:
    #print("trouble making "+"sfTrigger_"+category+".png" )
    c.Clear()
    c.Close()
        
def drawHistSame(hist, category, *histograms):
    c=ROOT.TCanvas("canvas","",0,0,1300,1200)
    c.cd()
    #try:
    hist.SetMarkerSize(5)
    hist.Draw("E2")
    for h in histograms:
        h.Draw("same")
    c.SaveAs("ff_"+category+".png")
    # except:
    #print("trouble making "+"sfTrigger_"+category+".png" )
    c.Clear()
    c.Close()

def GetKeyNames( self, dir = "" ):
    self.cd(dir)
    return [key.GetName() for key in ROOT.gDirectory.GetListOfKeys()]
    ROOT.TFile.GetKeyNames = GetKeyNames
        
inFile1=ROOT.TFile("Ntuple_mc_1.root","r")
inFile2=ROOT.TFile("Ntuple_mc_10.root","r")
inFile3=ROOT.TFile("Ntuple_mc_old.root","r")

treeName = "phoJetNtuplizer/eventTree"

tree1 = inFile1.Get(treeName)
tree2 = inFile2.Get(treeName)
tree3 = inFile3.Get(treeName)
#print( type( tree ))


h1 = ROOT.TH1D("h1", "h1", 100, 0.0, 100.0)
h2 = ROOT.TH1D("h2", "h2", 100, 0.0, 100.0)
h3 = ROOT.TH1D("h3", "h3", 100, 0.0, 100.0)

c=ROOT.TCanvas("canvas","",0,0,1300,1200)
tree1.Draw("tauFiredTrgs >> h1")
tree2.Draw("tauFiredTrgs >> h2")
tree3.Draw("tauFiredTrgs >> h3")
h1.Draw()
h2.Draw("same")
h3.Draw("same")
c.SaveAs("ff_taupt.png")
c.Clear()
c.Close()
