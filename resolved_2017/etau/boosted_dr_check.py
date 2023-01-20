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

}
name_mapping = {
    'Zpbaryonic_1' : [ 'Zpbaryonic_1' , 'MZp_1000_MChi_100' , 0 ] ,
    'Zpbaryonic_2' : [ 'Zpbaryonic_2' , 'MZp_1000_MChi_1' , 0 ] ,
    'Zpbaryonic_3' : [ 'Zpbaryonic_3' , 'MZp_1000_MChi_200' , 0 ] ,
    'Zpbaryonic_4' : [ 'Zpbaryonic_4' , 'MZp_1000_MChi_400' , 0 ] ,
    'Zpbaryonic_5' : [ 'Zpbaryonic_5' , 'MZp_1000_MChi_600' , 0 ] ,
    'Zpbaryonic_6' : [ 'Zpbaryonic_6' , 'MZp_1000_MChi_800' , 0 ] ,
    'Zpbaryonic_7' : [ 'Zpbaryonic_7' , 'MZp_100_MChi_1' , 0 ] ,
    'Zpbaryonic_8' : [ 'Zpbaryonic_8' , 'MZp_100_MChi_50' , 0 ] ,
    'Zpbaryonic_9' : [ 'Zpbaryonic_9' , 'MZp_1500_MChi_100' , 0 ] ,
    'Zpbaryonic_10' : [ 'Zpbaryonic_10' , 'MZp_1500_MChi_1' , 0 ] ,
    'Zpbaryonic_11' : [ 'Zpbaryonic_11' , 'MZp_1500_MChi_200' , 0 ] ,
    'Zpbaryonic_12' : [ 'Zpbaryonic_12' , 'MZp_1500_MChi_400' , 0 ] ,
    'Zpbaryonic_13' : [ 'Zpbaryonic_13' , 'MZp_1500_MChi_600' , 0 ] ,
    'Zpbaryonic_14' : [ 'Zpbaryonic_14' , 'MZp_1500_MChi_800' , 0 ] ,
    'Zpbaryonic_15' : [ 'Zpbaryonic_15' , 'MZp_2000_MChi_100' , 0 ] ,
    'Zpbaryonic_16' : [ 'Zpbaryonic_16' , 'MZp_2000_MChi_1' , 0 ] ,
    'Zpbaryonic_17' : [ 'Zpbaryonic_17' , 'MZp_2000_MChi_200' , 0 ] ,
    'Zpbaryonic_18' : [ 'Zpbaryonic_18' , 'MZp_2000_MChi_400' , 0 ] ,
    'Zpbaryonic_19' : [ 'Zpbaryonic_19' , 'MZp_2000_MChi_600' , 0 ] ,
    'Zpbaryonic_20' : [ 'Zpbaryonic_20' , 'MZp_2000_MChi_800' , 0 ] ,
    'Zpbaryonic_21' : [ 'Zpbaryonic_21' , 'MZp_200_MChi_100' , 0 ] ,
    'Zpbaryonic_22' : [ 'Zpbaryonic_22' , 'MZp_200_MChi_150' , 0 ] ,
    'Zpbaryonic_23' : [ 'Zpbaryonic_23' , 'MZp_200_MChi_1' , 0 ] ,
    'Zpbaryonic_24' : [ 'Zpbaryonic_24' , 'MZp_200_MChi_50' , 0 ] ,
    'Zpbaryonic_25' : [ 'Zpbaryonic_25' , 'MZp_2500_MChi_100' , 0 ] ,
    'Zpbaryonic_26' : [ 'Zpbaryonic_26' , 'MZp_2500_MChi_1' , 0 ] ,
    'Zpbaryonic_27' : [ 'Zpbaryonic_27' , 'MZp_2500_MChi_200' , 0 ] ,
    'Zpbaryonic_28' : [ 'Zpbaryonic_28' , 'MZp_2500_MChi_400' , 0 ] ,
    'Zpbaryonic_29' : [ 'Zpbaryonic_29' , 'MZp_2500_MChi_600' , 0 ] ,
    'Zpbaryonic_30' : [ 'Zpbaryonic_30' , 'MZp_2500_MChi_800' , 0 ] ,
    'Zpbaryonic_31' : [ 'Zpbaryonic_31' , 'MZp_3000_MChi_100' , 0 ] ,
    'Zpbaryonic_32' : [ 'Zpbaryonic_32' , 'MZp_3000_MChi_1' , 0 ] ,
    'Zpbaryonic_33' : [ 'Zpbaryonic_33' , 'MZp_3000_MChi_200' , 0 ] ,
    'Zpbaryonic_34' : [ 'Zpbaryonic_34' , 'MZp_300_MChi_150' , 0 ] ,
    'Zpbaryonic_35' : [ 'Zpbaryonic_35' , 'MZp_3500_MChi_100' , 0 ] ,
    'Zpbaryonic_36' : [ 'Zpbaryonic_36' , 'MZp_3500_MChi_1' , 0 ] ,
    'Zpbaryonic_37' : [ 'Zpbaryonic_37' , 'MZp_350_MChi_50' , 0 ] ,
    'Zpbaryonic_38' : [ 'Zpbaryonic_38' , 'MZp_500_MChi_100' , 0 ] ,
    'Zpbaryonic_39' : [ 'Zpbaryonic_39' , 'MZp_500_MChi_1' , 0 ] ,
    'Zpbaryonic_40' : [ 'Zpbaryonic_40' , 'MZp_500_MChi_200' , 0 ] ,
    'Zpbaryonic_41' : [ 'Zpbaryonic_41' , 'MZp_500_MChi_400' , 0 ] ,
    'Zpbaryonic_42' : [ 'Zpbaryonic_42' , 'MZp_650_MChi_50' , 0 ] ,
    'Zpbaryonic_43' : [ 'Zpbaryonic_43' , 'MZp_800_MChi_50' , 0 ] ,
    
}


def make_plot(signal_name= "", cat=""):
    if not path.exists('signal_dr_zprime/'+signal_name+'.root'):
        print 'signal_dr_zprime/'+signal_name+'.root NOT FOUND'
        return 
    inFile = ROOT.TFile('signal_dr_zprime/'+signal_name+'.root')
    signal_name = name_mapping[signal_name][1]
    hist_nom      = inFile.Get("deltaR_signal_"+cat)
    
    nEventsHisto = inFile.Get("nEvents_ZpB")
    nGeneratedEvents = nEventsHisto.Integral()
    lumi_weight =  41520.0 * 1 / nGeneratedEvents
    
    hist_nom.Scale(lumi_weight)
    #scale_f = hist_nom.Integral()/hist_dy_inc.Integral()
    
    nDivXAxis= hist_nom.GetNbinsX()

    c.cd()
    padfull.Draw()
    padfull.cd()
    padfull.SetBottomMargin(0.1)
    
    hist_nom.GetXaxis().SetLabelSize(0.04)
    hist_nom.GetYaxis().SetLabelSize(0.04)
    hist_nom.SetTitle("e-tau deltaR "+signal_name )
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
    #hist_dn.SetLineColor(2)
    hist_nom.SetLineWidth(3)
    #hist_dy_inc.SetLineWidth(5)
    #hist_dn.SetLineWidth(5)
    hist_nom.SetFillColor(ROOT.TColor.GetColor(color_ztt))
    #hist_nom.SetNdivisions(5)
    hist_nom.SetStats(0)
    hist_nom.GetXaxis().SetTitle("tau-tau delta R")
    hist_nom.GetYaxis().SetTitle("Events")
    #hist_nom.GetXaxis().SetTitleSize(0)
    #hist_nom.GetXaxis().SetRangeUser(0.7 , 1.0)
    hist_nom.SetMaximum(1.2*hist_nom.GetMaximum())
    hist_nom.Draw("hist")
    #hist_dy_inc.Draw("hist same")
    #hist_dn.Draw("hist same")
    # hist_nom.Draw("p same")
    # hist_up.Draw("p same")
    # hist_dn.Draw("p same")
    

    legende=make_legend()
    legende.AddEntry(hist_nom, signal_name, "f")
    #legende.AddEntry(hist_dy_inc, 'Z->#tau#tau', "f")    
    #legende.AddEntry(hist_dn, 'weight Down', "elp")
    legende.Draw()
    l1=add_lumi("2017", "etau", isBlinded=False, blindingRatio=1)
    l1.Draw("same")
    l2=add_CMS()
    l2.Draw("same")
    l3=add_Preliminary()
    l3.Draw("same")
    
    c.cd()
        
    c.Modified()
    c.SaveAs("signal_dr_zprime/signal_dr_"+signal_name+"_"+cat+".png")
    

if __name__=="__main__":

    
    for name in range(1, 44):
        for cat in ['0', '4', '5', '6']:
            make_plot('Zpbaryonic_'+str(name), cat)
    c.Close()

