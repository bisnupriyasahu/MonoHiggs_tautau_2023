import ROOT
from os import path, listdir, getcwd
from sys import path

from myPlotStyle import *
from xsec_mapping import xsec_map

ROOT.gStyle.SetFrameLineWidth(1)
ROOT.gStyle.SetLineWidth(2)
ROOT.gStyle.SetOptStat(0)

def add_text(text="", lowX=0.5, lowY=0.5):
    lumi  = ROOT.TPaveText(lowX, lowY, lowX+0.1, lowY+0.1, "NDC")
    lumi.SetBorderSize(   0 )
    lumi.SetFillStyle(    0 )
    lumi.SetTextAlign(   12 )
    lumi.SetTextColor(    1 )
    lumi.SetTextSize(0.04)
    lumi.SetTextFont (   42 )
    lumi.AddText(text)
    return lumi

def GetKeyNames( self, dir = "" ):
    self.cd(dir)
    return [key.GetName() for key in ROOT.gDirectory.GetListOfKeys()]
ROOT.TFile.GetKeyNames = GetKeyNames

colors = [ROOT.kRed, ROOT.kBlue+1, ROOT.kMagenta, 
            ROOT.kViolet-9,  ROOT.kAzure+10, ROOT.kGreen,
            ROOT.kOrange, ROOT.kTeal, ROOT.kBlack, ROOT.kBlue-10]
title_mapping= {
                "tot_TMass" : "tot tr mass",  
                "tot_TMass_full" : "tot tr mass", 
                "metFull" : "MET", 
}
def make_plot(cat='', xsec_scaling=False, _ma=100, _mchi=1, channel=""):
    
    #inFile = ROOT.TFile('f_etau_initial.root', 'r')
    var = 'tot_TMass_full'
    inFile = ROOT.TFile('f_'+var+'_initial.root', 'r')
    idx = '9'
    tdir_1 = var+'_'+idx
    indices = {'5': 'preselection' , '7':'higgspt>65' , '8':'mvis<125' , '9':'met>105', '9b': 'dr<2.0'}
    keyList = inFile.GetKeyNames(tdir_1)

    signal_2hdma = []
    for hist in keyList:
        if '2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10' in hist:
            hist = hist.replace('_'+tdir_1, '')
            ma = int(hist.split('_')[-1])
            if ma != _ma : continue
            signal_2hdma.append(hist)

    signal_zprime = []
    for hist in keyList:
        if 'MZp_' in hist:
            hist = hist.replace('_'+tdir_1, '')
            mchi = int(hist.split('_')[-1])
            if mchi != _mchi: continue
            signal_zprime.append(hist)   


    print signal_2hdma
    print signal_zprime
    c, pad1, pad2 = get_canvas()
    legende=make_legend()
    c.cd()
    pad1.Draw()
    pad1.cd()
    pad1.SetLogy()  
    pad1.SetBottomMargin(0.1)

    y_max = 0
    signal_list = []
    if cat=='zprime':
        signal_list = signal_zprime
    elif cat=='2hdma':
        signal_list = signal_2hdma

    ZTT = inFile.Get(tdir_1 + '/' + 'ZTTjet' + '_' + tdir_1 )
    ZLL = inFile.Get(tdir_1 + '/' + 'ZLLjet' + '_' + tdir_1 )
    TT =  inFile.Get(tdir_1 + '/' + 'TT' + '_' + tdir_1 )
    STT = inFile.Get(tdir_1 + '/' + 'STT' + '_' + tdir_1 )
    VVT = inFile.Get(tdir_1 + '/' + 'VVT' + '_' + tdir_1 )
    otherMC =  inFile.Get(tdir_1 + '/' + 'otherMC' + '_' + tdir_1 )
    jetFakes = inFile.Get(tdir_1 + '/' + 'jetFakes' + '_' + tdir_1 )

    
    ZTT.SetFillColor(ROOT.TColor.GetColor(color_ztt))
    ZLL.SetFillColor(ROOT.TColor.GetColor(color_zll))
    TT.SetFillColor(ROOT.TColor.GetColor(color_tt))
    otherMC.SetFillColor(ROOT.TColor.GetColor(color_ggh))
    STT.SetFillColor(ROOT.TColor.GetColor(color_vv))
    VVT.SetFillColor(ROOT.TColor.GetColor(color_vv))
    jetFakes.SetFillColor(ROOT.TColor.GetColor(color_jetfake))
        
    stack=ROOT.THStack("stack","stack")  
    stack.Add(otherMC)
    stack.Add(VVT)
    stack.Add(STT)
    stack.Add(TT)
    stack.Add(jetFakes)
    stack.Add(ZLL)
    stack.Add(ZTT)

    signal_map = []
    for s in signal_list:
        tmp = inFile.Get(tdir_1 + '/' + s + '_' + tdir_1 )
        if xsec_scaling:
            tmp.Scale(xsec_map[s])
        #print s , tmp.GetMaximum()
        y_max = max(y_max ,tmp.GetMaximum() )
        signal_map.append([s, tmp.GetMaximum()])
    y_max = max(y_max,  stack.GetMaximum())
    #signal_map = sorted(signal_map, key=lambda x: x[1], reverse=True)
    signal_list = [x[0] for x in signal_map]
    tmp = inFile.Get(tdir_1 + '/' + signal_list[0] + '_' + tdir_1 )
    if xsec_scaling:
        tmp.Scale(xsec_map[signal_list[0]])
    tmp.SetLineColor(colors[0])
    legende.AddEntry( tmp , signal_list[0] , "f")

    tmp.SetMaximum(10* y_max)
    tmp.SetMinimum(0.1)
    tmp.SetLineWidth(4)
    tmp.GetXaxis().SetTitle(title_mapping[var] +' [Gev]')
    tmp.GetYaxis().SetTitle('Events')
    tmp.SetTitle(title_mapping[var] )
    tmp.Draw('hist')
    stack.Draw("histsame")
    tmp.Draw('histsame')
    label_text1a = add_text('2HDMa ma='+str(_ma), 0.5, 0.75)
    label_text1b = add_text('Zprime mChi='+str(_mchi), 0.5, 0.75)
    if cat=='2hdma':
        label_text1a.Draw('SAME')
    elif cat=='zprime':
        label_text1b.Draw('SAME')

    label_text2 = add_text(indices[idx], 0.5, 0.70)
    label_text2.Draw('SAME')    
    if not xsec_scaling:
        label_text3 = add_text('xs = 1pb', 0.5, 0.65)
        label_text3.Draw('SAME')

    i = 1
    for s in signal_list[1:]:
        tmp = inFile.Get(tdir_1 + '/' + s + '_' + tdir_1 )
        tmp.SetLineColor(colors[i])
        if xsec_scaling:
            tmp.Scale(xsec_map[s])
        tmp.SetLineWidth(4)
        tmp.Draw('histsame')
        legende.AddEntry( tmp , s , "f")
        i += 1
    legende.AddEntry( ZTT , 'ZTT' , "f")
    legende.AddEntry( ZLL , 'ZLL' , "f")
    legende.AddEntry( jetFakes , 'jetFakes' , "f")
    legende.AddEntry( TT , 'TT' , "f")
    legende.AddEntry( STT , 'STT' , "f")
    legende.AddEntry( VVT , 'VVT' , "f")
    legende.AddEntry( otherMC , 'otherMC' , "f")
    
    l1=add_lumi('2017', channel, blindingRatio = 1)
    l1.Draw("same")

    c.cd()
    pad2.Draw()
    pad2.cd()
    legende.Draw('same')

    pad1.RedrawAxis()
    c.Modified()

    savename = ''
    if cat=='2hdma':
        savename = 'plot_'+cat+'_ma_'+str(_ma)
    else    :
        savename = 'plot_'+cat+'_ma_'+str(_mchi)
    if xsec_scaling:
        c.SaveAs('plots_signal/'+tdir_1+savename+'.png')
    else:
        c.SaveAs('plots_signal/'+tdir_1+savename+'_xsec1pb_.png')
    c.Close()


curr_wd = getcwd()
ch = curr_wd.split('/')[-2]
ch = ch.split('_')[0]

print('Channel = ', ch)
make_plot(cat='2hdma', xsec_scaling=False, _ma=100, channel=ch)
make_plot(cat='2hdma', xsec_scaling=True, _ma=100, channel=ch)
make_plot(cat='2hdma', xsec_scaling=False, _ma=200, channel=ch)
make_plot(cat='2hdma', xsec_scaling=True, _ma=200, channel=ch)

make_plot('zprime', False, channel=ch)
make_plot('zprime', True, channel=ch)

