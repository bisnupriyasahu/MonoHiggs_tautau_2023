#!/usr/bin/env python
import ROOT
import re
from array import array
from sys import argv
import ROOT as Root
import csv
from math import sqrt
from math import pi
import datetime
import argparse
from sys import path
#path.append("../../../MacrosAndScripts/")
from myPlotStyle import *
#import systematics_unc

'''
parser = argparse.ArgumentParser()
parser.add_argument("-name",
                    help="name of hist to be plotted")

parser.add_argument("-xaxis",
                    help="x axis label")

parser.add_argument("-lY", "--logYaxis", action="store_true",
                    help="set y axis log scale")


now = datetime.datetime.now()
args =  parser.parse_args()
histoname=args.name
#xaxis_label=args.xaxis[:-2]
'''


 
ROOT.gStyle.SetFrameLineWidth(1)
ROOT.gStyle.SetLineWidth(2)
ROOT.gStyle.SetOptStat(0)

c, pad1, pad2 = get_canvas()
c.cd()

data = 'fullLumi_Tau'
signalfile = ['Signal_ZpBaryonic2017_1', 'Signal_ZpBaryonic2017_17']
bkgrootfiles = ['DYJetsToLL_M-50_TuneCP5_final', 'VVT_channel', 'SingleTop_channel', 'TTbar_channel', 'WJets', 'otherMC']

#inputFile_='f_'+xaxis_label+'_initial.root'

#print(inputFile_)

adapt=ROOT.gROOT.GetColor(12)
new_idx=ROOT.gROOT.GetListOfColors().GetSize() + 1
trans=ROOT.TColor(new_idx, adapt.GetRed(), adapt.GetGreen(),adapt.GetBlue(), "",0.5)

#dirname = [histoname+"/",histoname, histoname+"_fr/", histoname+"_dyll/", histoname+"_dyll_fr/"]



#mc_samples = ['jetFakes', 'ZTTjet', 'ZLLjet', 'TT' , 'otherMC' , 'STT', 'VVT'] 

#OutFile.cd()
#data_hist_name = 'data_obs_'
histo = 'cutflow_n'
inputdata_=data+'.root'
Outdata=ROOT.TFile(inputdata_,"r")
Outdata.cd()
Data_hist = Outdata.Get(histo)

inputsig1 = 'Signal_ZpBaryonic2017_1.root'
outputsig1 = ROOT.TFile(inputsig1,"r")
outputsig1.cd()
signal_1 = outputsig1.Get(histo)

inputsig2 = 'Signal_ZpBaryonic2017_17.root'
outputsig2 = ROOT.TFile(inputsig2,"r")
outputsig2.cd()
signal_2 = outputsig2.Get(histo)


inputbkg1 = 'DYJetsToLL_M-50_TuneCP5_final.root'
outputbkg1 =  ROOT.TFile(inputbkg1,"r") 
outputbkg1.cd()
ZTT_hist = outputbkg1.Get(histo)

inputbkg2 = 'VVT_channel.root'
outputbkg2 =   ROOT.TFile(inputbkg2,"r") 
outputbkg2.cd()
VV_hist = outputbkg2.Get(histo)

inputbkg3 = 'SingleTop_channel.root'
outputbkg3 =   ROOT.TFile(inputbkg3,"r") 
outputbkg3.cd()
ST_t_hist = outputbkg3.Get(histo)

inputbkg4 = 'TTbar_channel.root'
outputbkg4 =   ROOT.TFile(inputbkg4,"r") 
outputbkg4.cd()
TT_hist = outputbkg4.Get(histo)

inputbkg5 = 'WJets.root'
outputbkg5 =   ROOT.TFile(inputbkg5,"r") 
outputbkg5.cd()
Wjets_hist= outputbkg5.Get(histo) 


inputbkg6 = 'otherMC.root'
outputbkg6 =   ROOT.TFile(inputbkg6,"r") 
outputbkg6.cd()
otherMC_hist= outputbkg6.Get(histo)


sampleList    = [Data_hist,ZTT_hist, TT_hist,  ST_t_hist, VV_hist, otherMC_hist, Wjets_hist ]
#sampleList    = [ZTT_hist, TT_hist,  ST_t_hist, VV_hist, otherMC_hist, Wjets_hist ]
sampleListRef = ['Data_hist',  'TT_hist', 'ST_t_hist', 'VV_hist', 'otherMC_hist', 'Wjets_hist', 'ZTT_hist' ]
blindingRatio_ = 1
year_ = '2017'
channel_ = 'tautau'


Wjets_hist.SetFillColor(ROOT.TColor.GetColor(color_wjets))
#jetFakes_hist.SetFillColor(ROOT.TColor.GetColor(color_jetfake))
ZTT_hist.SetFillColor(ROOT.TColor.GetColor(color_ztt))
#ZLL_hist.SetFillColor(ROOT.TColor.GetColor(color_zll))
TT_hist.SetFillColor(ROOT.TColor.GetColor(color_tt))
ST_t_hist.SetFillColor(ROOT.TColor.GetColor(color_ggh))
VV_hist.SetFillColor(ROOT.TColor.GetColor(color_vv))
otherMC_hist.SetFillColor(ROOT.TColor.GetColor(color_otherMC))


signal_1.SetLineColor(55)
signal_2.SetLineColor(65)

signal_1.SetLineWidth(5)
signal_2.SetLineWidth(5)



for i in range(len(sampleList)):
  sampleList[i].SetLineColor(1)

stack=ROOT.THStack("stack","stack")  
#print(len(sampleList))
print(len(sampleList)-1)
print(range(len(sampleList)-1, 0, -1))
#for i in range(len(sampleList)-1, 0, -1):
for sample in sampleList:
  #print("i si : ",sample)
  print("sample list ",sample)
  stack.Add(sample)


sampleList    = [Data_hist, TT_hist,  ST_t_hist, VV_hist, otherMC_hist, Wjets_hist, ZTT_hist ]
numberOfBins = Data_hist.GetNbinsX()
for ibin in range(1, numberOfBins+1):
  Data_hist.SetBinContent(ibin, round(Data_hist.GetBinContent(ibin)))
  
Data_hist.GetXaxis().SetTitle("selections")
Data_hist.GetXaxis().SetRangeUser(0,10) 
#Data_hist.GetXaxis().SetTitleSize(0)

errorBand=sampleList[1].Clone()
for i in range(2, len(sampleList)):
  errorBand.Add(sampleList[i])
  
''''
for ibin in range(1, numberOfBins+1):
  content = errorBand.GetBinContent(ibin)
  if content<=0:
    content = 0
    errorBand.SetBinError(ibin, 0)
    continue
  stat_err = 1/sqrt(content)
  if content < 0.5:
    stat_err = 1.0
  syst_1 = 0.05*content
  syst_2 = 0.1*ZTT_hist.GetBinContent(ibin)
  syst_3 = 0.1*jetFakes_hist.GetBinContent(ibin)
  syst_4 = 0.1*TT_hist.GetBinContent(ibin)
  syst_5 = 0.1*otherMC_hist.GetBinContent(ibin)    
  total_error = sqrt(2*syst_1*syst_1 + 2*syst_2*syst_2 + syst_3*syst_3 +syst_4*syst_4 + syst_5*syst_5 + stat_err*stat_err)
  errorBand.SetBinError(ibin, total_error)

'''

#errorBand.SetMarkerSize(0)
#errorBand.SetFillColor(1)
#errorBand.SetFillStyle(errorStyle)
#errorBand.SetLineWidth(1)
nDivXAxis= Data_hist.GetNbinsX()

Data_hist.GetXaxis().SetNdivisions(nDivXAxis)
Data_hist.GetXaxis().SetLabelSize(0)
Data_hist.GetYaxis().SetLabelFont(42)
Data_hist.GetYaxis().SetLabelOffset(0.01)
Data_hist.GetYaxis().SetLabelSize(0.04)
Data_hist.GetYaxis().SetTitleSize(0.05)
Data_hist.GetYaxis().SetTitleOffset(1.22)
Data_hist.SetTitle("")
Data_hist.GetYaxis().SetTitle("")

# with open('eventYield.csv', mode='w') as yield_file:
#   yield_write = csv.writer(yield_file, delimiter=',', quotechar='"')
#   yield_write.writerow(['Name', 'Yield' ])

#sampleListRef = ['Data_hist', 'ZTT_hist',  'TT_hist', 'ST_t_hist', 'VV_hist', 'otherMC_hist', 'Wjets_hist']



if histo=='cutflow_n' :
  with open('eventYield_cutflow.csv', mode='a') as yield_file:
    yield_write = csv.writer(yield_file, delimiter=',', quotechar='"')
    yield_write.writerow(['From Cutflow bin 5' ])
    yield_write.writerow(['Data_hist', Data_hist.GetBinContent(5) ])
    yield_write.writerow(['ZTT',  ZTT_hist.GetBinContent(5)  ])
    yield_write.writerow(['TT',   TT_hist.GetBinContent(5) ])
    yield_write.writerow(['ST',  ST_t_hist.GetBinContent(5)  ])
    yield_write.writerow(['VV' ,  VV_hist.GetBinContent(5) ])
    yield_write.writerow(['otherMc', otherMC_hist.GetBinContent(5) ])
    yield_write.writerow(['Wjets',  Wjets_hist.GetBinContent(5) ])
    yield_write.writerow(['mc sum',  ZTT_hist.Integral()+TT_hist.Integral()+ST_t_hist.Integral()+VV_hist.Integral()+otherMC_hist.Integral()+Wjets_hist.Integral()  ])
   

for i in range(len(sampleList)):
  name = sampleListRef[i].replace('_hist', '')
  #print ( name,  sampleList[i].Integral()  )
  #print ( sampleList[i].Integral()  )



c.cd()
pad1.Draw()
pad1.cd()
Data_hist.SetMarkerStyle(20)
Data_hist.SetMarkerColor(1)
Data_hist.SetMarkerSize(1.5)
if histo == "cutflow_n":
  Data_hist.SetMarkerSize(2)


Data_hist.GetXaxis().SetTitle("")
Data_hist.GetYaxis().SetTitle("Events")
#if yaxisLog == 1 :
#  Data_hist.SetMaximum(100*max(Data_hist.GetMaximum(),stack.GetMaximum() ))
#  Data_hist.SetMinimum(1000)

#elif 'tot_TMass_full' in histoname or 'tot_TMass_new' in histoname :
#pad1.SetLogy()  
#pad1.SetLogx()  
#Data_hist.SetMaximum(2*max(Data_hist.GetMaximum(),stack.GetMaximum()))
#Data_hist.SetMinimum(0.1)
#Data_hist.SetMaximum(100000.0)

if channel_=="tautau":
  Data_hist.SetMaximum(2.5*max(Data_hist.GetMaximum(), stack.GetMaximum()))
  Data_hist.SetMinimum(0.0)

# if yaxisLog == 1 :
pad1.SetLogy()  
  
if histo == "cutflow_n":
  Data_hist.SetMinimum(1000)

Data_hist.Draw("e1")
stack.Draw("histsame")
# if histoname != "cutflow_n":
errorBand.Draw("e2same")
if 'cutflow_n' in histo:
  signal_1.Draw("histsame")
  signal_2.Draw("histsame")
  
Data_hist.Draw("e1same")
if histo == "cutflow_n":
  Data_hist.Draw("e0psame")

legendNameList = {
  'Data_hist'  : 'Data obs',
  'ZTT_hist'   : 'Z->tautau',
  'ZLL_hist'   : 'Z-> ll',
  'Wjets_hist' : 'WJets',
  #'jetFakes_hist'      : 'jet-tau fake', 
  'TT_hist'    : 'ttabr',
  #'GluGluH_hist' : 'ggh, vbfH, ZH',
  'ST_t_hist' : 'SingleTop',
  'VV_hist'    : 'Diboson',
  'otherMC_hist' : 'other MC',
  #'ZJetsToNuNu_hist' : 'Z->nunu + jets'
}
legende=make_legend()
for i in range(len(sampleListRef)):
  if(i==0):
    legende.AddEntry(sampleList[i], legendNameList[sampleListRef[i]], "elp")
  else:
    legende.AddEntry(sampleList[i], legendNameList[sampleListRef[i]], "f")
  
#if 'tot_TMass_full' in histoname or 'tot_TMass_new' in histoname:
#legende.AddEntry(signal_MZp_100_MChi_1, 'mA=600 ma=200', "el")
#legende.AddEntry(signal_MZp_1000_MChi_1, 'mA=600 ma=150', "el")
#legende.AddEntry(signal_MZp_1500_MChi_1, 'mA=600 ma=250', "el")
if 'cutflow_n' in histo:
  legende.AddEntry(signal_1, 'MZp=1000 MChi=100', "el")
  legende.AddEntry(signal_2, 'MZp=2000 MChi=200', "el")

l1=add_lumi(year_, channel_, blindingRatio = blindingRatio_)
l1.Draw("same")
l2=add_CMS()
l2.Draw("same")
l3=add_Preliminary()
l3.Draw("same")

selection_mapping = {
  "4" : ["after mu-tau selection", "", "", ""],
  "5" : ["after bjetveto", "", "", ""], 
  "6" : ["preselection", "", "", ""], 
  "7" : ["preselection", "+ Higgs pT >65", "", ""],
  "8" : ["preselection", "+ Higgs pT >65", "+ visible mass<125", ""],
  "9" : ["preselection", "+ Higgs pT >65", "+ visible mass<125", "+ met > 120"],
}
#selection_idx = histoname.split("_")[-1]
#selection_label = add_text(text=selection_mapping[selection_idx])
#selection_label.Draw("same")

pad1.RedrawAxis()
#print "Line 217 is okay"


c.cd()
pad2.Draw()
pad2.cd()
h1=Data_hist.Clone()
h3=errorBand.Clone()
hwoE=errorBand.Clone()
h1.SetMarkerStyle(20)
h1.SetMarkerSize(2.0)
#h1.Sumw2()
#h3.Sumw2()
h1.SetStats(0)
h1.Divide(hwoE)
h3.Divide(hwoE)

xaxis_label = 'cutflow_n'
label_mapping = {
  
  "muPt" : "muon pT [GeV]",
  "elePt" : "electron pT [GeV]",
  "tauPt" : "tau pT [GeV]",
  "tau1Pt" : "leading tau pT [GeV]",
  "tau2Pt" : "subleading tau pT [GeV]",
  "met"   : "MET [GeV]" ,
  "higgsPt" : "higgs pT [GeV]",
  "mT_muMet" : "#mu-met transverse mass [GeV]",
  "metLongXaxis" : "met [GeV]",
  "visMass" : "#mu-#tau visible mass [GeV]",
  "nJet" : "number of Jets",
  "deltaR" : "#mu-#tau deltaR", 
  "tot_TMass_new" : "total transverse mass [GeV]",
  "cutflow_n" : "cutflow"
}



h1.GetXaxis().SetTitle(label_mapping.get(xaxis_label,xaxis_label ))
h1.SetMarkerColor(1)
h1.SetLineColor(1)
h1.SetTitle("")
h1.GetXaxis().SetLabelSize(0.1)
h1.GetYaxis().SetTitle("Data/MC")
h1.GetYaxis().SetLabelSize(0.08)
h1.SetMaximum(2.0)
h1.SetMinimum(0.0)
h1.GetXaxis().SetNdivisions(nDivXAxis)

if histo=='cutflow_n':
  
  h1.GetXaxis().SetBinLabel(8,"mu-tau \n separation");
  h1.GetXaxis().SetBinLabel(7,"b-Jet veto");
  h1.GetXaxis().SetBinLabel(6,"3rd lepton \n veto");
  h1.GetXaxis().SetBinLabel(5,"opposite \n ch.");
  h1.GetXaxis().SetBinLabel(4,"tau \n selections");
  h1.GetXaxis().SetBinLabel(3,"Muon \n selections");
  h1.GetXaxis().SetBinLabel(2,"Trigger");
  h1.GetXaxis().SetBinLabel(1,"Initial");
  h1.GetXaxis().LabelsOption("v")
  h1.GetXaxis().SetTitle(" ")
  h1.SetMaximum(2.0)#FIXME(1.2)
  h1.SetMinimum(0.0)#FIXME(0.8)



h1.GetYaxis().SetNdivisions(5)
h1.GetXaxis().SetNdivisions(510)
h1.GetXaxis().SetTitleFont(42)
h1.GetYaxis().SetTitleFont(42)
h1.GetXaxis().SetTitleSize(0.15)
h1.GetYaxis().SetTitleSize(0.15)
h1.GetYaxis().SetTitleOffset(0.3)
h1.GetXaxis().SetTitleOffset(1.1)


c.cd()
legende.Draw()
#ROOT.gPad.RedrawAxis()

c.Modified()
c.SaveAs("plot_"+histo+"_"+channel_+".png")
