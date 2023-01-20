
import ROOT
from sys_list_v2 import *
from sys import path
# import argparse
# parser = argparse.ArgumentParser()
import time
path.append("../../../../MacrosAndScripts/")
# from myPlotStyle import *

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
        # first get up
        err_to_fill =  ROOT.TMath.Sqrt( sum( unc.GetBinContent(i) **2 for unc in up_list))
        if abs(err_to_fill) >  nominal.GetBinContent(i) :
            #err_to_fill =  nominal.GetBinContent(i)
            print '#'*20 , 'TROUBLE '
            up.SetBinContent(i ,  nominal.GetBinContent(i) )
        else:
            up.SetBinContent(i , 1 + err_to_fill )
        print 'AddDiffNuisances'
        print 'up bin', i, ' norm =', nominal.GetBinContent(i) , ' up error', up.GetBinContent(i)
        # now get down
        err_to_fill = ROOT.TMath.Sqrt( sum( unc.GetBinContent(i) **2 for unc in dn_list))
        if abs(err_to_fill) > 1.5 * nominal.GetBinContent(i) :
            err_to_fill =  nominal.GetBinContent(i)
        dn.SetBinContent(i , 1 - err_to_fill )
        #print 'dn bin', i, 'content', dn.GetBinContent(i)
    return up, dn

def get_systIntegral(xaxis_label="" ,sample=None, index=None):
    nominal = "f_"+xaxis_label+"_initial.root"
    up      = "f_"+xaxis_label+"_up.root"
    down    = "f_"+xaxis_label+"_down.root"
    inFile_n=ROOT.TFile(nominal,"r")
    inFile_u=ROOT.TFile(up,"r")
    inFile_d=ROOT.TFile(down,"r")
    
    if index is None:
        index = "9"
    histoname = xaxis_label+'_'+index
    print '##################  Opening for sys unc for ', histoname
    print '##################  inputs ', xaxis_label, sample, index
    dirname = [histoname+"/", histoname ]
    
    sampleName = "ZTTjet"
    if sample is not None:
        sampleName = sample
    up_list = []
    dn_list = []
    norm_hist = inFile_n.Get(histoname+"/"+sampleName+"_"+histoname)
    if  not (isinstance(norm_hist, ROOT.TH1F)): 
        print  histoname+"/"+sampleName+"_"+histoname , 'NOT FOUND '

    for key, value in shape_list.items():
        #print 'Chosen one : ', s
        if 'FF_' in key:
             sysName = histoname+'_fr_'+key
        else:
             sysName = histoname+'_'+key
        if sampleName not in value:
            print sampleName, ' not in ', key
            continue
        ZTT_hist      = inFile_n.Get(histoname+"/"+sampleName+"_"+histoname)
        ZTT_hist_up   = inFile_u.Get(sysName+"_up"+"/"+sampleName+"_"+sysName+"_up")
        ZTT_hist_dn   = inFile_d.Get(sysName+"_down"+"/"+sampleName+"_"+sysName+"_down")
        if not (isinstance(ZTT_hist, ROOT.TH1F) and isinstance(ZTT_hist_up, ROOT.TH1F) and isinstance(ZTT_hist_dn, ROOT.TH1F)):
            print ' check this ', sysName+"_up"+"/"+sampleName+"_"+sysName+"_up"
            continue
        print 'Getting  ', sysName+"_up"+"/"+sampleName+"_"+sysName
        #norm_hist = ZTT_hist
        up1 = ZTT_hist_up.Clone()
        #up1.Divide(ZTT_hist)
        dn1 = ZTT_hist_dn.Clone()
        #dn1.Divide(ZTT_hist)
        print 'nominal : {}   , up : {}    , down : {} '.format(ZTT_hist.Integral(), up1.Integral(), dn1.Integral())

        
    for key, value in norm_list.items():
        sysName = histoname+'_'+key
        scale = 1
        print 'Chosen one : ', sysName
        if sampleName in value[1]:
            scale = value[0]
        print 'scaling : ', scale
        scale_up = scale
        scale_dn = 2 - scale
        ZTT_hist = inFile_n.Get(histoname+"/"+sampleName+"_"+histoname)
        up = ZTT_hist.Clone()
        up.Scale(scale_up)
        dn = ZTT_hist.Clone()
        dn.Scale(scale_dn)
        print 'nominal : {}   , up : {}    , down : {} '.format(ZTT_hist.Integral(), up.Integral(), dn.Integral())
        
    return
def get_syst(xaxis_label="" ,sample=None, index=None):
    nominal = "f_"+xaxis_label+"_initial.root"
    up      = "f_"+xaxis_label+"_up.root"
    down    = "f_"+xaxis_label+"_down.root"
    inFile_n=ROOT.TFile(nominal,"r")
    inFile_u=ROOT.TFile(up,"r")
    inFile_d=ROOT.TFile(down,"r")
    
    if index is None:
        index = "9"
    histoname = xaxis_label+'_'+index
    dirname = [histoname+"/", histoname ]
    
    sampleName = "ZTTjet"
    if sample is not None:
        sampleName = sample
    up_list = []
    dn_list = []
    norm_hist = inFile_n.Get(histoname+"/"+sampleName+"_"+histoname)
    if  not (isinstance(norm_hist, ROOT.TH1F)): 
        print  histoname+"/"+sampleName+"_"+histoname , 'NOT FOUND '
    count_shapes=0
    count_scale=0
    for key, value in shape_list.items():
        if 'FF_' in key:
             sysName = histoname+'_fr_'+key
        else:
             sysName = histoname+'_'+key
        if sampleName not in value:
            continue

        ZTT_hist      = inFile_n.Get(histoname+"/"+sampleName+"_"+histoname)
        ZTT_hist_up   = inFile_u.Get(sysName+"_up"+"/"+sampleName+"_"+sysName+"_up")
        ZTT_hist_dn   = inFile_d.Get(sysName+"_down"+"/"+sampleName+"_"+sysName+"_down")
        if not (isinstance(ZTT_hist, ROOT.TH1F) and isinstance(ZTT_hist_up, ROOT.TH1F) and isinstance(ZTT_hist_dn, ROOT.TH1F)):
            ## print ' check this ', sysName+"_up"+"/"+sampleName+"_"+sysName+"_up"
            continue
        #norm_hist = ZTT_hist
        up1 = ZTT_hist_up.Clone()
        dn1 = ZTT_hist_dn.Clone()
        #print "{}  n={}  up ={} , down = {}".format(key, ZTT_hist.Integral(), up1.Integral(), dn1.Integral())
        #up1.Divide(ZTT_hist)
        #dn1.Divide(ZTT_hist)
        up_list.append(up1)
        dn_list.append(dn1)
        count_shapes+=1

    for key, value in norm_list.items():
        sysName = histoname+'_'+key
        scale = 1
        if sampleName in value[1]:
            scale = value[0]
        scale_up = scale
        scale_dn = 2 - scale
        ZTT_hist = inFile_n.Get(histoname+"/"+sampleName+"_"+histoname)
        up2 = ZTT_hist.Clone()
        up2.Scale(scale_up)
        dn2 = ZTT_hist.Clone()
        dn2.Scale(scale_dn)
        #print "{}  n={}  up ={} , down = {}".format(sysName, ZTT_hist.Integral(), up2.Integral(), dn2.Integral())
        #up2.Divide(ZTT_hist)
        #dn2.Divide(ZTT_hist)
        up_list.append(up2)
        dn_list.append(dn2)
        count_scale+=1
    
    
    bin_errors = []
    for ibin in range(1, norm_hist.GetNbinsX()+1):
        #print 'Bin number = ', ibin
        error_list = []
        content_up = []
        content_dn = []
        for up_hist in up_list:
            content_up.append( up_hist.GetBinContent(ibin) )
        for dn_hist in dn_list:
            content_dn.append( dn_hist.GetBinContent(ibin) )
        content_N = [norm_hist.GetBinContent(ibin)] * len(up_list)
        #print 'nominal', content_N
        #print 'up', content_up
        #print 'dn', content_dn
        for isyst in range(len(content_dn)):
            systError = (abs(content_up[isyst] - content_N[isyst]) + abs(content_dn[isyst] - content_N[isyst])) / 2.0
            error_list.append(systError)
        #print 'error_list : ' , error_list
        #print 'nominal value = ' , norm_hist.GetBinContent(ibin)
        #print 'bin error = ', ROOT.TMath.Sqrt( sum( unc**2 for unc in error_list))
        bin_errors.append(ROOT.TMath.Sqrt( sum( unc**2 for unc in error_list)))

    return bin_errors


if __name__=="__main__":
    #sampleSyslist = ['jetFakes']
    sampleSyslist = [ 'ZTTjet', 'ZLLjet', 'TT', 'jetFakes', 'STT', 'VVT', 'otherMC']
    for ss in sampleSyslist:
        print '\n'
        get_syst('tauPt', ss , "5")
        print '\n'
        get_syst('tauPt', ss , "9")
    
