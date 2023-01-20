import ROOT
from os import path
from sys import exit
import time
from myPlotStyle import *
import argparse

ROOT.gStyle.SetFrameLineWidth(1)
ROOT.gStyle.SetLineWidth(2)
ROOT.gStyle.SetOptStat(0)


saved_string = """
 xi = 1 yi = 1 average = 0.980374 |
 xi = 1 yi = 2 average = 0.946351 |
 xi = 1 yi = 3 average = 0.928515 |
 xi = 1 yi = 4 average = 0.928747 |
 xi = 1 yi = 5 average = 0.931781 |
 xi = 1 yi = 6 average = 0.859298 |
 xi = 2 yi = 1 average = 0.984801 |
 xi = 2 yi = 2 average = 0.981567 |
 xi = 2 yi = 3 average = 0.975549 |
 xi = 2 yi = 4 average = 0.962533 |
 xi = 2 yi = 5 average = 0.962435 |
 xi = 2 yi = 6 average = 0.946493 |
 xi = 3 yi = 1 average = 0.981549 |
 xi = 3 yi = 2 average = 0.977412 |
 xi = 3 yi = 3 average = 0.978178 |
 xi = 3 yi = 4 average = 0.975730 |
 xi = 3 yi = 5 average = 0.972915 |
 xi = 3 yi = 6 average = 0.937319 |
"""
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


def get_plot():
    c.cd()
    hist = ROOT.TH2D("hist", "hist", 3, 0,3, 6, 0, 6)
    lines = saved_string.split('|')
    for line in lines:
        line = line.split()
        if len(line)==0: continue
        print(line)
        xi = int(line[2])-1
        yi = int(line[5])-1
        weight = float(line[-1])
        hist.Fill(xi, yi, round(weight,3))
        
        
    c.GetPad(0).SetRightMargin(0.15)
    c.GetPad(0).SetLeftMargin(0.15)
    hist.GetXaxis().SetBinLabel(1,"0 jet")
    hist.GetXaxis().SetBinLabel(2,"1 jet")
    hist.GetXaxis().SetBinLabel(3,">= 2 jet")
    hist.GetYaxis().SetBinLabel(1,"<10")
    hist.GetYaxis().SetBinLabel(2,"10-20")
    hist.GetYaxis().SetBinLabel(3,"20-30")
    hist.GetYaxis().SetBinLabel(4,"30-40")
    hist.GetYaxis().SetBinLabel(5,"40-50")
    hist.GetYaxis().SetBinLabel(6,">=50")
    hist.SetTitle("Met corrections 2018")
    hist.GetXaxis().SetTitle("number of jets")
    hist.GetYaxis().SetTitle("Z boson pT [GeV]")
    

    hist.Draw("text colz")
    c.Modified()
    c.SaveAs("met_recoil_corrections_2018.png")

if __name__=="__main__":
    
    get_plot()
    c.Close()


