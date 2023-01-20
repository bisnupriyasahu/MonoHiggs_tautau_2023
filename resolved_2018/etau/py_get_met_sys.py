import ROOT
from os import path
from sys import exit
import time
from myPlotStyle import *
import argparse

ROOT.gStyle.SetFrameLineWidth(1)
ROOT.gStyle.SetLineWidth(2)
ROOT.gStyle.SetOptStat(0)



# fw = ROOT.TFile("sf_files/HTT-utilities/RecoilCorrections/data/PFMEtSys_2018.root")
# KEY: TH1D     typeBkgdH;1
# KEY: TH2D     V_syst;2
# KEY: TH2D     V_syst;1
# KEY: TH2D     EWK_syst;1
# KEY: TH2D     TOP_syst;1
# KEY: TH1D     jetBinsH;1      JetBinsH
# KEY: TH1D     V_NJet0;1
# KEY: TH1D     V_NJet1;1
# KEY: TH1D     V_NJetGe2;1
# KEY: TH1D     EWK_NJet0;1
# KEY: TH1D     EWK_NJet1;1
# KEY: TH1D     EWK_NJetGe2;1
# KEY: TH1D     TOP_NJet0;1
# KEY: TH1D     TOP_NJet1;1
# KEY: TH1D     TOP_NJetGe2;1
def add_met_sys_type():
    lowX = 0.1
    lowY = 0.8
    met_sys  = ROOT.TPaveText(lowX, lowY, lowX+0.6, lowY+0.2, "NDC")
    met_sys.SetBorderSize(   0 )
    met_sys.SetFillStyle(    0 )
    met_sys.SetTextAlign(   32 )#12
    met_sys.SetTextColor(    1 )
    met_sys.SetTextSize(0.04)
    met_sys.SetTextFont (   42 )
    met_sys.AddText("Response                      Resolution")
    return met_sys


def get_plot(year='', name=''):
    inFile = ROOT.TFile("sf_files/HTT-utilities/RecoilCorrections/data/PFMEtSys_"+year+".root")
    hist      = inFile.Get(name)
    c.cd()
    pad1.Draw()
    pad1.cd()
    pad1.SetBottomMargin(0.15)
    if name=='V_syst':
        x, y = hist.GetNbinsX() ,  hist.GetNbinsY()
        print x, y
        t1 = add_met_sys_type()
        hist.GetXaxis().SetLabelSize(0.04)
        hist.GetYaxis().SetLabelSize(0.04)
        hist.GetXaxis().SetBinLabel(1,"Response")
        hist.GetXaxis().SetBinLabel(2,"Resolution")
        hist.GetYaxis().SetBinLabel(1,"0")
        hist.GetYaxis().SetBinLabel(2,"1")
        hist.GetYaxis().SetBinLabel(3,"2")
        hist.SetTitle("Met systematics "+year)
        hist.GetXaxis().SetTitle("MET systematic type")
        hist.GetYaxis().SetTitle("number of jets")
        hist.SetMarkerSize(2)
        hist.Draw("text colz")
        t1.Draw("same")
    else:
        hist.Draw()
    c.Modified()
    c.SaveAs("met_sys/plot_"+name+"_"+year+".png")


if __name__=="__main__":
    
    for h in ['typeBkgdH', 'V_syst', 'jetBinsH']:
        for y in ['2017', '2018']:
            get_plot(y, h)
    c.Close()


