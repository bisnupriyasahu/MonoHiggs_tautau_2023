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

label_map = {
    
    "tot_TMass_full" : "total tr mass"  , 
    "elePt" : "electron pT [GeV]", 
    "eleEta" : "electron Eta", 
    "elePhi" : "electron phi", 
    "tauPt"  : "tau pT [GeV]", 
    "tauEta" : "tau eta", 
    "tauPhi" : "tau Phi", 
    "met"    : "MET [Gev]", 
    "metPhi" : "met phi", 
    "tot_TMass" : "total tr mass [GeV]",
    "higgsPt" : "Higgs pT [GeV]",
    "metLongXaxis" : "MET [GeV]"
 }

def make_plot(signal_name= "", bkg=""):
    # if not path.exists(signal_name):
    #     return 
    inFile2 = ROOT.TFile('/nfs_scratch/jmadhusu/CMSSW_10_2_10/src/blinded_2018/etau/analyzer_metxy/post_analyzer/plotting_script/f_'+signal_name+'_initial.root')
    inFile1 = ROOT.TFile('/nfs_scratch/jmadhusu/CMSSW_10_2_10/src/blinded_2018/etau/analyzer/post_analyzer/plotting_script/f_'+signal_name+'_initial.root')
    tdir = signal_name+"_9c"
    hist_nom2      = inFile2.Get(tdir+"/"+bkg+"_"+tdir)
    hist_nom1      = inFile1.Get(tdir+"/"+bkg+"_"+tdir)
    
    nDivXAxis= hist_nom1.GetNbinsX()
    
    c.cd()
    pad1.Draw()
    pad1.cd()
    # padfull.Draw()
    # padfull.cd()
    # padfull.SetBottomMargin(0.1)
    
    hist_nom2.GetXaxis().SetLabelSize(0.04)
    hist_nom2.GetYaxis().SetLabelSize(0.04)
    hist_nom2.SetTitle( signal_name+ "  "+bkg )
    hist_nom2.SetMarkerSize(2)
    hist_nom1.SetMarkerSize(2)
    #hist_up.SetMarkerSize(2)
    #hist_dn.SetMarkerSize(2)
    hist_nom2.SetMarkerStyle(8)
    #hist_up.SetMarkerStyle(22)
    #hist_dn.SetMarkerStyle(23)
    hist_nom2.SetMarkerColor(1)
    hist_nom1.SetMarkerColor(4)
    #hist_up.SetMarkerColor(4)
    #hist_dn.SetMarkerColor(2)
    
    hist_nom2.SetLineColor(1)
    hist_nom1.SetLineColor(4)
    hist_nom1.SetFillColor(ROOT.TColor.GetColor(color_ztt))
    #hist_up.SetLineColor(4)
    #hist_dn.SetLineColor(2)
    hist_nom2.SetLineWidth(3)
    hist_nom1.SetLineWidth(3)
    #hist_up.SetLineWidth(5)
    #hist_dn.SetLineWidth(5)
    #hist_nom2.SetFillColor(ROOT.TColor.GetColor(color_ztt))
    #hist_nom2.SetNdivisions(5)
    hist_nom2.SetStats(0)
    hist_nom2.GetXaxis().SetTitle(label_map[signal_name])
    hist_nom2.GetYaxis().SetTitle("Events")
    #hist_nom2.GetXaxis().SetTitleSize(0)
    #hist_nom2.GetXaxis().SetRangeUser(0.7 , 1.0)
    hist_nom2.SetMaximum(1.2*max(hist_nom2.GetMaximum(), hist_nom1.GetMaximum()))
    hist_nom2.Draw("hist")
    hist_nom1.Draw("histsame")
    hist_nom2.Draw("histsame")
    #hist_up.Draw("hist same")
    #hist_dn.Draw("hist same")
    # hist_nom2.Draw("p same")
    # hist_up.Draw("p same")
    # hist_dn.Draw("p same")
    

    legende=make_legend()
    legende.AddEntry(hist_nom2, 'with Met xy', "elp")
    legende.AddEntry(hist_nom1, 'without Met xy', "f")
    #legende.AddEntry(hist_up, 'weight Up', "elp")    
    #legende.AddEntry(hist_dn, 'weight Down', "elp")
    legende.Draw()
    l1=add_lumi("2018", "etau", isBlinded=False, blindingRatio=1)
    l1.Draw("same")
    l2=add_CMS()
    l2.Draw("same")
    l3=add_Preliminary()
    l3.Draw("same")
    l4 = add_text("data only 1/5th shown", lowX=0.45, lowY=0.70)
    if bkg=="data_obs":
        l4.Draw("same")
    
    c.cd()
    pad2.Draw()
    pad2.cd()
    h_den = hist_nom1.Clone()
    hnum_1 = hist_nom1.Clone()
    hnum_2 = hist_nom2.Clone()
    h_den.SetMarkerStyle(20)
    h_den.SetMarkerSize(2.0)
    h_den.SetStats(0)
    hnum_1.Divide(h_den)
    hnum_2.Divide(h_den)
    h_den.SetStats(0)
    hnum_1.SetStats(0)
    hnum_2.SetStats(0)
    h_den.GetXaxis().SetTitle(label_map[signal_name])
    h_den.SetMarkerColor(1)
    h_den.SetLineColor(1)
    hnum_2.SetLineColor(1)
    hnum_1.SetLineColor(4)


    h_den.SetTitle("")
    h_den.GetXaxis().SetLabelSize(0.1)
    h_den.GetYaxis().SetTitle("with/without \n ratio")
    h_den.GetYaxis().SetLabelSize(0.08)
    h_den.SetMaximum(1.5)
    h_den.SetMinimum(0.5)
    h_den.GetXaxis().SetNdivisions(nDivXAxis)
    
    h_den.GetYaxis().SetNdivisions(5)
    h_den.GetXaxis().SetTitleFont(42)
    h_den.GetYaxis().SetTitleFont(42)
    h_den.GetXaxis().SetTitleSize(0.15)
    h_den.GetYaxis().SetTitleSize(0.15)
    h_den.GetYaxis().SetTitleOffset(0.3)
    h_den.GetXaxis().SetTitleOffset(1.1)
    h_den.SetFillColor(0)
    hnum_1.SetFillColor(0)
    hnum_2.SetFillColor(0)
    # hnum_1.SetMarkerSize(2)
    # hnum_2.SetMarkerSize(3)
    h_den.Draw("hist L")
    hnum_1.Draw("hist same")
    hnum_2.Draw("hist same")
    
    c.cd()
        
    c.Modified()
    c.SaveAs("metxy_plots/"+bkg+"_"+signal_name+".png")
    

if __name__=="__main__":
    
    for v in ["tot_TMass_full", "elePt", "eleEta", "elePhi", "tauPt", "tauEta", "tauPhi", "met", "metPhi", "tot_TMass", "higgsPt", "metLongXaxis"]:
        for b in ['ZTTjet', 'data_obs']:
            make_plot(v, b)
    c.Close()

