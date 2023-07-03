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


def make_plot(category="final"):
    inFile = ROOT.TFile("DYJetsToLL_00_test.root")
    hist_nom      = inFile.Get("prefiringweight_"+category)
    hist_up      = inFile.Get("prefiringweight_"+category+"_up")
    hist_dn      = inFile.Get("prefiringweight_"+category+"_dn")
    
    hist_nom.Scale(2.44)
    hist_up.Scale(2.44)
    hist_dn.Scale(2.44)

    hist_nom.Rebin(2)
    hist_up.Rebin(2)
    hist_dn.Rebin(2)
    nDivXAxis= hist_nom.GetNbinsX()

    c.cd()
    pad1.Draw()
    pad1.cd()
    pad1.SetBottomMargin(0.01)
    
    hist_nom.GetXaxis().SetLabelSize(0.04)
    hist_nom.GetYaxis().SetLabelSize(0.04)
    hist_nom.SetTitle("prefiring weights " )
    hist_nom.SetMarkerSize(2)
    hist_up.SetMarkerSize(2)
    hist_dn.SetMarkerSize(2)
    hist_nom.SetMarkerStyle(8)
    hist_up.SetMarkerStyle(22)
    hist_dn.SetMarkerStyle(23)
    hist_nom.SetMarkerColor(1)
    hist_up.SetMarkerColor(4)
    hist_dn.SetMarkerColor(2)
    
    hist_nom.SetLineColor(1)
    hist_up.SetLineColor(4)
    hist_dn.SetLineColor(2)
    hist_nom.SetLineWidth(3)
    hist_up.SetLineWidth(5)
    hist_dn.SetLineWidth(5)
    hist_nom.SetFillColor(ROOT.TColor.GetColor(color_ztt))
    hist_nom.SetStats(0)
    hist_nom.GetXaxis().SetTitle("")
    hist_nom.GetYaxis().SetTitle("Events")
    hist_nom.GetXaxis().SetTitleSize(0)
    hist_nom.GetXaxis().SetRangeUser(0.7 , 1.0)
    hist_nom.SetMaximum(1.2*hist_nom.GetMaximum())
    hist_nom.Draw("hist")
    hist_up.Draw("hist same")
    hist_dn.Draw("hist same")
    # hist_nom.Draw("p same")
    # hist_up.Draw("p same")
    # hist_dn.Draw("p same")
    

    legende=make_legend()
    legende.AddEntry(hist_nom, 'weight nominal', "elp")
    legende.AddEntry(hist_up, 'weight Up', "elp")    
    legende.AddEntry(hist_dn, 'weight Down', "elp")
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
    baseline = hist_nom.Clone()
    nominal = hist_nom.Clone()
    nominal.Divide(baseline)
    ratio_up = hist_up.Clone()
    ratio_up.Divide(baseline)
    ratio_dn = hist_dn.Clone()
    ratio_dn.Divide(baseline)
    nominal.SetMarkerStyle(20)
    nominal.SetMarkerColor(1)
    nominal.SetLineColor(1)
    nominal.SetFillColor(0)
    nominal.SetMaximum(1.6)
    nominal.SetMinimum(0.4)
    nominal.SetTitleSize(0.0)
    nominal.SetTitle("")
    nominal.GetXaxis().SetTitle("prefiring weight")
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
        ratio_dn.SetBinError(ibin, 0)

    nominal.Draw("hist")
    nominal.Draw("same e1")
    ratio_up.Draw("same e1")
    ratio_dn.Draw("same e1")
    
    c.Modified()
    c.SaveAs("prefiring_withandwithout"+category+".png")
    

if __name__=="__main__":
    make_plot("final")
    make_plot("incoming")
    c.Close()

