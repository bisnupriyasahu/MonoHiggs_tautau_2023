
import ROOT
from sys import path
from sys import exit
import time
from template_style import *
import argparse
import os


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
def get_plot(bkg_name, syst_name , filename, inFile):
    # filename = '~/monoHiggs_signal_sample/combinetutorial/CMSSW_10_2_13/src/CombineHarvester/CombineTools/bin/aux/2017/tautau.root'
    # inFile=ROOT.TFile(filename, "r")

    _ZTT_hist      = inFile.Get(channel+'/'+bkg_name)
    _ZTT_hist_up   = inFile.Get(channel+'/'+bkg_name+"_"+syst_name+"Up")
    _ZTT_hist_dn   = inFile.Get(channel+'/'+bkg_name+"_"+syst_name+"Down")
    
    # ZTT_hist = ROOT.TH1F( bkg_name+"_" , bkg_name, 16, 40, 200 )
    # ZTT_hist_up = ROOT.TH1F( bkg_name+"_"+syst_name+'_UP' , bkg_name+"_"+syst_name+'_Up', 16, 40, 200 )    
    # ZTT_hist_dn = ROOT.TH1F( bkg_name+"_"+syst_name+'_Down' , bkg_name+"_"+syst_name+'_Down', 16, 40, 200 )
    
    print('   ' )
    nbinx_1 = _ZTT_hist.GetNbinsX()
    nbins_2 = _ZTT_hist_up.GetNbinsX()
    max_val = 16
    
    # for i in range(1, nbinx_1+1):
    #     #print '_ZTT_hist ', i , _ZTT_hist.GetBinContent(i) , i
    #     ZTT_hist.SetBinContent(i, _ZTT_hist.GetBinContent(i) )
    ZTT_hist = _ZTT_hist
    ZTT_hist_up = _ZTT_hist_up
    ZTT_hist_dn = _ZTT_hist_dn
    
    # #print ""
    # #print "filling up and down "
    # if nbinx_1 != nbins_2 : max_val = 20
    # for i in range(1, max_val+1):
    #     j = i
    #     if nbinx_1 != nbins_2 :
    #         if i<5: continue
    #         j = i-4
    #     ZTT_hist_up.SetBinContent( j, _ZTT_hist_up.GetBinContent(i) )
    #     ZTT_hist_dn.SetBinContent( j, _ZTT_hist_dn.GetBinContent(i) )


    if not found_histogram(ZTT_hist, ZTT_hist_up, ZTT_hist_dn ):
        print("*"*20 , '  check this   ')
        print ("*", bkg_name)
        print ("*", (bkg_name+'_'+syst_name+"_up"))
        print ("*", (bkg_name+'_'+syst_name+"_down") , "\n\n")
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

    tmp = None
    tmp = up.Clone()
    # tmp.GetXaxis().SetRange(40,200)
    # print "tmp max = ", tmp.GetMaximum() 
    # print "set y axis max = ", tmp.GetMaximum()*1.5
    ZTT_hist.SetMaximum(1.25 * max(up.GetMaximum(), dn.GetMaximum()))
    ZTT_hist.Draw("hist")
    up.Draw("histsame")
    dn.Draw("histsame")
    #time.sleep(30)
    legende=make_legend()
    legende.AddEntry(ZTT_hist, 'nominal', "elp")
    legende.AddEntry(up, 'shape Up', "elp")    
    legende.AddEntry(dn, 'shape Down', "elp")
    legende.Draw()
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
    up1.Draw("histsame")
    dn1.Draw("histsame")
    # if up.Integral() < dn.Integral():
    #print '------------  UP < Down ------------'
    print('_____________________________________________________')
    # print channel+"_"+year+"    "+bkg_name+'_'+syst_name
    # print 'Integrals  Nominal :', ZTT_hist.Integral() , ' up ', up.Integral(), '  dn  ', dn.Integral() 
    # up_percent = up.Integral()/ZTT_hist.Integral()
    # dn_percent = dn.Integral()/ZTT_hist.Integral()
    # print 'Percentages                             up ', up_percent , '  dn  ', dn_percent, '% change             ', abs(1-up_percent)*100 , abs(1-dn_percent)*100,    '\n\n'
    if not os.path.exists("sys_check_"+channel+"_"+year):
        os.mkdir("sys_check_"+channel+"_"+year)
    c.Modified()
    c.SaveAs("sys_check_"+channel+"_"+year+"/plot_"+bkg_name+'_'+syst_name+".png")


def GetKeyNames( self, dir = "" ):
    self.cd(dir)
    return [key.GetName() for key in ROOT.gDirectory.GetListOfKeys()]
ROOT.TFile.GetKeyNames = GetKeyNames


def get_syst(filename, channel = "tautau"):
    
    # filename = '~/monoHiggs_signal_sample/combinetutorial/CMSSW_10_2_13/src/CombineHarvester/CombineTools/bin/aux/2017/tautau.root'
    # inFile=ROOT.TFile(filename, "r")
    inFile=ROOT.TFile(filename, "r")
    sampleSyslist = [ 'ZTTjet', 'ZLLjet', 'TT', 'jetFakes', 'STT', 'VVT', 'otherMC']
    
    keyList = inFile.GetKeyNames(channel)
    hist_dict = {}
    keyList = list(set(keyList))
    for thist in keyList:
        if 'data' in thist: continue
                
        thist = thist.replace('Up', '')
        thist = thist.replace('Down', '')
        thist = thist.split('_')
        if 'MH3' in thist:
            bkg_name = '_'.join(thist[:4])
            syst_name = '_'.join(thist[4:])
        else:
            bkg_name = thist[0]
            syst_name = '_'.join(thist[1:])
        if bkg_name in hist_dict:
            hist_dict[bkg_name].append(syst_name)
        else:
            hist_dict[bkg_name] = [syst_name]
    
    for key, values in hist_dict.items():
        #print key, values
        if key not in sampleSyslist: continue
        #print key, values
        for shape in values:
            if len(shape)==0: continue
            get_plot(key, shape, filename, inFile)




if __name__=="__main__":
        
    # Initialize parser
    parser = argparse.ArgumentParser()
    parser.add_argument("-ch",
                        help="name channel to plot : tautau , mutau , tautau") 
    parser.add_argument("-y",
                        help="year to plot : 2017, 2018")
    args =  parser.parse_args()
    ch=args.ch
    year='2017'
    channel = 'tautau'
    filename = channel+'.root'
    

    get_syst(filename, channel)
    c.Close()
