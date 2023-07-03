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
        
inFile=ROOT.TFile("sf_files/FF_lptCorrInBinsOfTauPt/FF_differential/ff_files_tt_2018/raw_FF_tt.root","r")
#  KEY: TDirectoryFile   tt_0jet_qcd_iso;1       tt_0jet_qcd_iso
#  KEY: TDirectoryFile   tt_0jet_qcd_anti;1      tt_0jet_qcd_anti
# TDirectoryFile*         tt_0jet_qcd_iso tt_0jet_qcd_iso
#  KEY: TH1F      data_obs;1      h0LT_qcd_iso
#  KEY: TH1F      DYLT;1  h0LT_qcd_iso
#  KEY: TH1F      DYJ;1   h0J_qcd_iso
#  KEY: TH1F      TTLT;1  h0LT_qcd_iso
#  KEY: TH1F      TTJ;1   h0J_qcd_iso
#  KEY: TH1F      VVLT;1  h0LT_qcd_iso
#  KEY: TH1F      VVJ;1   h0J_qcd_iso
#  KEY: TH1F      STLT;1  h0LT_qcd_iso
#  KEY: TH1F      STJ;1   h0J_qcd_iso
outFile=ROOT.TFile("raw_FF_tautau_unfitted.root","RECREATE")
njet_list = [ 0, 1, 2, 3, 4]

#njet = str(njet_list[0])
mc_list = ["DYLT", "DYJ", "TTLT", "TTJ", "VVLT", "VVJ", "STLT", "STJ"]

for njet in njet_list:
    njet = str(njet)
    dirName = "tt_"+njet+"jet_qcd_iso"
    data_iso=inFile.Get(dirName+"/"+"data_obs")
    for mc in mc_list:
        tmp = inFile.Get(dirName+"/"+mc)
        data_iso.Add(tmp, -1)
        
    dirName = "tt_"+njet+"jet_qcd_anti"
    data_anti=inFile.Get(dirName+"/"+"data_obs")
    for mc in mc_list:
        tmp = inFile.Get(dirName+"/"+mc)
        data_anti.Add(tmp, -1)

    print "iso", data_iso.Integral(), " anti ", data_anti.Integral()
    
    data_iso.Divide(data_anti)
    data_iso.SetName("raw_FF_tautau_"+njet+"jet");
    data_iso.SetTitle("raw_FF_tautau_"+njet+"jet");
    #data_iso.GetXaxis().SetRangeUser(40,150);
    #drawHist( data_iso, "0jet")
    
    # nbins = data_iso.GetNbinsX()
    # for nbin in range(1, nbins+1):
    #     print data_iso.GetBinContent(nbin), " ", data_iso.GetBinError(nbin), " ", data_iso.GetXaxis().GetBinCenter(nbin), data_iso.GetXaxis().GetBinLowEdge(nbin), data_iso.GetXaxis().GetBinUpEdge(nbin), data_iso.GetXaxis().GetBinWidth(nbin)
    data_iso.Write()


outFile.Close()





