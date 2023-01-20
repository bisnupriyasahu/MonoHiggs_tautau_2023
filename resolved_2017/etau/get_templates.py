
import ROOT
from os import path
from sys import exit
import time
from myPlotStyle import *
import argparse

ROOT.gStyle.SetFrameLineWidth(1)
ROOT.gStyle.SetLineWidth(2)
ROOT.gStyle.SetOptStat(0)


def found_histogram(ZTT_hist, ZTT_hist_up, ZTT_hist_dn ):
    if not isinstance(ZTT_hist, ROOT.TH1F) :
        return False
    if not isinstance(ZTT_hist_up, ROOT.TH1F) :
        return False
    if not isinstance(ZTT_hist_dn, ROOT.TH1F):
        return False
    return True

channel = ''
year = ''
def get_plot(hist="response", hnum = '1', inFile=None):
    # filename = '~/monoHiggs_signal_sample/combinetutorial/CMSSW_10_2_13/src/CombineHarvester/CombineTools/bin/aux/2017/etau.root'
    #inFile=ROOT.TFile("DY1JetsToLL_00_test.root", "r")
    if hnum=='a1' or hnum=='a2' or hnum=='a3' or hnum=='a4' or hnum=='a5' : histname = "pfmet"
    else : histname = "met"
    ZTT_hist = None
    ZTT_hist      = inFile.Get(histname+"_nominal_"+hnum)
    ZTT_hist_up   = inFile.Get(histname+"_"+hist+"_up_"+hnum)
    ZTT_hist_dn   = inFile.Get(histname+"_"+hist+"_down_"+hnum)
    # print (ZTT_hist.Integral(), ZTT_hist_up.Integral() , ZTT_hist_dn.Integral())
    weight = 2.447677534
    ZTT_hist.Scale(weight)
    ZTT_hist_up.Scale(weight)
    ZTT_hist_dn.Scale(weight)

    bkg_name = "met_"+hist
    syst_name = hist
    year = '2017'
    channel = 'etau'
    # print ZTT_hist.Integral(), ZTT_hist_up.Integral() , ZTT_hist_dn.Integral()
    if not found_histogram(ZTT_hist, ZTT_hist_up, ZTT_hist_dn ):
        # print "*"*20 , '  check this   '
        # print "*", bkg_name
        # print "*", (bkg_name+'_'+syst_name+"_up")
        # print "*", (bkg_name+'_'+syst_name+"_down") , "\n\n"
        return
    norm_hist = ZTT_hist.Clone("nominal")
    up = ZTT_hist_up.Clone("up")
    #up.Divide(ZTT_hist)
    dn = ZTT_hist_dn.Clone("dn")
    #dn.Divide(ZTT_hist)
    nDivXAxis= ZTT_hist.GetNbinsX()
    c.cd()
    pad1.Draw()
    pad1.cd()
    ZTT_hist.SetMarkerStyle(20)
    ZTT_hist.SetMarkerColor(1)
    ZTT_hist.SetLineColor(1)
    ZTT_hist.SetFillColor(ROOT.TColor.GetColor(color_ztt))
    up.SetMarkerColor(4)
    up.SetLineColor(4)
    dn.SetMarkerColor(2)
    dn.SetLineColor(2)
    ZTT_hist.SetLineWidth(3)
    up.SetLineWidth(5)
    dn.SetLineWidth(5)
    ZTT_hist.SetStats(0)
    ZTT_hist.GetXaxis().SetTitle("")
    ZTT_hist.GetYaxis().SetTitle("Events")
    ZTT_hist.GetXaxis().SetTitleSize(0)
    ZTT_hist.GetXaxis().SetNdivisions(nDivXAxis)
    ZTT_hist.GetXaxis().SetLabelSize(0)
    ZTT_hist.GetYaxis().SetLabelFont(42)
    ZTT_hist.GetYaxis().SetLabelOffset(0.01)
    ZTT_hist.GetYaxis().SetLabelSize(0.04)
    ZTT_hist.GetYaxis().SetTitleSize(0.05)
    ZTT_hist.GetYaxis().SetTitleOffset(1.22)
    if 'MH3' in bkg_name:
        bkg_name = 'signal'
    ZTT_hist.SetTitle(bkg_name)
    #ZTT_hist.SetMaximum(1.5 * ZTT_hist.GetMaximum())
    ZTT_hist.Draw("hist")
    up.Draw("histsame")
    dn.Draw("histsame")
    #time.sleep(30)
    legende=make_legend()
    legende.AddEntry(ZTT_hist, 'nominal', "elp")
    legende.AddEntry(up, 'shape Up', "elp")    
    legende.AddEntry(dn, 'shape Down', "elp")
    legende.Draw()
    l1=add_lumi(year, channel, isBlinded=True, blindingRatio=1)
    l1.Draw("same")
    l2=add_CMS()
    l2.Draw("same")
    l3=add_Preliminary()
    l3.Draw("same")


    c.cd()
    pad2.Draw()
    pad2.cd()
    norm_hist = ZTT_hist.Clone()
    den_hist =  ZTT_hist.Clone()
    up1 = ZTT_hist_up.Clone("up")
    up1.Divide(den_hist)
    dn1 = ZTT_hist_dn.Clone("dn")
    dn1.Divide(den_hist)
    norm_hist.Divide(den_hist)
    norm_hist.SetMarkerStyle(20)
    norm_hist.SetMarkerColor(1)
    norm_hist.SetLineColor(1)
    norm_hist.SetFillColor(0)
    up1.SetMarkerColor(4)
    up1.SetLineColor(4)
    dn1.SetMarkerColor(2)
    dn1.SetLineColor(2)
    up1.SetLineWidth(5)
    dn1.SetLineWidth(5)
    norm_hist.SetMaximum(1.4)
    norm_hist.SetMinimum(0.6)
    norm_hist.SetTitle("")
    norm_hist.SetTitleSize(0.0)
    norm_hist.GetXaxis().SetTitle('MET [GeV]')
    norm_hist.GetYaxis().SetTitle("ratio")
    norm_hist.GetYaxis().SetNdivisions(5)
    norm_hist.GetXaxis().SetTitleFont(42)
    norm_hist.GetYaxis().SetTitleFont(42)
    norm_hist.GetXaxis().SetTitleSize(0.15)
    norm_hist.GetYaxis().SetTitleSize(0.15)
    norm_hist.GetYaxis().SetTitleOffset(0.3)
    norm_hist.GetXaxis().SetTitleOffset(1.1)
    norm_hist.SetStats(0)
    norm_hist.GetYaxis().SetLabelSize(0.1)
    norm_hist.GetXaxis().SetLabelSize(0.1)
    norm_hist.Draw("hist")
    up1.Draw("histsame")
    dn1.Draw("histsame")
    #if up.Integral() < dn.Integral():
        # print '------------  UP < Down ------------'
        # print 'Nominal :', ZTT_hist.Integral() , ' up ', up.Integral(), '  dn  ', dn.Integral() , '\n\n'
    c.Modified()
    c.SaveAs("sys_check/plot_"+bkg_name+'_'+hnum+"_17dec.png")


def GetKeyNames( self, dir = "" ):
    self.cd(dir)
    return [key.GetName() for key in ROOT.gDirectory.GetListOfKeys()]
ROOT.TFile.GetKeyNames = GetKeyNames

histnumlist =  ['a1', 'a2', 'a3' , 'a4', 'a5']
def get_syst_resolution():
    nominal = "DYJetsToLL_inc.root"
    inFile=ROOT.TFile(nominal, "r")
    hist_list = [ 'resolution']
    for h in hist_list:
        for hnumber in histnumlist:
            get_plot(hist=h, hnum=hnumber, inFile=inFile)
    
def get_syst_response():
    nominal = "DYJetsToLL_inc.root"
    inFile=ROOT.TFile(nominal, "r")
    hist_list = [ 'response']
    for h in hist_list:
        for hnumber in histnumlist:
            get_plot(hist=h, hnum=hnumber, inFile=inFile)
    


if __name__=="__main__":
        
    #get_syst_resolution()
    #get_syst_response()
    infile = ROOT.TFile('sf_files/TauIDSFs/data/TauID_SF_pt_DeepTau2017v2p1VSjet_2017ReReco.root')
    #fn_tauIDSF_m = infile.Get('Medium_cent')
    fn_tauIDSF_m = infile.Get('VVLoose_cent')
    c.cd()
    fn_tauIDSF_m.Draw()
    c.SaveAs("fn_tauIDSF_m.png")
    c.Close()
