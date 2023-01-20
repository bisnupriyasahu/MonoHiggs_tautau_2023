#!/usr/bin/env python
import ROOT
from ROOT import *
import sys
import re
from array import array
import ROOT as rt
import argparse
from get_xsec import get_xsec 

def add_lumi( channel_='et', year_="2017"):
    lowX=0.55
    lowY=0.84
    lumi  = ROOT.TPaveText(lowX, lowY+0.04, lowX+0.30, lowY+0.14, "NDC")
    lumi.SetBorderSize(   0 )
    lumi.SetFillStyle(    0 )
    lumi.SetTextAlign(   12 )
    lumi.SetTextColor(    1 )
    lumi.SetTextSize(0.05)
    lumi.SetTextFont (   42 )
    if year_=="2018":
        lumiProcessed="59.7"
    else:
        lumiProcessed="41.2"
    ch_label = "e#tau_{h} "
    if channel_=="mt":
        ch_label = "#mu#tau_{h} "
    if channel_=="et":
        ch_label = "e#tau_{h} "
    if channel_=="tt":
        ch_label = "#tau_{h}#tau_{h} "
    if channel_=="cmb":
        ch_label = "combined "
    lumi.AddText(ch_label + " " + year_+ " " + lumiProcessed+"fb^{-1} (13 TeV)")
    return lumi

def add_CMS():
    lowX=0.21
    lowY=0.70
    lumi  = ROOT.TPaveText(lowX, lowY+0.06, lowX+0.15, lowY+0.16, "NDC")
    lumi.SetTextFont(61)
    lumi.SetTextSize(0.05)
    lumi.SetBorderSize(   0 )
    lumi.SetFillStyle(    0 )
    lumi.SetTextAlign(   12 )
    lumi.SetTextColor(    1 )
    lumi.AddText("CMS")
    return lumi

def add_Preliminary():
    lowX=0.21
    lowY=0.63
    lumi  = ROOT.TPaveText(lowX, lowY+0.06, lowX+0.15, lowY+0.16, "NDC")
    lumi.SetTextFont(52)
    lumi.SetTextSize(0.04)
    lumi.SetBorderSize(   0 )
    lumi.SetFillStyle(    0 )
    lumi.SetTextAlign(   12 )
    lumi.SetTextColor(    1 )
    lumi.AddText("Preliminary")
    return lumi

def make_legend():
    output = ROOT.TLegend(0.5, 0.6, 0.92, 0.85, "", "brNDC")
    output.SetLineWidth(0)
    output.SetLineStyle(0)
    output.SetFillStyle(0)
    output.SetBorderSize(0)
    output.SetTextFont(62)
    output.SetNColumns(2)
    
    return output

prefit_color = kOrange+8
postfit_color = kBlue+2
other_color = kAzure+1
# declare colors
color_ztt="#ffcc66"
color_zll="#4496c8"
color_tt="#9999cc"
color_ggh="#12cadd"
color_vv="#990099"
color_wjets="#cc6666" 
color_jetfake="#f1cde1"

class zprime:
    def __init__(self, idx , hist='tot_TMass_full_9b', lumi=59.7):
        self.idx = idx
        self.infile = ROOT.TFile('zprime_combined/Signal_Zpbaryonic2018_'+str(idx)+'.root',"r")
        self.hist   = self.infile.Get(hist)
        self.lumi = lumi*1000
        nEvents = self.infile.Get('nEvents_ZpB').GetBinContent(self.idx+1)
        weight = get_xsec(self.idx)[0] *0.06* self.lumi / nEvents
        self.hist.Scale(weight)
        self.label = get_xsec(self.idx)[1]

        
    def get_hist(self):
        return self.hist
    
    def get_label(self):
        return self.label


def MakePlot_v2(cat='prefit', ch='et',  year="2017"):
    Status = ''
    Channel = ch
    HistName = ''
    Xaxis = "tot tr. mass [GeV]"
    MinRange, MaxRange = 40, 2000
    ROOT.gStyle.SetFrameLineWidth(3)
    ROOT.gStyle.SetLineWidth(3)
    ROOT.gStyle.SetOptStat(0)
    # ROOT.gStyle.SetErrorX(0.0001);
    RB_=1

    c=ROOT.TCanvas("canvas","",0,0,1200,1000)
    c.cd()

    zpbaryonic1 = zprime(1)
    Data1 =  zpbaryonic1.get_hist()
    #print 'Data1' , type(Data1),  Data1.Integral()
    zpbaryonic2 = zprime(2)
    Data2 =  zpbaryonic2.get_hist()
    #print 'Data2' , type(Data2),  Data2.Integral()
    zpbaryonic3 = zprime(3)
    Data3 =  zpbaryonic3.get_hist()
    #print 'Data3' , type(Data3),  Data3.Integral()
    zpbaryonic4 = zprime(4)
    Data4 =  zpbaryonic4.get_hist()
    #print 'Data4' , type(Data4),  Data4.Integral()

    zpbaryonic5 = zprime(5)
    Data5 =  zpbaryonic5.get_hist()
    
    zpbaryonic6 = zprime(6)
    Data6 =  zpbaryonic6.get_hist()
    
    zpbaryonic7 = zprime(7)
    Data7 =  zpbaryonic7.get_hist()
    
    zpbaryonic8 = zprime(8)
    Data8 =  zpbaryonic8.get_hist()
    
    adapt=ROOT.gROOT.GetColor(12)
    new_idx=ROOT.gROOT.GetListOfColors().GetSize() + 1
    #    trans=ROOT.TColor(new_idx, adapt.GetRed(), adapt.GetGreen(),adapt.GetBlue(), "",0.5)
    #    categories=["MuTau_DiJet","MuTau_JetBJet"]
    #    ncat=
                                

    pad1 = ROOT.TPad("pad1","pad1",0,0.15,1,1)
    pad1.Draw()
    pad1.cd()
    #    if Status == "LOG" : pad1.SetLogy() ; pad1.SetLogx()
    if Status == "LOG" : pad1.SetLogy()
    
    pad1.SetFillColor(0)
    pad1.SetBorderMode(0)
    pad1.SetBorderSize(10)
    pad1.SetTickx(1)
    pad1.SetTicky(1)
    pad1.SetLeftMargin(0.18)
    pad1.SetRightMargin(0.05)
    pad1.SetTopMargin(0.122)
    pad1.SetBottomMargin(0.12)
    pad1.SetFrameFillStyle(0)
    pad1.SetFrameLineStyle(0)
    pad1.SetFrameLineWidth(3)
    pad1.SetFrameBorderMode(0)
    pad1.SetFrameBorderSize(10)

    #Data1.GetXaxis().SetLabelSize(0)
    
    if Status == "LOG" :Data1.SetMaximum(Data1.GetMaximum()*2000); Data1.SetMinimum(0.001)
    #    if Status == "LOG" :Data1.SetMaximum(999); Data1.SetMinimum(0.01)
    if Status=="": Data1.SetMaximum(2*max(Data1.GetMaximum(), Data2.GetMaximum(), 
                                          Data3.GetMaximum(), Data4.GetMaximum(),
                                          Data5.GetMaximum(), Data6.GetMaximum(),
                                          Data7.GetMaximum(), Data8.GetMaximum()
                                      )) ;  
    Data1.SetMinimum(0)
    
    Data1.SetLineColor(1)
    Data2.SetLineColor(2)
    Data3.SetLineColor(3)
    Data4.SetLineColor(4)
    Data5.SetLineColor(5)
    Data6.SetLineColor(6)
    Data7.SetLineColor(7)
    Data8.SetLineColor(8)

    Data1.SetLineWidth(3)
    Data2.SetLineWidth(3)
    Data3.SetLineWidth(3)
    Data4.SetLineWidth(3)
    Data5.SetLineWidth(3)
    Data6.SetLineWidth(3)
    Data7.SetLineWidth(3)
    Data8.SetLineWidth(3)

    #Data1.GetXaxis().SetRangeUser(MinRange ,MaxRange)
    Data1.GetXaxis().SetTitle("tot tr mass [GeV]")
    Data1.GetXaxis().SetTitleSize(0.05)
    Data1.GetXaxis().SetLabelOffset(0.01)
    #Data1.GetXaxis().SetNdivisions(506)
    Data1.GetYaxis().SetLabelFont(42)
    Data1.GetYaxis().SetLabelOffset(0.01)
    Data1.GetYaxis().SetLabelSize(0.04)
    Data1.GetYaxis().SetTitleSize(0.05)
    Data1.GetYaxis().SetTitleOffset(1.04)
    Data1.SetTitle("")
    Data1.GetYaxis().SetTitle("Events / GeV")

    #Data1.SetBinErrorOption(rt.TH1.kPoisson)
    Data1.Draw("hist")
    Data2.Draw("histsame")
    Data3.Draw("histsame")
    Data4.Draw("histsame")
    Data5.Draw("histsame")
    Data6.Draw("histsame")
    Data7.Draw("histsame")
    Data8.Draw("histsame")
    
    
    print 1 , Data1.Integral() 
    print 2, Data2.Integral()
    print 3,   Data3.Integral()
    print 4,    Data4.Integral()
    print 5,    Data5.Integral()
    print 6,    Data6.Integral()
    print 7,  Data7.Integral()
    print 8,    Data8.Integral()
    

    legende=make_legend()
    legende.AddEntry(Data1, zpbaryonic1.get_label() ,"elp")
    legende.AddEntry(Data2, zpbaryonic2.get_label() ,"elp")
    legende.AddEntry(Data3, zpbaryonic3.get_label() ,"elp")
    legende.AddEntry(Data4, zpbaryonic4.get_label() ,"elp")
    legende.AddEntry(Data5, zpbaryonic5.get_label() ,"elp")
    legende.AddEntry(Data6, zpbaryonic6.get_label() ,"elp")
    legende.AddEntry(Data7, zpbaryonic7.get_label() ,"elp")
    legende.AddEntry(Data8, zpbaryonic8.get_label() ,"elp")


    legende.Draw()

    l1=add_lumi(Channel, year)
    l1.Draw("same")
    l2=add_CMS()
    l2.Draw("same")
    l3=add_Preliminary()
    l3.Draw("same")

    #pad1.RedrawAxis()
    
    categ  = ROOT.TPaveText(0.5, 0.5, 0.9, 0.4, "NDC")
    categ.SetBorderSize(   0 )
    categ.SetFillStyle(    0 )
    categ.SetTextAlign(   12 )
    categ.SetTextSize ( 0.06 )
    categ.SetTextColor(    1 )
    categ.SetTextFont (   61 )
    #       if i==1 or i==3:
    #categ.AddText(cat+"  "+Channel)
    #       else :
    #        categ.AddText("SS")
    #categ.Draw()
    
    c.cd()    
    c.SaveAs("zprimebaryonic_v3.png") 



if __name__=="__main__":
    # initialize argument parser for passing commands from terminal
    parser = argparse.ArgumentParser()
    parser.add_argument("-ch",
                        help="name channel to plot : et , mt , tt") 
    parser.add_argument("-y",
                        help="year to plot : 2017, 2018")
    args =  parser.parse_args()
    ch=args.ch
    year=args.y
    if ch is None and year is None:
        print("usage : \n python draw_plots.py -ch et -y 2017")
        sys.exit()
        
    MakePlot_v2('prefit', ch, year)

    # zpbaryonic1 = zprime(1)
    # tmp_hist =  zpbaryonic1.get_hist()
    # print type(tmp_hist), tmp_hist.Integral()

    
