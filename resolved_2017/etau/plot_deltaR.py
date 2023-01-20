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

xsex_mapping = {
    
    'ZTTjet_inc' : 2.447677534 , 
    'ZTT1jet' : 0.785055866 , 
    'ZTT2jet' : 0.968954563 , 
    'ZTT3jet' : 0.552080344 , 
    'ZTT4jet' : 0.48914453 , 

    'MH3_200_MH4_100' : 3.628e-01 , 
    'MH3_200_MH4_150' : 3.209e-01 , 
    'MH3_300_MH4_100' : 2.892e+00 , 
    'MH3_300_MH4_150' : 1.596e+00 , 
    'MH3_400_MH4_100' : 1.352e+00 , 
    'MH3_400_MH4_150' : 9.943e-01 , 
    'MH3_400_MH4_200' : 5.997e-01 , 
    'MH3_400_MH4_250' : 2.301e-01 , 
    'MH3_500_MH4_150' : 5.070e-01 , 
    'MH3_500_MH4_200' : 3.709e-01 , 
    'MH3_500_MH4_250' : 2.375e-01 , 
    'MH3_500_MH4_300' : 1.295e-01 , 
    'MH3_600_MH4_100' : 3.778e-01 , 
    'MH3_600_MH4_150' : 2.981e-01 , 
    'MH3_600_MH4_200' : 2.313e-01 , 
    'MH3_600_MH4_250' : 1.657e-01 , 
    'MH3_600_MH4_300' : 1.160e-01 , 
    'MH3_600_MH4_350' : 7.739e-02 , 
    'MH3_600_MH4_400' : 4.035e-02 , 
    'MH3_600_MH4_500' : 5.494e-03 , 
    'MH3_700_MH4_250' : 1.084e-01 , 
    'MH3_700_MH4_300' : 8.360e-02 , 
    'MH3_700_MH4_350' : 6.513e-02 , 
    'MH3_700_MH4_400' : 4.227e-02 , 
    'MH3_800_MH4_250' : 7.091e-02 , 
    'MH3_800_MH4_300' : 5.730e-02 , 
    'MH3_800_MH4_350' : 4.830e-02 , 
    'MH3_800_MH4_500' : 1.604e-02 , 
    'MH3_900_MH4_300' : 3.757e-02 , 
    'MH3_900_MH4_350' : 3.359e-02 , 
    'MH3_900_MH4_400' : 2.559e-02 , 
    'MH3_900_MH4_500' : 1.432e-02 
}


def make_plot(signal_name= ""):
    if not path.exists('bkg/'+signal_name):
        return 
    inFile = ROOT.TFile('bkg/'+signal_name)
    signal_name = signal_name.replace(".root", "")
    hist_nom      = inFile.Get("deltaR_signal_0")
    

    nEventsHisto = inFile.Get("nEvents")
    nGeneratedEvents = nEventsHisto.GetBinContent(1)
    lumi_weight =  41520.0 * xsex_mapping[signal_name] / nGeneratedEvents
    #hist_nom.Scale(lumi_weight)

    dy_inc_file = ROOT.TFile('bkg/ZTTjet_inc.root')
    dy_1j_file = ROOT.TFile('bkg/ZTT1jet.root')
    dy_2j_file = ROOT.TFile('bkg/ZTT2jet.root')
    dy_3j_file = ROOT.TFile('bkg/ZTT3jet.root')
    dy_4j_file = ROOT.TFile('bkg/ZTT4jet.root')
    hist_dy_inc =  dy_inc_file.Get("deltaR_signal_0")
    hist_dy_1j =  dy_1j_file.Get("deltaR_signal_0")
    hist_dy_2j =  dy_2j_file.Get("deltaR_signal_0")
    hist_dy_3j =  dy_3j_file.Get("deltaR_signal_0")
    hist_dy_4j =  dy_4j_file.Get("deltaR_signal_0")

    hist_dy_inc.Scale(xsex_mapping['ZTTjet_inc'] )
    hist_dy_1j.Scale(xsex_mapping['ZTT1jet'] )
    hist_dy_2j.Scale(xsex_mapping['ZTT2jet'] )
    hist_dy_3j.Scale(xsex_mapping['ZTT3jet'] )
    hist_dy_4j.Scale(xsex_mapping['ZTT4jet'] )

    hist_dy_inc.Add(hist_dy_1j)
    hist_dy_inc.Add(hist_dy_2j)
    hist_dy_inc.Add(hist_dy_3j)
    hist_dy_inc.Add(hist_dy_4j)
    
    hist_nom.Scale(lumi_weight)
    #scale_f = hist_nom.Integral()/hist_dy_inc.Integral()
    print(hist_nom.Integral() , hist_dy_inc.Integral())
    hist_nom.Scale(1/hist_nom.Integral())
    hist_dy_inc.Scale(1/hist_dy_inc.Integral())

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
    hist_dy_inc.SetLineColor(4)
    #hist_dn.SetLineColor(2)
    hist_nom.SetLineWidth(3)
    hist_dy_inc.SetLineWidth(5)
    #hist_dn.SetLineWidth(5)
    hist_nom.SetFillColor(ROOT.TColor.GetColor(color_ztt))
    #hist_nom.SetNdivisions(5)
    hist_nom.SetStats(0)
    hist_nom.GetXaxis().SetTitle("tau-tau delta R")
    hist_nom.GetYaxis().SetTitle("Events")
    #hist_nom.GetXaxis().SetTitleSize(0)
    #hist_nom.GetXaxis().SetRangeUser(0.7 , 1.0)
    hist_nom.SetMaximum(1.2*max(hist_nom.GetMaximum(), hist_dy_inc.GetMaximum() ))
    hist_nom.Draw("hist")
    #hist_dy_inc.Draw("hist same")
    #hist_dn.Draw("hist same")
    # hist_nom.Draw("p same")
    # hist_up.Draw("p same")
    # hist_dn.Draw("p same")
    

    legende=make_legend()
    legende.AddEntry(hist_nom, 'signal', "f")
    #legende.AddEntry(hist_dy_inc, 'Z->#tau#tau', "f")    
    #legende.AddEntry(hist_dn, 'weight Down', "elp")
    legende.Draw()
    l1=add_lumi("2017", "tautau inc", isBlinded=False, blindingRatio=1)
    l1.Draw("same")
    l2=add_CMS()
    l2.Draw("same")
    l3=add_Preliminary()
    l3.Draw("same")
    
    c.cd()
        
    c.Modified()
    c.SaveAs("signal_dr/signal_dr_"+signal_name+".png")
    

if __name__=="__main__":
    signal_names = ["MH3_200_MH4_100.root",  "MH3_400_MH4_100.root",  "MH3_500_MH4_150.root",  "MH3_600_MH4_100.root",  "MH3_600_MH4_300.root",  "MH3_700_MH4_250.root",  "MH3_800_MH4_250.root",  "MH3_900_MH4_300.root",
                    "MH3_200_MH4_150.root",  "MH3_400_MH4_150.root",  "MH3_500_MH4_200.root",  "MH3_600_MH4_150.root",  "MH3_600_MH4_350.root",  "MH3_700_MH4_300.root",  "MH3_800_MH4_300.root",  "MH3_900_MH4_350.root",
                    "MH3_300_MH4_100.root",  "MH3_400_MH4_200.root",  "MH3_500_MH4_250.root",  "MH3_600_MH4_200.root",  "MH3_600_MH4_400.root",  "MH3_700_MH4_350.root",  "MH3_800_MH4_350.root",  "MH3_900_MH4_400.root",
                    "MH3_300_MH4_150.root",  "MH3_400_MH4_250.root",  "MH3_500_MH4_300.root",  "MH3_600_MH4_250.root",  "MH3_600_MH4_500.root",  "MH3_700_MH4_400.root",  "MH3_800_MH4_500.root",  "MH3_900_MH4_500.root"]
    for name in signal_names:
        make_plot(name)
    c.Close()

