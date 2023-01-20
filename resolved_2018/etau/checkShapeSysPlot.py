
import ROOT
import time
from myPlotStyle import *
from sys_list_v2 import shape_list
from os import path

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


def add_marker(text=''):
    lowX=0.55 #0.21
    lowY=0.55
    lumi  = ROOT.TPaveText(lowX, lowY+0.06, lowX+0.15, lowY+0.16, "NDC")
    lumi.SetTextFont(61)
    lumi.SetTextSize(0.07)
    lumi.SetBorderSize(   0 )
    lumi.SetFillStyle(    0 )
    lumi.SetTextAlign(   31 )#12
    lumi.SetTextColor(    1 )
    lumi.AddText(text)
    return lumi


def AddDiffNuisances(up_list, dn_list, nominal):
    nbins = nominal.GetNbinsX()
    up = nominal.Clone()
    dn = nominal.Clone()
    up.Reset("ICES")
    dn.Reset("ICES")
    for i in range(1,nbins+1):
        if nominal.GetBinContent(i) == 0:
            up.SetBinContent(i, 1)
            dn.SetBinContent(i, 1) 
            continue
        up.SetBinContent(i , 1 + ROOT.TMath.Sqrt( sum( unc.GetBinContent(i) **2 for unc in up_list) ) )
        #print 'up bin', i, 'content', up.GetBinContent(i)
        dn.SetBinContent(i , 1 - ROOT.TMath.Sqrt( sum( unc.GetBinContent(i) **2 for unc in dn_list) ) )
        #print 'dn bin', i, 'content', dn.GetBinContent(i)
    return up, dn

def get_syst(xaxis_label="" , sys_name = None):
    nominal = "DY1JetsToLL_00_test.root"
    if path.isfile(nominal):
        nominal = "DY1JetsToLL_00_test.root"
    elif path.isfile("DY1JetsToLL_00.root"):
        nominal = "DY1JetsToLL_00.root"
    
    inFile_n=ROOT.TFile(nominal,"r")
    ZTT_hist      = inFile_n.Get(xaxis_label)
    ZTT_hist_up   = inFile_n.Get(xaxis_label+'_'+sys_name+"_up")
    ZTT_hist_dn   = inFile_n.Get(xaxis_label+'_'+sys_name+"_down")
    
    if not found_histogram(ZTT_hist, ZTT_hist_up, ZTT_hist_dn ):
        print "*"*20 , '  check this   '
        print "*", xaxis_label
        print "*", (xaxis_label+'_'+sys_name+"_up")
        print "*", (xaxis_label+'_'+sys_name+"_down") , "\n\n"
        return
    norm_hist = ZTT_hist
    up = ZTT_hist_up.Clone("up")
    #up.Divide(ZTT_hist)
    dn = ZTT_hist_dn.Clone("dn")
    #nDivXAxis= ZTT_hist.GetNbinsX()
    nDivXAxis = 10
    #dn.Divide(ZTT_hist)
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
    ZTT_hist.SetTitle(xaxis_label+'   '+sys_name)
    ZTT_hist.Draw("hist")
    up.Draw("histsame")
    dn.Draw("histsame")
    #time.sleep(30)
    legende=make_legend()
    legende.AddEntry(ZTT_hist, 'nominal', "elp")
    legende.AddEntry(up, 'shape Up', "elp")    
    legende.AddEntry(dn, 'shape Down', "elp")
    legende.Draw()
    # if 'JES' in sys_name:
    #     print "JES changes"
    #     la=add_marker("JES changes")
    #     la.Draw("same")
    # if up.Integral() < dn.Integral():
    #     print '------------  UP < Down ------------'
    #     print 'Nominal :', ZTT_hist.Integral() , ' up ', up.Integral(), '  dn  ', dn.Integral() , '\n\n'
    #     l2=add_marker("UP < Down")
    #     l2.Draw("same")

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
    up1.SetMarkerColor(4)
    up1.SetLineColor(4)
    dn1.SetMarkerColor(2)
    dn1.SetLineColor(2)
    up1.SetLineWidth(5)
    dn1.SetLineWidth(5)
    norm_hist.SetMaximum(1.5)
    norm_hist.SetMinimum(0.5)
    norm_hist.SetTitleSize(0.0)
    norm_hist.GetXaxis().SetTitle(xaxis_label)
    norm_hist.GetYaxis().SetTitle("ratio")
    norm_hist.SetTitle("")
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
    norm_hist.SetFillColor(0)
    norm_hist.Draw("hist")
    up1.Draw("histsame")
    dn1.Draw("histsame")
    c.Modified()
    c.SaveAs("sys_check/plot_"+xaxis_label+'_'+sys_name+".png")



if __name__=="__main__":
   
   histnames = ['elePt_5', 'tauPt_5', 'metLongXaxis_5', 'tot_TMass_full_5']
   for ss in shape_list:
       for h in histnames:
           get_syst( h, ss)
   ##now close canvas once done
   c.Close()
           
