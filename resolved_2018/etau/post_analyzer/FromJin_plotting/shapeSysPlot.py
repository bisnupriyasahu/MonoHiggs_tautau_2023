
import ROOT
from sys_list_v2 import *
from sys import path
# import argparse
# parser = argparse.ArgumentParser()
import time
path.append("../../../MacrosAndScripts/")
from myPlotStyle import *

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

def get_syst(xaxis_label="" , sampleName =None):
    nominal = "f_"+xaxis_label+"_initial.root"
    up      = "f_"+xaxis_label+"_up.root"
    down    = "f_"+xaxis_label+"_down.root"
    inFile_n=ROOT.TFile(nominal,"r")
    inFile_u=ROOT.TFile(up,"r")
    inFile_d=ROOT.TFile(down,"r")

    histoname = xaxis_label+'_9'
    dirname = [histoname+"/", histoname ]
    
    if sampleName is None:
        sampleName = "ZTTjet"
    up_list = []
    dn_list = []
    norm_hist = None
    
    for key, value in shape_list.items():
        #print 'Chosen one : ', key
        if 'FF_' in key:
             sysName = histoname+'_fr_'+key
        else:
             sysName = histoname+'_'+key
        if sampleName not in value:
            #print sampleName, ' not in ', key
            continue
        print 'histoname = ',histoname, ' sysName=', sysName
        ZTT_hist      = inFile_n.Get(histoname+"/"+sampleName+"_"+histoname)
        ZTT_hist_up   = inFile_u.Get(sysName+"_up"+"/"+sampleName+"_"+sysName+"_up")
        ZTT_hist_dn   = inFile_d.Get(sysName+"_down"+"/"+sampleName+"_"+sysName+"_down")
        
        if not found_histogram(ZTT_hist, ZTT_hist_up, ZTT_hist_dn ):
            print "*"*20 , '  check this   '
            print histoname+"/"+sampleName+"_"+histoname
            print sysName+"_up"+"/"+sampleName+"_"+sysName+"_up"
            print sysName+"_down"+"/"+sampleName+"_"+sysName+"_down"
            continue
        norm_hist = ZTT_hist
        up = ZTT_hist_up.Clone("up")
        #up.Divide(ZTT_hist)
        dn = ZTT_hist_dn.Clone("dn")
        #dn.Divide(ZTT_hist)
        print 'nominal : {}   , up : {}    , down : {} '.format(norm_hist.Integral(), up.Integral(), dn.Integral())
        
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
        c.SaveAs("sys_check/plot_"+histoname+"_"+sampleName+"_"+key+".png")
        norm_hist = ZTT_hist
        up1 = ZTT_hist_up.Clone("up")
        up1.Divide(ZTT_hist)
        dn1 = ZTT_hist_dn.Clone("dn")
        dn1.Divide(ZTT_hist)
        up_list.append(up1)
        dn_list.append(dn1)
        
    #c.Close()

if __name__=="__main__":
    mc_samples = ['jetFakes', 'ZTTjet', 'ZLLjet', 'TT' , 'otherMC' , 'STT', 'VVT']
    for s in mc_samples:
        get_syst('elePt', s)
    c.Close()
