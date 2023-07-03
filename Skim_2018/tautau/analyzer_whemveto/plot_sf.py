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
    hist.SetMarkerSize(5)
    hist.Draw("E2")
    c.SaveAs("sfTrigger_"+category+".png")
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
    c.SaveAs("sfTrigger_"+category+".png")
    # except:
    #print("trouble making "+"sfTrigger_"+category+".png" )
    c.Clear()
    c.Close()
        
inFile=ROOT.TFile("sf_files/TauTriggerSFs/data/2018_tauTriggerEff_DeepTau2017v2p1.root","r")
isVBF=False
isolation = "Medium"
vbf=""
if isVBF:
    vbf = "vbf"
dmSelected = 0
histogramName = "ditau"+str(vbf)+"_"+str(isolation)+"_dm"+str(dmSelected)+"_fitted"
graphName =  "ditau"+str(vbf)+"_"+str(isolation)+"_dm"+str(dmSelected)+"_eff"

HistSelected = inFile.Get("sf_"+histogramName)
data_hist =inFile.Get("data_"+histogramName)
mc_hist = inFile.Get("mc_"+histogramName)

data_eff = inFile.Get("data_"+graphName)
mc_eff = inFile.Get("mc_"+graphName)

def GetKeyNames( self, dir = "" ):
    self.cd(dir)
    return [key.GetName() for key in ROOT.gDirectory.GetListOfKeys()]
    ROOT.TFile.GetKeyNames = GetKeyNames
    

#sf_graph = mc_eff.Divide(data_eff, mc_eff)
#drawHist(sf_graph, "0")

data_hist.Divide(mc_hist)
data_hist.GetXaxis().SetRangeUser(40,300);
drawHist(data_hist, "0")


