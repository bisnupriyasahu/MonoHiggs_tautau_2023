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
    try:
        hist.Draw()
        c.SaveAs("vismass_"+category+".png")
    except:
        print("troubel making "+"vismass_"+category+".png" )
    c.Clear()
    c.Close()

        
OutFile=ROOT.TFile("smh2018tt_nocorrelation.root","r")

HistSelected = OutFile.Get("data")

def GetKeyNames( self, dir = "" ):
    self.cd(dir)
    return [key.GetName() for key in ROOT.gDirectory.GetListOfKeys()]
ROOT.TFile.GetKeyNames = GetKeyNames





keyList = OutFile.GetKeyNames()
print "\nKeys in file:", keyList
dataIntegral = 0
embedded_integral = 0
tmpList= []
for tdir in keyList:
    histlist = OutFile.GetKeyNames(tdir)
    tmpList.append("    in "+tdir+"***************>")
    for hlist in histlist:
        if ("Up" in hlist) or ("Down" in hlist) or (hlist in tmpList):
            continue
        else:
            tmpList.append(hlist)
    mylist = ['data_obs' ,'ZL' , 'embedded' , 'jetFakes']
    #print "\n hist in ",tdir," :", histlist
    for h in mylist:
        tmpHist = OutFile.Get(tdir+'/'+h)
        print h+" in "+ tdir +" ", tmpHist.Integral()
        if h=='data_obs':
            dataIntegral += tmpHist.Integral()
            #drawHist(tmpHist, tdir)
        elif h=='embedded':
            embedded_integral += tmpHist.Integral()
            
print '\n dataIntegral = ', dataIntegral
print '\n embedded_integral = ', embedded_integral

print tmpList
 # KEY: TH1F      data_obs;1      hpx
 # KEY: TH1F      qqH_htt125;1    hpx
 # KEY: TH1F      VVL;1   hpx
 # KEY: TH1F      WH_had_htt125;1 hpx
 # KEY: TH1F      WH_hww125;1     hpx
 # KEY: TH1F      WH_lep_htt125;1 hpx
 # KEY: TH1F      ZH_had_htt125;1 hpx
 # KEY: TH1F      ZH_hww125;1     hpx
 # KEY: TH1F      ZH_lep_htt125;1 hpx
 # KEY: TH1F      ZL;1    hpx
 # KEY: TH1F      embedded;1      hpx
 # KEY: TH1F      ggH_htt125;1    hpx
 # KEY: TH1F      ggH_hww125;1    hpx
 # KEY: TH1F      ggZH_had_htt125;1       hpx
 # KEY: TH1F      ggZH_lep_htt125;1       hpx
 # KEY: TH1F      qqH_hww125;1    hpx
 # KEY: TH1F      jetFakes;1      hpxj
