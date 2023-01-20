
import ROOT
from sys import path
from sys import exit
import time
from template_style import *
import argparse
from os import path, makedirs



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

channel = '' # mt format
year = ''
dir_name = '' # xtt_mt_1_13TeV format
def get_plot(bkg_name, syst_name , filename, inFile):

    dir_name = 'xtt_'+channel+'_1_13TeV'
    _ZTT_hist      = inFile.Get(dir_name+'/'+bkg_name)
    _ZTT_hist_up   = inFile.Get(dir_name+'/'+bkg_name+"_"+syst_name+"Up")
    _ZTT_hist_dn   = inFile.Get(dir_name+'/'+bkg_name+"_"+syst_name+"Down")
    
    # print '_____________________________________________________'
    # print channel+"_"+year+"    "+bkg_name+'_'+syst_name
    # print 'Integrals  Nominal :', _ZTT_hist.Integral() , ' up ', _ZTT_hist_up.Integral(), '  dn  ', _ZTT_hist_dn.Integral() 
    up_percent = _ZTT_hist_up.Integral()/_ZTT_hist.Integral()
    dn_percent = _ZTT_hist_dn.Integral()/_ZTT_hist.Integral()
    # print 'Percentages                             up ', up_percent , '  dn  ', dn_percent, '% change             ', abs(1-up_percent)*100 , abs(1-dn_percent)*100,    '\n\n'
    return up_percent, dn_percent


def GetKeyNames( self, dir = "" ):
    self.cd(dir)
    return [key.GetName() for key in ROOT.gDirectory.GetListOfKeys()]
ROOT.TFile.GetKeyNames = GetKeyNames

def fix_shapes_v0(nom_hist, hist_up, hist_dn):
    from scipy import signal
    smooth_up = []
    smooth_dn = []
    smooth_nom = []    
    for ibin in range(1, nom_hist.GetNbinsX()+1):
        smooth_nom.append(nom_hist.GetBinContent(ibin))
        smooth_up.append(hist_up.GetBinContent(ibin))
        smooth_dn.append(hist_dn.GetBinContent(ibin))
    
    # smooth_up = signal.savgol_filter(smooth_up,
    #                                 3, # window size used for filtering
    #                                 1), # order of fitted polynomial
        
    # smooth_dn = signal.savgol_filter(smooth_dn,
    #                                 3, # window size used for filtering
    #                                 1), # order of fitted polynomial
    
    # smooth_up = smooth_up[0]
    # smooth_dn = smooth_dn[0]
    cutoff = []
    for ibin in range(1, nom_hist.GetNbinsX()+1):
        average = (abs(smooth_up[ibin-1] - smooth_nom[ibin-1]) + abs(smooth_dn[ibin-1] - smooth_nom[ibin-1]))/2
        smooth_up[ibin-1] = smooth_nom[ibin-1] + average
        smooth_dn[ibin-1] = smooth_nom[ibin-1] - average
        cutoff.append(average/smooth_nom[ibin-1])
    

    hist_up = hist_up.Clone("up")
    hist_dn = hist_dn.Clone("dn")    
    
    cutoff = sum(cutoff)/len(cutoff)
    print(cutoff)
    for ibin in range(1, nom_hist.GetNbinsX()+1):
        hist_up.SetBinContent(ibin, min(smooth_nom[ibin-1]*(1+cutoff), smooth_up[ibin-1]))
        hist_dn.SetBinContent(ibin, max(smooth_nom[ibin-1]*(1-cutoff), smooth_dn[ibin-1]))
    
    return hist_up, hist_dn


def fix_shapes(nom_hist, hist_up, hist_dn):
    from scipy import signal
    smooth_up = []
    smooth_dn = []
    smooth_nom = []    
    for ibin in range(1, nom_hist.GetNbinsX()+1):
        smooth_nom.append(nom_hist.GetBinContent(ibin))
        smooth_up.append(hist_up.GetBinContent(ibin) / nom_hist.GetBinContent(ibin) )
        smooth_dn.append(hist_dn.GetBinContent(ibin) / nom_hist.GetBinContent(ibin) )
    
    smooth_up = signal.savgol_filter(smooth_up,
                                    5, # window size used for filtering
                                    1), # order of fitted polynomial
        
    smooth_dn = signal.savgol_filter(smooth_dn,
                                    5, # window size used for filtering
                                    1), # order of fitted polynomial
    
    smooth_up = smooth_up[0]
    smooth_dn = smooth_dn[0]
    for ibin in range(1, nom_hist.GetNbinsX()+1):
        average = (abs(smooth_up[ibin-1]* smooth_nom[ibin-1] - smooth_nom[ibin-1]) + abs(smooth_dn[ibin-1]* smooth_nom[ibin-1] - smooth_nom[ibin-1]))/2
        smooth_up[ibin-1] = smooth_nom[ibin-1] + average
        smooth_dn[ibin-1] = smooth_nom[ibin-1] - average
    

    hist_up = hist_up.Clone("up")
    hist_dn = hist_dn.Clone("dn")    
    
    cutoff = 0.15
    print(cutoff)
    for ibin in range(1, nom_hist.GetNbinsX()+1):
        hist_up.SetBinContent(ibin, min(smooth_nom[ibin-1]*(1+cutoff), smooth_up[ibin-1]))
        hist_dn.SetBinContent(ibin, max(smooth_nom[ibin-1]*(1-cutoff), smooth_dn[ibin-1]))
    
    return hist_up, hist_dn


def get_plot(filename, inFile, channel = "et"):
    
    sampleSyslist = [ 'ZTTjet', 'ZLLjet', 'TT', 'jetFakes', 'STT', 'VVT', 'otherMC']
    #sampleSyslist = [ 'ZTTjet']
    dir_name = 'tautau'
    hname = 'ZTTjet_CMS_htt_boson_scale_met_Jet_2018'
    syst_name = hname
    # keylist = inFile.GetKeyNames(dir_name)
    # print(keylist)
    _ZTT_hist      = inFile.Get(dir_name+'/'+'ZTTjet')
    _ZTT_hist_up = inFile.Get(dir_name+'/'+hname+'Up')
    _ZTT_hist_dn = inFile.Get(dir_name+'/'+hname+'Down')

    ZTT_hist = _ZTT_hist
    ZTT_hist_up = _ZTT_hist_up
    ZTT_hist_dn = _ZTT_hist_dn
    norm_hist = ZTT_hist
    up = ZTT_hist_up.Clone("up")
    dn = ZTT_hist_dn.Clone("dn")
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
    
    
    bkg_name = ''
    ZTT_hist.SetTitle(bkg_name+ " " + syst_name)

    hist_up, hist_dn = fix_shapes(ZTT_hist, ZTT_hist_up, ZTT_hist_dn)
    
    hist_up.SetMarkerColor(4)
    hist_up.SetLineColor(4)
    hist_dn.SetMarkerColor(2)
    hist_dn.SetLineColor(2)
    hist_up.SetLineWidth(5)
    hist_dn.SetLineWidth(5)

    # tmp.GetXaxis().SetRange(40,200)
    # print "tmp max = ", tmp.GetMaximum() 
    # print "set y axis max = ", tmp.GetMaximum()*1.5
    ZTT_hist.SetMaximum(1.25 * max(up.GetMaximum(), dn.GetMaximum()))
    ZTT_hist.Draw("hist")
    #up.Draw("histsame")
    #dn.Draw("histsame")
    hist_up.Draw("histsame")
    hist_dn.Draw("histsame")
    #time.sleep(30)

    # legende=make_legend()
    # legende.AddEntry(ZTT_hist, 'nominal', "elp")
    # legende.AddEntry(up, 'shape Up', "elp")    
    # legende.AddEntry(dn, 'shape Down', "elp")
    # legende.Draw()
    l1=add_lumi(year, channel, isBlinded=False, blindingRatio=1)
    l1.Draw("same")
    l2=add_CMS()
    l2.Draw("same")
    l3=add_Preliminary()
    l3.Draw("same")
    # intergral_text = ROOT.TPaveText(0.5, 0.5, 0.70, 0.7, "NDC")
    # intergral_text.AddText( " Integral ="+str( ZTT_hist.Integral()) )
    # intergral_text.Draw("same")
    
    c.cd()
    pad2.Draw()
    pad2.cd()
    norm_hist = ZTT_hist.Clone()
    den_hist =  ZTT_hist.Clone()
    #norm_hist.Rebin(1)
    #norm_hist.GetXaxis().SetLimits(40, 200)
    #norm_hist.GetXaxis().SetRangeUser(40 , 200)
    #den_hist.Rebin(1)
    #den_hist.GetXaxis().SetLimits(40, 200)
    #den_hist.GetXaxis().SetRangeUser(40 , 200)
    up1 = ZTT_hist_up.Clone("up")
    # print " hist name :" , channel+'/'+bkg_name , syst_name
    # print "nominal nNbinsX = ", ZTT_hist.GetNbinsX() , "  integral = ", ZTT_hist.Integral()
    # print "up   nNbinsX    = ", up1.GetNbinsX() , "  integral = ", up1.Integral()
    #up1.Rebin(1)
    #up1.GetXaxis().SetLimits(40, 200)
    #up1.GetXaxis().SetRangeUser(40 , 200)
    up1.Divide(den_hist)
    dn1 = ZTT_hist_dn.Clone("dn")
    
    up2 = hist_up.Clone("up2")
    dn2 = hist_dn.Clone("up2")
    up2.Divide(den_hist)
    dn2.Divide(den_hist)
    #print "dn   nNbinsX    = ", dn1.GetNbinsX(), "  integral = ", dn1.Integral()
    #dn1.Rebin(1)
    #dn1.GetXaxis().SetLimits(40, 200)
    #dn1.GetXaxis().SetRangeUser(40 , 200)
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
    diff1 = max(up1.GetMaximum(), dn1.GetMaximum(), norm_hist.GetMaximum())
    diff2 = min(up1.GetMinimum(), dn1.GetMinimum(), norm_hist.GetMinimum())
    width = abs(diff2-1)
    #print 'diff1 = ', diff1, 'diff2 = ', diff2
    #print "width = ", width
    height = 0.4
    if width >=0.2: height = 0.4
    elif width<0.2 and width>=0.1: height = 0.2
    elif width<0.1 and width>=0.05: height = 0.1
    elif width<0.05 and width>=0.02: height = 0.05
    elif width<0.02 and width>=0.01: height = 0.02
    else : height = 0.01
    #print 'height = ', height
    norm_hist.SetMaximum(1 + height)
    norm_hist.SetMinimum(1 - height)
    norm_hist.SetTitle("")
    norm_hist.SetTitleSize(0.0)
    norm_hist.GetXaxis().SetTitle("total tr. mass [GeV]")
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
    # up1.Draw("histsame")
    # dn1.Draw("histsame")
    up2.Draw("histsame")
    dn2.Draw("histsame")
    
    c.Modified()
    c.SaveAs(hname+".png")


if __name__=="__main__":
        
    
    filename = 'tautau.root'
    inFile=ROOT.TFile(filename, "read")

    get_plot(filename, inFile, 'tautau')
    c.Close()
