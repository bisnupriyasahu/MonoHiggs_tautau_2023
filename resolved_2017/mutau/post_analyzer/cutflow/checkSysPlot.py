
import ROOT
from sys_list import *
from sys import path
# import argparse
# parser = argparse.ArgumentParser()
import time
path.append("../../../MacrosAndScripts/")
from myPlotStyle import *

def sample():
    for s in shapes_list:
        print s
        
    for key, values in norm_list.items():
        print key , '\t' , values

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

def get_syst(xaxis_label=""):
    nominal = "f_"+xaxis_label+"_initial.root"
    up      = "f_"+xaxis_label+"_up.root"
    down    = "f_"+xaxis_label+"_down.root"
    inFile_n=ROOT.TFile(nominal,"r")
    inFile_u=ROOT.TFile(up,"r")
    inFile_d=ROOT.TFile(down,"r")

    histoname = xaxis_label+'_9'
    dirname = [histoname+"/", histoname ]
    sysName = histoname+'_'+'CMS_singleeletrg_2017'
    
    sampleName = "ZTTjet"
    up_list = []
    dn_list = []
    norm_hist = None
    
    for s in shapes_list:
        print 'Chosen one : ', s
        if 'FF_' in s: continue
        sysName = histoname+'_'+s
        ZTT_hist      = inFile_n.Get(histoname+"/"+sampleName+"_"+histoname)
        ZTT_hist_up   = inFile_u.Get(sysName+"_up"+"/"+sampleName+"_"+sysName+"_up")
        ZTT_hist_dn   = inFile_d.Get(sysName+"_down"+"/"+sampleName+"_"+sysName+"_down")
        if not (isinstance(ZTT_hist, ROOT.TH1F) and isinstance(ZTT_hist_up, ROOT.TH1F) and isinstance(ZTT_hist_dn, ROOT.TH1F)):
            print ' check this ', sysName+"_up"+"/"+sampleName+"_"+sysName+"_up"
            continue
        norm_hist = ZTT_hist
        up = ZTT_hist_up.Clone("up")
        #up.Divide(ZTT_hist)
        dn = ZTT_hist_dn.Clone("dn")
        #dn.Divide(ZTT_hist)
        c.cd()
        ZTT_hist.SetMarkerStyle(20)
        ZTT_hist.SetMarkerColor(1)
        ZTT_hist.SetLineColor(1)
        up.SetMarkerColor(4)
        up.SetLineColor(4)
        dn.SetMarkerColor(2)
        dn.SetLineColor(2)
        ZTT_hist.Draw()
        up.Draw("same")
        dn.Draw("same")
        #time.sleep(30)
        print 'up', up.Integral(), '   dn', dn.Integral()
        c.Modified()
        c.SaveAs("sys_check/plot_"+histoname+"_"+s+".png")
        norm_hist = ZTT_hist
        up1 = ZTT_hist_up.Clone("up")
        up1.Divide(ZTT_hist)
        dn1 = ZTT_hist_dn.Clone("dn")
        dn1.Divide(ZTT_hist)
        up_list.append(up1)
        dn_list.append(dn1)

    for key, value in norm_list.items():
        sysName = histoname+'_'+key
        scale = 1
        if 'ZTTjet' in value[1]:
            scale = value[0]
        scale_up = scale
        scale_dn = 2 - scale
        ZTT_hist      = inFile_n.Get(histoname+"/"+sampleName+"_"+histoname)
        up = ZTT_hist.Clone("up")
        up.Scale(scale_up)
        dn = ZTT_hist.Clone("dn")
        dn.Scale(scale_dn)
        c.cd()
        ZTT_hist.SetMarkerStyle(20)
        ZTT_hist.SetMarkerColor(1)
        ZTT_hist.SetLineColor(1)
        up.SetMarkerColor(4)
        up.SetLineColor(4)
        dn.SetMarkerColor(2)
        dn.SetLineColor(2)
        ZTT_hist.Draw()
        up.Draw("same")
        dn.Draw("same")
        #time.sleep(30)
        print 'up', up.Integral(), '   dn', dn.Integral()
        c.Modified()
        c.SaveAs("sys_check/plot_"+histoname+"_"+sysName+".png")
        norm_hist = ZTT_hist
        up1 = up.Clone("up")
        up1.Divide(ZTT_hist)
        dn1 = dn.Clone("dn")
        dn1.Divide(ZTT_hist)
        up_list.append(up1)
        dn_list.append(dn1)


    c.cd()
    up, dn = AddDiffNuisances(up_list, dn_list, norm_hist)
    norm_hist.SetMarkerStyle(20)
    norm_hist.SetMarkerColor(1)
    norm_hist.SetLineColor(1)
    up.SetMarkerColor(4)
    up.SetLineColor(4)
    dn.SetMarkerColor(2)
    dn.SetLineColor(2)
    up.Add(norm_hist)
    dn.Add(norm_hist)
    norm_hist.Draw()
    up.Draw("same")
    dn.Draw("same")
    c.SaveAs("sys_check/plot_"+histoname+"_wsys.png")
    c.Close()

if __name__=="__main__":
    get_syst('elePt')
