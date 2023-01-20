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


def make_plot(category="tot_TMass_full", isdata=True):
    filename = "DY"
    if isdata==True:
        filename = "Data"
    else:
        filename = "DY"
    inFile1 = ROOT.TFile(filename+"_new.root")
    inFile2 = ROOT.TFile(filename+"_old.root")
    
    hist_nom_1 = inFile1.Get(category+"_9")
    hist_nom_2 = inFile2.Get(category+"_9")
    print category+"_9 integral=" , hist_nom_1.Integral(), " --- without Ele27"
    print category+"_9 integral=" , hist_nom_2.Integral(), " --- with Ele27" 
    # hist_nom_1.Scale(2.44)
    # hist_nom_2.Scale(2.44)
    
    nDivXAxis= hist_nom_1.GetNbinsX()

    c.cd()
    pad1.Draw()
    pad1.cd()
    pad1.SetBottomMargin(0.01)
    
    hist_nom_1.GetXaxis().SetLabelSize(0.04)
    hist_nom_1.GetYaxis().SetLabelSize(0.04)
    hist_nom_1.SetTitle(category + " " + filename )
    hist_nom_1.SetMarkerSize(2)
    hist_nom_1.SetMarkerSize(2)

    hist_nom_1.SetMarkerStyle(8)
    hist_nom_2.SetMarkerStyle(22)

    hist_nom_1.SetMarkerColor(1)
    hist_nom_2.SetMarkerColor(4)
    
    hist_nom_1.SetLineColor(1)
    hist_nom_2.SetLineColor(4)

    hist_nom_1.SetLineWidth(3)
    hist_nom_2.SetLineWidth(5)

    hist_nom_1.SetFillColor(ROOT.TColor.GetColor(color_ztt))
    hist_nom_1.SetStats(0)
    hist_nom_1.GetXaxis().SetTitle("")
    hist_nom_1.GetYaxis().SetTitle("Events")
    hist_nom_1.GetXaxis().SetTitleSize(0)

    hist_nom_1.SetMaximum(1.2* max(hist_nom_1.GetMaximum() , hist_nom_2.GetMaximum()))
    hist_nom_1.Draw("hist")
    hist_nom_2.Draw("hist same")

    # hist_nom_1.Draw("p same")
    # hist_nom_2.Draw("p same")
    # hist_dn.Draw("p same")
    

    legende=make_legend()
    legende.AddEntry(hist_nom_1, 'without Ele 27', "elp")
    legende.AddEntry(hist_nom_2, 'with Ele 27', "elp")    

    legende.Draw()
    l1=add_lumi("2017", "etau", isBlinded=False, blindingRatio=1)
    l1.Draw("same")
    l2=add_CMS()
    l2.Draw("same")
    l3=add_Preliminary()
    l3.Draw("same")
    
    c.cd()
    pad2.Draw()
    pad2.cd()
    baseline = hist_nom_1.Clone()
    nominal = hist_nom_1.Clone()
    nominal.Divide(baseline)
    ratio_up = hist_nom_2.Clone()
    ratio_up.Divide(baseline)


    nominal.SetMarkerStyle(20)
    nominal.SetMarkerColor(1)
    nominal.SetLineColor(1)
    nominal.SetFillColor(0)
    nominal.SetMaximum(1.4)
    nominal.SetMinimum(0.6)
    nominal.SetTitleSize(0.0)
    nominal.SetTitle("")
    nominal.GetXaxis().SetTitle(category+ " [GeV]")
    nominal.GetYaxis().SetTitle("ratio")
    nominal.GetYaxis().SetNdivisions(5)
    nominal.GetXaxis().SetTitleFont(42)
    nominal.GetYaxis().SetTitleFont(42)
    nominal.GetXaxis().SetTitleSize(0.15)
    nominal.GetYaxis().SetTitleSize(0.15)
    nominal.GetYaxis().SetTitleOffset(0.3)
    nominal.GetXaxis().SetTitleOffset(1.1)
    #nominal.SetStats(0) SetBinError()
    nominal.GetYaxis().SetLabelSize(0.1)
    nominal.GetXaxis().SetLabelSize(0.1)
    
    for ibin in range(1, nDivXAxis):
        nominal.SetBinError(ibin, 0)
        ratio_up.SetBinError(ibin, 0)
        

    nominal.Draw("hist")
    nominal.Draw("hist")
    ratio_up.Draw("hist same")

    
    c.Modified()
    c.SaveAs(category+"_trigger_diff.png")
    

if __name__=="__main__":
    make_plot("tot_TMass_full", True)
    make_plot("elePt", True)
    c.Close()

