#!/usr/bin/env python
import ROOT
import re
from array import array
from sys import argv
import sys
import ROOT as Root
import csv
from math import sqrt
from math import pi
import datetime
import argparse
# from sys import path
# path.append("../../../MacrosAndScripts/")

from myPlotStyle import *


parser = argparse.ArgumentParser()
parser.add_argument("-name",
                    help="name of hist to be plotted")
parser.add_argument("-year",
                    help="dataset year")
parser.add_argument("-in", "--inputFile",
                    help="name of input file")

parser.add_argument("-xaxis",
                    help="x axis label")

parser.add_argument("-lY", "--logYaxis", action="store_true",
                    help="set y axis log scale")
parser.add_argument("-raw", "--raw", action="store_true",
                    help="plot raw pf met")
parser.add_argument("-puppi", "--puppi", action="store_true",
                    help="plot puppi met")
parser.add_argument("-pi", "--piAxis", action="store_true",
                    help="set x axis in intervals of pi")

parser.add_argument("-nL", "--noLegend", action="store_true",
                    help="remove legend from histogram")

parser.add_argument("-cat", "--category",
                    help="pick reco histogram category")

parser.add_argument("-ch", "--channel",
                    help="pick decay channel")
parser.add_argument("-bkg", "--background",
                    help="pick MC bkg to be plotted")


now = datetime.datetime.now()
args =  parser.parse_args()
histoname=args.name
# year_=args.year
# inputFile_=args.inputFile
category_=args.category
# xaxis_label=args.xaxis[:-2]
# channel_=args.channel
# bkg_=args.background
# bkg_selected=bkg_
eventsPerBin=""
yaxisLog = 0
if (args.logYaxis):
  yaxisLog = 1
year_ = "2018"
channel_ = "tautau"
if histoname is None:
    histoname = 'visMass_6'
xaxis_label = histoname.split("_")[0]
ROOT.gStyle.SetFrameLineWidth(1)
ROOT.gStyle.SetLineWidth(2)
ROOT.gStyle.SetOptStat(0)

c.cd()
infileName = 'data_2018.root'
eraName = 'ABCD'
if category_ is not None:
  eraName = category_
  infileName = 'data_Tau_Run2018'+eraName+'.root'


OutFile=ROOT.TFile('../rootfiles/'+infileName,"r")
OutFile_1=ROOT.TFile('../fsa/'+infileName,"r")

adapt=ROOT.gROOT.GetColor(12)
new_idx=ROOT.gROOT.GetListOfColors().GetSize() + 1
trans=ROOT.TColor(new_idx, adapt.GetRed(), adapt.GetGreen(),adapt.GetBlue(), "",0.5)



HistSelected = OutFile.Get(histoname)
HistSelected_1 = OutFile_1.Get(histoname)
Data_hist    = OutFile.Get(histoname)

print "HistSelected = ", HistSelected.Integral()
print "HistSelected_1 = ", HistSelected_1.Integral()
print "difference = ", HistSelected.Integral() - HistSelected_1.Integral()


HistSelected_1.SetFillColor(ROOT.TColor.GetColor(color_ztt))

Data_hist.GetXaxis().SetTitle("")
Data_hist.GetXaxis().SetTitleSize(0)

nDivXAxis=405

Data_hist.GetXaxis().SetNdivisions(nDivXAxis)
Data_hist.GetXaxis().SetLabelSize(0)
Data_hist.GetYaxis().SetLabelFont(42)
Data_hist.GetYaxis().SetLabelOffset(0.01)
Data_hist.GetYaxis().SetLabelSize(0.04)
Data_hist.GetYaxis().SetTitleSize(0.05)
Data_hist.GetYaxis().SetTitleOffset(1.22)
Data_hist.SetTitle("")
Data_hist.GetYaxis().SetTitle("")

c.cd()
pad1.Draw()
pad1.cd()

if yaxisLog == 1 :
  pad1.SetLogy()  

Data_hist.SetMarkerStyle(20)
Data_hist.SetMarkerSize(0)
HistSelected.SetMarkerStyle(20)
HistSelected.SetMarkerSize(2)
HistSelected.SetMarkerColor(1)

if histoname == "cutflow_n":
  Data_hist.SetMarkerSize(0)
Data_hist.SetMarkerColor(1)

Data_hist.GetXaxis().SetTitle("")
Data_hist.GetYaxis().SetTitle("Events"+eventsPerBin)
if yaxisLog == 1 :
  Data_hist.SetMaximum(100*max(Data_hist.GetMaximum(), HistSelected_1.GetMaximum()))
  Data_hist.SetMinimum(10)
else:
  Data_hist.SetMaximum(1.2*max(Data_hist.GetMaximum(), HistSelected_1.GetMaximum()))
  Data_hist.SetMinimum(10)

errorBand=HistSelected.Clone()
errorBand.SetFillColor(1)
errorBand.SetFillStyle(errorStyle)
HistSelected.SetFillStyle(errorStyle)
# Data_hist.Draw("e1")
# HistSelected.Draw("histsame")
# HistSelected_1.Draw("e1same")

Data_hist.Draw("e1")
HistSelected_1.Draw("histsame")
HistSelected.Draw("e1same")

# with open("eventYield.txt", "a") as fileOut:
#   fileOut.write("my ntuple", HistSelected.Integral())
#   fileOut.write("from Cecile", HistSelected_1.Integral())



sampleListRef = ['HistSelected', 'HistSelected_1']
sampleList    = [HistSelected, HistSelected_1]
legendNameList = {
  'HistSelected'    : 'my ntuple',  
  'HistSelected_1'  : 'FSA',
  'ZJetsToNuNu_hist' : 'Z->nunu + jets'
}
legende=make_legend()
for i in range(len(sampleListRef)):
  if(i==0):
    legende.AddEntry(sampleList[i], legendNameList[sampleListRef[i]], "elp")
  else:
    legende.AddEntry(sampleList[i], legendNameList[sampleListRef[i]], "f")

l1=add_lumi(year_, channel_)
l1.Draw("same")
l2=add_CMS()
l2.Draw("same")
l3=add_Preliminary()
l3.Draw("same")

pad1.RedrawAxis()
#print "Line 217 is okay"


c.cd()
pad2.Draw()
pad2.cd()
h1=HistSelected.Clone()
h3=HistSelected_1.Clone()
hwoE=HistSelected_1.Clone()
h1.SetMarkerStyle(20)
h1.SetMarkerSize(1.5)
#h1.Sumw2()
#h3.Sumw2()
h1.SetStats(0)
h1.Divide(hwoE)
h3.Divide(hwoE)
h3.SetMarkerSize(0.1)
h1.GetXaxis().SetTitle(xaxis_label)
h1.SetMarkerColor(1)
h1.SetLineColor(1)
h1.SetTitle("")
h1.GetXaxis().SetLabelSize(0.1)
h1.GetYaxis().SetTitle("ratio")
h1.GetYaxis().SetLabelSize(0.08)
h1.SetMaximum(1.4)
h1.SetMinimum(0.6)
h1.GetXaxis().SetNdivisions(nDivXAxis)



h1.GetYaxis().SetNdivisions(5)
h1.GetXaxis().SetTitleFont(42)
h1.GetYaxis().SetTitleFont(42)
h1.GetXaxis().SetTitleSize(0.15)
h1.GetYaxis().SetTitleSize(0.15)
h1.GetYaxis().SetTitleOffset(0.3)
h1.GetXaxis().SetTitleOffset(1.1)
h3.SetFillStyle(0)
h3.SetFillColor(0)

h1.Draw("e0")
h3.Draw("e0same")


c.cd()

legende.Draw()
c.Modified()


if(yaxisLog == 1):
  c.SaveAs("plots_sm/"+histoname+"_era"+eraName+"_logYaxis.png")
else:
  c.SaveAs("plots_sm/"+histoname+"_era"+eraName+".png")

