from lumi_weights_2017 import sampleListDict,xsex_mapping
import ROOT 
from ROOT import TCanvas, TGraph
from ROOT import gROOT
from math import sin
from array import array

zprime_ngen = {'Zpbaryonic2017_6': 887000, 'Zpbaryonic2017_7': 1101000, 'Zpbaryonic2017_4': 1005000, 'Zpbaryonic2017_5': 916000, 'Zpbaryonic2017_2': 948000, 'Zpbaryonic2017_3': 974000, 'Zpbaryonic2017_1': 1018000, 'Zpbaryonic2017_8': 1035000, 'Zpbaryonic2017_9': 919000, 'Zpbaryonic2017_29': 1015000, 'Zpbaryonic2017_28': 933000, 'Zpbaryonic2017_41': 891000, 'Zpbaryonic2017_40': 1046000, 'Zpbaryonic2017_25': 1003000, 'Zpbaryonic2017_24': 1000000, 'Zpbaryonic2017_27': 895000, 'Zpbaryonic2017_26': 949000, 'Zpbaryonic2017_21': 955000, 'Zpbaryonic2017_20': 986000, 'Zpbaryonic2017_23': 1044000, 'Zpbaryonic2017_22': 1006000, 'Zpbaryonic2017_14': 968000, 'Zpbaryonic2017_15': 900000, 'Zpbaryonic2017_16': 902000, 'Zpbaryonic2017_17': 917000, 'Zpbaryonic2017_10': 937000, 'Zpbaryonic2017_11': 1039000, 'Zpbaryonic2017_12': 1002000, 'Zpbaryonic2017_13': 996000, 'Zpbaryonic2017_18': 947000, 'Zpbaryonic2017_19': 957000, 'Zpbaryonic2017_38': 997000, 'Zpbaryonic2017_39': 930000, 'Zpbaryonic2017_36': 944000, 'Zpbaryonic2017_37': 994000, 'Zpbaryonic2017_34': 1031000, 'Zpbaryonic2017_35': 989000, 'Zpbaryonic2017_32': 995000, 'Zpbaryonic2017_33': 993000, 'Zpbaryonic2017_30': 939000, 'Zpbaryonic2017_31': 940000, 'Zpbaryonic2017_43': 933000, 'Zpbaryonic2017_42': 1027000}


c=ROOT.TCanvas("canvas","",0,0,1300,1200)
c.cd()


n = 0
x, y = array( 'd' ), array( 'd' )

tmp = []
for sample in zprime_ngen:
    name = sampleListDict[sample][1]
    #print name
    if name.split('_')[-1] != '1' : 
        continue
    xvalue = name.split('_')[1]
    xvalue = float(xvalue)
    xsec = float(xsex_mapping[sample])
    print xvalue, xsec
    tmp.append([xvalue, xsec])

tmp = sorted(tmp)
for a,b in tmp:
    print a, b
    x.append(a)
    y.append(b)
    n += 1


c.SetLogy()
gr = TGraph( n, x, y )
gr.SetLineColor( 2 )
gr.SetLineWidth( 4 )
gr.SetMarkerColor( 4 )
gr.SetMarkerStyle( 21 )
gr.SetMaximum(5)
gr.SetTitle( 'Zprime baryonic cross section' )
gr.GetXaxis().SetTitle( 'mass Zprime' )
gr.GetYaxis().SetTitle( 'cross section (pb)' )
gr.Draw( 'ACP' )
 
# TCanvas.Update() draws the frame, after which one can change it
c.Update()
#c.GetFrame().SetFillColor( 21 )
c.GetFrame().SetBorderSize( 12 )
c.Modified()
c.Update()
c.SaveAs('crosssection.png')

