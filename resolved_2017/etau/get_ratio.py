
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
def get_plot(bkg_name, syst_name , inFile1, inFile2):

    _ZTT_hist      = inFile1.Get(channel+'/'+bkg_name)
    _ZTT_hist_up   = inFile1.Get(channel+'/'+bkg_name+"_"+syst_name+"Up")
    _ZTT_hist_dn   = inFile1.Get(channel+'/'+bkg_name+"_"+syst_name+"Down")
    
    old_ZTT_hist      = inFile2.Get(channel+'/'+bkg_name)
    old_ZTT_hist_up   = inFile2.Get(channel+'/'+bkg_name+"_"+syst_name+"Up")
    old_ZTT_hist_dn   = inFile2.Get(channel+'/'+bkg_name+"_"+syst_name+"Down")
    # ZTT_hist = ROOT.TH1F( bkg_name+"_" , bkg_name, 16, 40, 200 )
    # ZTT_hist_up = ROOT.TH1F( bkg_name+"_"+syst_name+'_UP' , bkg_name+"_"+syst_name+'_Up', 16, 40, 200 )    
    # ZTT_hist_dn = ROOT.TH1F( bkg_name+"_"+syst_name+'_Down' , bkg_name+"_"+syst_name+'_Down', 16, 40, 200 )
    
    #print '   ' 
    nbinx_1 = _ZTT_hist.GetNbinsX()
    nbins_2 = _ZTT_hist_up.GetNbinsX()
    max_val = 16
    
    # for i in range(1, nbinx_1+1):
    #     #print '_ZTT_hist ', i , _ZTT_hist.GetBinContent(i) , i
    #     ZTT_hist.SetBinContent(i, _ZTT_hist.GetBinContent(i) )
    ZTT_hist = _ZTT_hist
    ZTT_hist_up = _ZTT_hist_up
    ZTT_hist_dn = _ZTT_hist_dn
    
    

    if not found_histogram( old_ZTT_hist, old_ZTT_hist_up, old_ZTT_hist_dn):
        print "*"*20 , '  check this   '
        print "*", bkg_name
        return
    if not found_histogram( _ZTT_hist, _ZTT_hist_up, _ZTT_hist_dn):
        print "*"*20 , '  check this   '
        print "*", bkg_name
        return
    
    norm_hist = old_ZTT_hist.Clone()
    norm_hist.Divide(old_ZTT_hist)
    norm_ratio = _ZTT_hist.Clone()
    norm_ratio.Divide(old_ZTT_hist)
    up_ratio = _ZTT_hist_up.Clone()
    up_ratio.Divide(old_ZTT_hist_up)
    dn_ratio = _ZTT_hist_dn.Clone()
    dn_ratio.Divide(old_ZTT_hist_dn)


    nDivXAxis= ZTT_hist.GetNbinsX()
    c.cd()
    pad1.Draw()
    pad1.cd()
    norm_hist.SetMarkerStyle(20)
    norm_hist.SetMarkerColor(1)
    norm_hist.SetLineColor(1)
    #norm_hist.SetFillColor(ROOT.TColor.GetColor(color_ztt))
    norm_ratio.SetMarkerColor(1)
    norm_ratio.SetLineColor(1)
    up_ratio.SetMarkerColor(4)
    up_ratio.SetLineColor(4)
    dn_ratio.SetMarkerColor(2)
    dn_ratio.SetLineColor(2)
    norm_hist.SetLineWidth(3)
    norm_ratio.SetLineWidth(3)
    up_ratio.SetLineWidth(4)
    dn_ratio.SetLineWidth(5)
    norm_hist.SetStats(0)
    norm_hist.GetXaxis().SetTitle("")
    norm_hist.GetYaxis().SetTitle("Events")
    norm_hist.GetXaxis().SetTitleSize(0)
    norm_hist.GetXaxis().SetNdivisions(nDivXAxis)
    norm_hist.GetXaxis().SetLabelSize(0)
    norm_hist.GetYaxis().SetLabelFont(42)
    norm_hist.GetYaxis().SetLabelOffset(0.01)
    norm_hist.GetYaxis().SetLabelSize(0.04)
    norm_hist.GetYaxis().SetTitleSize(0.05)
    norm_hist.GetYaxis().SetTitleOffset(1.22)
    if 'MH3' in bkg_name:
        bkg_name = 'signal'
    norm_hist.SetTitle(bkg_name+ " " + syst_name)

    tmp = None
    tmp = up_ratio.Clone()
    # tmp.GetXaxis().SetRange(40,200)
    # print "tmp max = ", tmp.GetMaximum() 
    # print "set y axis max = ", tmp.GetMaximum()*1.5
    #norm_hist.SetMaximum(1.25 * max(up_ratio.GetMaximum(), dn_ratio.GetMaximum()))
    
    diff1 = max(up_ratio.GetMaximum(), dn_ratio.GetMaximum(), norm_ratio.GetMaximum())
    diff2 = min(up_ratio.GetMinimum(), dn_ratio.GetMinimum(), norm_ratio.GetMinimum())
    width =  abs(diff2-1) * 1.2
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

    norm_hist.Draw("hist")
    norm_ratio.Draw("histsame")
    up_ratio.Draw("histsame")
    dn_ratio.Draw("histsame")
    #time.sleep(30)
    legende=make_legend()
    legende.AddEntry(norm_ratio, 'nominal ', "elp")
    legende.AddEntry(up_ratio, 'shape Up ', "elp")    
    legende.AddEntry(dn_ratio, 'shape Down', "elp")
    legende.Draw()
    l1=add_lumi(year, channel, isBlinded=False, blindingRatio=1)
    l1.Draw("same")
    l2=add_CMS()
    l2.Draw("same")
    l3=add_Preliminary()
    l3.Draw("same")
    # intergral_text = ROOT.TPaveText(0.5, 0.5, 0.70, 0.7, "NDC")
    # intergral_text.AddText( " Integral ="+str( norm_hist.Integral()) )
    # intergral_text.Draw("same")
    
    c.cd()
    # pad2.Draw()
    # pad2.cd()
    # norm_hist = norm_hist.Clone()
    # den_hist =  norm_hist.Clone()

    # norm_hist.SetMarkerStyle(20)
    # norm_hist.SetMarkerColor(1)
    # norm_hist.SetLineColor(1)
    # norm_hist.SetFillColor(0)
    
    # norm_hist.SetTitle("")
    # norm_hist.SetTitleSize(0.0)
    # norm_hist.GetXaxis().SetTitle("total tr. mass [GeV]")
    # norm_hist.GetYaxis().SetTitle("ratio")
    # norm_hist.GetYaxis().SetNdivisions(5)
    # norm_hist.GetXaxis().SetTitleFont(42)
    # norm_hist.GetYaxis().SetTitleFont(42)
    # norm_hist.GetXaxis().SetTitleSize(0.15)
    # norm_hist.GetYaxis().SetTitleSize(0.15)
    # norm_hist.GetYaxis().SetTitleOffset(0.3)
    # norm_hist.GetXaxis().SetTitleOffset(1.1)
    # norm_hist.SetStats(0)
    # norm_hist.GetYaxis().SetLabelSize(0.1)
    # norm_hist.GetXaxis().SetLabelSize(0.1)
    # norm_hist.Draw("hist")
    
    c.Modified()
    output_path = 'ratio_check_'+channel+'_'+year
    if not path.exists(output_path):
        makedirs(output_path)
    c.SaveAs(output_path+"/plot_"+bkg_name+'_'+syst_name+".png")


def GetKeyNames( self, dir = "" ):
    self.cd(dir)
    return [key.GetName() for key in ROOT.gDirectory.GetListOfKeys()]
ROOT.TFile.GetKeyNames = GetKeyNames


def get_syst(inFile1, inFile2, channel = "etau"):
    
    # filename = '~/monoHiggs_signal_sample/combinetutorial/CMSSW_10_2_13/src/CombineHarvester/CombineTools/bin/aux/2017/etau.root'
    # inFile=ROOT.TFile(filename, "r")
    
    sampleSyslist = [ 'ZTTjet', 'ZLLjet', 'TT', 'jetFakes', 'STT', 'VVT', 'otherMC', 'MH3_400_MH4_100']
    
    keyList = inFile1.GetKeyNames(channel)
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
            get_plot(key, shape, inFile1, inFile2)




if __name__=="__main__":
        
    # Initialize parser
    parser = argparse.ArgumentParser()
    parser.add_argument("-ch",
                        help="name channel to plot : etau , mutau , tautau") 
    parser.add_argument("-y",
                        help="year to plot : 2017, 2018")
    args =  parser.parse_args()
    ch=args.ch
    year=args.y
    if ch is None or year is None:
        print "Give proper arguments  \n python get_ratio.py -ch etau -y 2017"
        c.Close()
        exit("Exiting...")
    channel = ch
    #filename = '~/monoHiggs_signal_sample/combinetutorial/CMSSW_10_2_13/src/CombineHarvester/CombineTools/bin/aux/'+year+'/'+ch+'_tmass200.root'
    filename1 = '~/monoHiggs_signal_sample/combinetutorial/CMSSW_10_2_13/src/CombineHarvester/CombineTools/bin/aux/'+year+'/'+ch+'.root'
    filename2 = '~/monoHiggs_signal_sample/combinetutorial/CMSSW_10_2_13/src/CombineHarvester/CombineTools/bin/aux/'+year+'_backup/'+ch+'.root'
    inFile1=ROOT.TFile(filename1, "r")
    inFile2=ROOT.TFile(filename2, "r")
    print "files loaded"
    get_syst(inFile1, inFile2, ch)
    c.Close()
