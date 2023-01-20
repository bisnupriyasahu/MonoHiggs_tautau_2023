
import ROOT
import time
from myPlotStyle import *
from sys_shapes import syst_mapping

def found_histogram(ZTT_hist, ZTT_hist_up, ZTT_hist_dn ):
    if not isinstance(ZTT_hist, ROOT.TH1F) :
        return False
    if not isinstance(ZTT_hist_up, ROOT.TH1F) :
        return False
    if not isinstance(ZTT_hist_dn, ROOT.TH1F):
        return False
    return True


def AddLikeNuisances(n):
    hslist = []
    for nuisance in nuisances:
        u,d = nuisance.GetHistos()
        n = nuisance.norm.Clone()
        hslist.append( (u,d,n) )
    up.Reset(); dn.Reset()
    for hs in hslist:
        u,d,n = hs
        if u.Integral() == 0: u = n
        if d.Integral() == 0: d = n 
        up.Add(u); dn.Add(d)
    if norm is not None:
        up.Divide(norm)
        dn.Divide(norm)


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
    nominal = "DYJetsToLL_00_test.root"
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
    #dn.Divide(ZTT_hist)
    c.cd()
    pad1.Draw()
    pad1.cd()
    ZTT_hist.SetMarkerStyle(20)
    ZTT_hist.SetMarkerColor(1)
    ZTT_hist.SetLineColor(1)
    up.SetMarkerColor(4)
    up.SetLineColor(4)
    dn.SetMarkerColor(2)
    dn.SetLineColor(2)
    ZTT_hist.Draw()
    up.Draw("histsame")
    dn.Draw("histsame")
    #time.sleep(30)
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
    
    norm_hist.SetMaximum(1.5)
    norm_hist.SetMinimum(0.5)
    norm_hist.SetTitleSize(0.0)
    norm_hist.Draw("hist")
    up1.Draw("histsame")
    dn1.Draw("histsame")
    if up.Integral() < dn.Integral():
        print '------------  UP < Down ------------'
        print 'Nominal :', ZTT_hist.Integral() , ' up ', up.Integral(), '  dn  ', dn.Integral() , '\n\n'
    c.Modified()
    c.SaveAs("sys_check/plot_"+xaxis_label+'_'+sys_name+".png")



if __name__=="__main__":
   
   histnames = ['tau1Pt_5', 'tau2Pt_5', 'metLongXaxis_5', 'tot_TMass_full_5']
   for ss in syst_mapping:
       for h in histnames:
           get_syst( h, ss)
   ##now close canvas once done
   c.Close()
           
