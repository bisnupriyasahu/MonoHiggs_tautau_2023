import ROOT
from os import path
from sys import exit
import time
from myPlotStyle import *
import argparse

ROOT.gStyle.SetFrameLineWidth(1)
ROOT.gStyle.SetLineWidth(2)
ROOT.gStyle.SetOptStat(0)



def get_plot(histogram="", title=""):
    # declare file path + name
    file_name = '/hdfs/store/user/jmadhusu/2017_skimmed/etau/DYJetsToLL_M-50_TuneCP5_v1_00.root'
    
    # read file to varable
    input_file = ROOT.TFile(file_name)
    
    # declare canvas and open it to draw plot. the canvas called c was declared in myPlotStyle.py
    c.cd()
    # read tree from file
    ttree = input_file.Get("eventTree")
    # create a histogram
    my_histogram = ROOT.TH1F("histogram_name", "histogram_name", 30, 0, 150)

    ttree.Draw(histogram+">>histogram_name")
    #my_histogram = gDirectory.Get("histogram_name")
    
    my_histogram.SetFillColor(ROOT.TColor.GetColor(color_ztt)) # I follow hex coloring system, the value for color_ztt was declared in myPlotStyle.py
    my_histogram.SetTitle(title)
    my_histogram.GetYaxis().SetTitle('Events')
    my_histogram.GetXaxis().SetTitle(title + ' [GeV]')
    my_histogram.Draw()
    c.Modified()
    c.SaveAs(histogram + "_test.png")

if __name__=="__main__":
    
    get_plot("elePt", "Electron pT")
    get_plot("tau_Pt", "Tau pT")
    c.Close()
