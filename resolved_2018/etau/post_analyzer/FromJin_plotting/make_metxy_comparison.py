import ROOT
# from sys import path
# from sys import exit
# # import time
from myPlotStyle import *
import argparse
from os import path, makedirs

ROOT.gStyle.SetFrameLineWidth(1)
ROOT.gStyle.SetLineWidth(2)
ROOT.gStyle.SetOptStat(0)
ROOT.gROOT.SetBatch(True)



def make_plot(signal_name= ""):
    # if not path.exists(signal_name):
    #     return 
    inFile = ROOT.TFile('f_'+signal_name+'_initial.root')
    tdir = "tot_TMass_full_9c/"
    hist_nom      = inFile.Get(tdir+"/data_obs_"+tdir)
    nEventsHisto = inFile.Get("nEvents")
    
    nDivXAxis= hist_nom.GetNbinsX()
    
    c.cd()
    padfull.Draw()
    padfull.cd()
    padfull.SetBottomMargin(0.1)
    
    hist_nom.GetXaxis().SetLabelSize(0.04)
    hist_nom.GetYaxis().SetLabelSize(0.04)
    hist_nom.SetTitle("tau-tau deltaR "+signal_name )
    hist_nom.SetMarkerSize(2)
    #hist_up.SetMarkerSize(2)
    #hist_dn.SetMarkerSize(2)
    hist_nom.SetMarkerStyle(8)
    #hist_up.SetMarkerStyle(22)
    #hist_dn.SetMarkerStyle(23)
    hist_nom.SetMarkerColor(1)
    #hist_up.SetMarkerColor(4)
    #hist_dn.SetMarkerColor(2)
    
    hist_nom.SetLineColor(1)
    #hist_up.SetLineColor(4)
    #hist_dn.SetLineColor(2)
    hist_nom.SetLineWidth(3)
    #hist_up.SetLineWidth(5)
    #hist_dn.SetLineWidth(5)
    hist_nom.SetFillColor(ROOT.TColor.GetColor(color_ztt))
    #hist_nom.SetNdivisions(5)
    hist_nom.SetStats(0)
    hist_nom.GetXaxis().SetTitle(signal_name)
    hist_nom.GetYaxis().SetTitle("Events")
    #hist_nom.GetXaxis().SetTitleSize(0)
    #hist_nom.GetXaxis().SetRangeUser(0.7 , 1.0)
    hist_nom.SetMaximum(1.2*hist_nom.GetMaximum())
    hist_nom.Draw("hist")
    #hist_up.Draw("hist same")
    #hist_dn.Draw("hist same")
    # hist_nom.Draw("p same")
    # hist_up.Draw("p same")
    # hist_dn.Draw("p same")
    

    legende=make_legend()
    legende.AddEntry(hist_nom, 'weight nominal', "elp")
    #legende.AddEntry(hist_up, 'weight Up', "elp")    
    #legende.AddEntry(hist_dn, 'weight Down', "elp")
    #legende.Draw()
    l1=add_lumi("2018", "etau", isBlinded=False, blindingRatio=1)
    l1.Draw("same")
    l2=add_CMS()
    l2.Draw("same")
    l3=add_Preliminary()
    l3.Draw("same")
    
    c.cd()
        
    c.Modified()
    c.SaveAs("metxy_plots/"+signal_name+".png")
    

if __name__=="__main__":

    make_plot("tot_TMass_full")
    c.Close()

