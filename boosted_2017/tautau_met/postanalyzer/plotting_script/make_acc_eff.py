from lumi_weights_2017 import sampleListDict,xsex_mapping
import ROOT as R
from ROOT import TCanvas, TGraph
from ROOT import gROOT
from math import sin
from array import array


def make_legend():
  output = R.TLegend(0.85, 0.45, 1.0, 0.75, "", "brNDC")
  #output = ROOT.TLegend(0.2, 0.1, 0.47, 0.65, "", "brNDC")
  output.SetLineWidth(1)
  output.SetLineStyle(1)
  output.SetFillStyle(1001) #0
  output.SetFillColor(0)
  output.SetBorderSize(1)
  output.SetTextFont(42)
  return output

def add_text(text='', lowX= 0.65, lowY= 0.65):
    output  = R.TPaveText(lowX, lowY, lowX+0.2, lowY+0.2, "NDC")
    #output.SetTextFont(61)
    output.SetTextSize(0.03)
    output.SetBorderSize(   0 )
    output.SetFillStyle(    1001 )
    output.SetLineWidth(1)
    output.SetLineStyle(1)
    output.SetTextAlign(   12 )#12
    output.SetTextColor(    1 )
    output.AddText(text)
    return output

def add_text(text='', lowX= 0.45, lowY= 0.8):
    output  = R.TPaveText(lowX, lowY, lowX+0.2, lowY+0.2, "NDC")
    #output.SetTextFont(61)
    output.SetTextSize(0.03)
    output.SetBorderSize(   0 )
    output.SetFillStyle(  0) #( 1001 )
    output.SetLineWidth(1)
    output.SetLineStyle(1)
    output.SetTextAlign(   12 )#12
    output.SetTextColor(    1 )
    output.AddText(text)
    return output

zprime_ngen = {'Zpbaryonic2017_6': 887000, 'Zpbaryonic2017_7': 1101000, 'Zpbaryonic2017_4': 1005000, 'Zpbaryonic2017_5': 916000, 'Zpbaryonic2017_2': 948000, 'Zpbaryonic2017_3': 974000, 'Zpbaryonic2017_1': 1018000, 'Zpbaryonic2017_8': 1035000, 'Zpbaryonic2017_9': 919000, 'Zpbaryonic2017_29': 1015000, 'Zpbaryonic2017_28': 933000, 'Zpbaryonic2017_41': 891000, 'Zpbaryonic2017_40': 1046000, 'Zpbaryonic2017_25': 1003000, 'Zpbaryonic2017_24': 1000000, 'Zpbaryonic2017_27': 895000, 'Zpbaryonic2017_26': 949000, 'Zpbaryonic2017_21': 955000, 'Zpbaryonic2017_20': 986000, 'Zpbaryonic2017_23': 1044000, 'Zpbaryonic2017_22': 1006000, 'Zpbaryonic2017_14': 968000, 'Zpbaryonic2017_15': 900000, 'Zpbaryonic2017_16': 902000, 'Zpbaryonic2017_17': 917000, 'Zpbaryonic2017_10': 937000, 'Zpbaryonic2017_11': 1039000, 'Zpbaryonic2017_12': 1002000, 'Zpbaryonic2017_13': 996000, 'Zpbaryonic2017_18': 947000, 'Zpbaryonic2017_19': 957000, 'Zpbaryonic2017_38': 997000, 'Zpbaryonic2017_39': 930000, 'Zpbaryonic2017_36': 944000, 'Zpbaryonic2017_37': 994000, 'Zpbaryonic2017_34': 1031000, 'Zpbaryonic2017_35': 989000, 'Zpbaryonic2017_32': 995000, 'Zpbaryonic2017_33': 993000, 'Zpbaryonic2017_30': 939000, 'Zpbaryonic2017_31': 940000, 'Zpbaryonic2017_43': 933000, 'Zpbaryonic2017_42': 1027000}
zprime_list = [
        'MZp_100_MChi_1'  ,
        'MZp_200_MChi_1',
        'MZp_500_MChi_1',
        'MZp_1000_MChi_1',
        'MZp_1500_MChi_1',
        'MZp_2000_MChi_1'
]




mapping = {
    'etau' : [
             [  0.261,
                0.282,
                0.307,
                0.413,
                0.48,
                0.513
                ] # list_2017
                ,
            [
            0.1276439183,
            0.16086026,
            0.2937265552,
            0.7409842154,
            0.788630455,
            1.315891365
            ]# list_2016
    ],
    'mutau' : [
             [
                0.487 ,
                0.493,
                0.571,
                0.73,
                0.798,
                0.854
                ] # list_2017
                ,
            [
                0.2613760446 ,
                0.3376731662,
                0.5664763231,
                1.280213556,
                1.381327762,
                2.094470752
            ] # list_2016
    ]
}


def get_plot(channel=''):
    tmp = []
    canv=R.TCanvas("canvas","",0,0,1300,1200)
    canv.cd()

    n = 0
    x, y1, y2 = array( 'd' ), array( 'd' ), array( 'd' )
    for i,sample in enumerate(zprime_list):
        name = sample
        xvalue = name.split('_')[1]
        xvalue = float(xvalue)
        list_2016 = mapping[channel][1]
        list_2017 = mapping[channel][0]    
        tmp.append([xvalue, list_2016[i], list_2017[i] ])
        print [xvalue, list_2016[i], list_2017[i] ]
        
        x.append(xvalue)
        y1.append(list_2016[i])
        y2.append(list_2017[i])
        n += 1

    print x
    print y1
    print y2
    #canv.SetLogy()
    gr = TGraph( n, x, y1 )
    gr.SetLineColor( 2 )
    gr.SetLineWidth( 4 )
    gr.SetMarkerColor( 1 )
    gr.SetMarkerStyle( 21 )
    gr.SetMaximum(3)
    gr.SetTitle( 'Acceptance * efficiency' )
    gr.GetXaxis().SetTitle( 'mass Zprime' )
    gr.GetYaxis().SetTitle( 'acc*eff' )

    gr2 = TGraph( n, x, y2 )
    gr2.SetLineColor( 4 )
    gr2.SetLineWidth( 4 )
    gr2.SetMarkerColor( 1 )
    gr2.SetMarkerStyle( 21 )

    gr.Draw( 'ALP' )
    gr2.Draw('same' )

    legende=make_legend()
    legende.AddEntry(gr, '2016' ,"f")
    legende.AddEntry(gr2, '2017' ,"f")
    legende.Draw("same")
    l1=add_text()
    l1.AddText(channel+' channel')
    l1.Draw('same')
    # TCanvas.Update() draws the frame, after which one can change it
    canv.Update()
    #canv.GetFrame().SetFillColor( 21 )
    canv.GetFrame().SetBorderSize( 12 )
    canv.Modified()
    canv.Update()
    canv.SaveAs(channel+'_acc_eff_2016_2017.png')



for ch in ['etau', 'mutau']:
    get_plot(ch)




