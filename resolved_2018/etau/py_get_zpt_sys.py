import ROOT
from os import path
from sys import exit
import time
from myPlotStyle import *
import argparse
from array import array

ROOT.gStyle.SetFrameLineWidth(1)
ROOT.gStyle.SetLineWidth(2)
ROOT.gStyle.SetOptStat(0)


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


def get_plot(year='', category="", withtext=False):
    inFile = ROOT.TFile("sf_files/htt_scalefactors_legacy_"+year+".root")
    w = inFile.Get("w")
    c.cd()                                                                        
    padfull.Draw()
    padfull.cd()
    padfull.SetBottomMargin(0.15)
        
    hist = w.obj("hist_zptmass_weight_nom")
    
    hist.GetYaxis().SetTitle("Z pT [GeV]")
    hist.GetXaxis().SetTitle("Z mass [GeV]")
    hist.SetTitle("Z pT reweighting weight "+year)
    hist.GetXaxis().SetNdivisions(10)
    hist.GetYaxis().SetNdivisions(10)
    #pad1.SetGridy(1)
    #pad1.SetGridx(1)
    
    
    hist.SetMarkerSize(0.7)
    if withtext:
        hist.Draw("colz text")
    else:
        hist.Draw("colz")
    c.Modified()
    if withtext:
        c.SaveAs("_zpt_weight"+category+"_"+year+"withtext.png")
    else:
        c.SaveAs("_zpt_weight"+category+"_"+year+".png")


def get_shape_plot(year="", category=""):
    inFile = ROOT.TFile("sf_files/htt_scalefactors_legacy_"+year+".root")
    c03 = ROOT.TCanvas("c03","c03", 4000, 3000)
    ROOT.gStyle.SetOptStat(0)

    w = inFile.Get("w")
    zpt = 90
    zmass = 91
    c03.cd()
    
    binning_x = array('d', [0, 10, 20, 30, 40, 50, 100, 150])
    binning_y = array('d', [0, 100, 150])
    hist = ROOT.TH2D( 'Zpt reweight', 'Z pT reweighting weight ', len(binning_x)-1, binning_x, len(binning_y)-1, binning_y )
    hist_up = ROOT.TH2D( 'Zpt reweight up', 'Z pT reweighting weight up', len(binning_x)-1, binning_x, len(binning_y)-1, binning_y )
    hist_dn = ROOT.TH2D( 'Zpt reweight down', 'Z pT reweighting weight down', len(binning_x)-1, binning_x, len(binning_y)-1, binning_y )

    for pt in binning_x:
        for mass in binning_y:
            w.var("z_gen_pt").setVal(pt)
            w.var("z_gen_mass").setVal(mass)
            weight= w.function("zptmass_weight_nom").getVal() 
            weight_up = weight + 0.10*abs(1-weight)
            weight_dn = weight - 0.10*abs(1-weight)
            hist.Fill(pt, mass, round(weight, 3))
            hist_up.Fill(pt, mass, round(weight_up, 3))
            hist_dn.Fill(pt, mass, round(weight_dn, 3))
    # print(weight)

    hist.SetTitle("Z pT reweighting weight "+year)
    hist.GetXaxis().SetTitle("Z pT [GeV]")
    hist.GetYaxis().SetTitle("Z mass [GeV]")
    hist.GetXaxis().SetNdivisions(510)
    hist.GetYaxis().SetNdivisions(510)
    hist.SetMarkerSize(0.7)
    
    hist.Draw("text colz")
    
    hist_up.SetMarkerSize(0.7)
    hist_up.SetMarkerColor(2)
    hist_up.SetBarOffset(0.05)
    hist_up.Draw("TEXT SAME")
    # write exp_p1
    hist_dn.SetMarkerSize(0.7)
    hist_dn.SetMarkerColor(2)
    hist_dn.SetBarOffset(-0.05)
    hist_dn.Draw("TEXT SAME")
    
    ROOT.gPad.SetRightMargin(0.1) 
    ROOT.gPad.SetLeftMargin(0.1)
    #ROOT.gPad.SetGridy(1)
    #ROOT.gPad.SetGridx(1)
    c03.SaveAs("dy_sys/plot_dy_weight_combined_"+year+".png")
    c03.Close()

if __name__=="__main__":

    # for y in ['2017', '2018']:
    #     get_plot(year=y, category="")
    #     get_plot(year=y, category="up")
    #     get_plot(year=y, category="down")
    get_plot(year="2018", category="" , withtext=True)
    get_plot(year="2018", category="" , withtext=False)
    get_plot(year="2017", category="" , withtext=True)
    get_plot(year="2017", category="" , withtext=False)
    c.Close()
    
    # get_shape_plot(year='2017')
    # get_shape_plot(year='2018')
