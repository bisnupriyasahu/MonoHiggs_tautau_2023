
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
def get_plot(indexing='5', inFile=None, shape='response'):
    # pfmet_nominal3   pfmet_response_down3
    ZTT_hist      = inFile.Get('pfmet_nominal'+indexing)
    ZTT_hist_up   = inFile.Get("pfmet_"+shape+"_up"+indexing)
    ZTT_hist_dn   = inFile.Get("pfmet_"+shape+"_down"+indexing)
    
    bkg_name = "pfmet_"+shape+"_"+indexing
    syst_name = shape
    year = '2018'
    channel = 'etau'
    if not found_histogram(ZTT_hist, ZTT_hist_up, ZTT_hist_dn ):
        print "*"*20 , '  check this   '
        print "*", bkg_name
        print "*", (bkg_name+'_'+syst_name+"_up")
        print "*", (bkg_name+'_'+syst_name+"_down") , "\n\n"
        return
    norm_hist = ZTT_hist
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
    ZTT_hist.SetTitle(bkg_name+ " " + syst_name)
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
    l1=add_lumi(year, channel, isBlinded=True, blindingRatio=5)
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
    norm_hist.GetXaxis().SetTitle(bkg_name+' [GeV]')
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
    if up.Integral() < dn.Integral():
        print '------------  UP < Down ------------'
        print 'Nominal :', ZTT_hist.Integral() , ' up ', up.Integral(), '  dn  ', dn.Integral() , '\n\n'
    c.Modified()
    c.SaveAs("sys_check/plot_"+bkg_name+'_'+syst_name+".png")


def GetKeyNames( self, dir = "" ):
    self.cd(dir)
    return [key.GetName() for key in ROOT.gDirectory.GetListOfKeys()]
ROOT.TFile.GetKeyNames = GetKeyNames


def get_syst():
    nominal = "DY1JetsToLL_00_test.root"
    if path.isfile(nominal):
        nominal = "DY1JetsToLL_00_test.root"
    elif path.isfile("DY1JetsToLL_00.root"):
        nominal = "DY1JetsToLL_00.root"

    inFile=ROOT.TFile(nominal, "r")
    sys_names = ['response', 'resolution']
    for shape in sys_names:
        for i in range( 6):
            get_plot(indexing=str(i), inFile=inFile, shape=shape)
        get_plot(indexing=str(9), inFile=inFile, shape=shape)


if __name__=="__main__":
        
    get_syst()
    c.Close()
