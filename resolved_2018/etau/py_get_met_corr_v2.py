import ROOT
from myPlotStyle import *
import argparse

ROOT.gStyle.SetFrameLineWidth(1)
ROOT.gStyle.SetLineWidth(2)
ROOT.gStyle.SetOptStat(0)


saved_string = [
"""
 xi = 1 yi = 1 average = 0.054140 |
 xi = 1 yi = 2 average = 0.061689 |
 xi = 1 yi = 3 average = 0.072893 |
 xi = 1 yi = 4 average = 0.076196 |
 xi = 1 yi = 5 average = 0.080510 |
 xi = 1 yi = 6 average = 0.119646 |
 xi = 2 yi = 1 average = 0.065345 |
 xi = 2 yi = 2 average = 0.064114 |
 xi = 2 yi = 3 average = 0.064524 |
 xi = 2 yi = 4 average = 0.069932 |
 xi = 2 yi = 5 average = 0.071395 |
 xi = 2 yi = 6 average = 0.061381 |
 xi = 3 yi = 1 average = 0.055967 |
 xi = 3 yi = 2 average = 0.053866 |
 xi = 3 yi = 3 average = 0.058451 |
 xi = 3 yi = 4 average = 0.060135 |
 xi = 3 yi = 5 average = 0.063190 |
 xi = 3 yi = 6 average = 0.057409 |
""",
"""
 xi = 1 yi = 1 average = 0.053854 |
 xi = 1 yi = 2 average = 0.062630 |
 xi = 1 yi = 3 average = 0.069733 |
 xi = 1 yi = 4 average = 0.074342 |
 xi = 1 yi = 5 average = 0.074476 |
 xi = 1 yi = 6 average = 0.119212 |
 xi = 2 yi = 1 average = 0.065059 |
 xi = 2 yi = 2 average = 0.058339 |
 xi = 2 yi = 3 average = 0.064165 |
 xi = 2 yi = 4 average = 0.068783 |
 xi = 2 yi = 5 average = 0.072627 |
 xi = 2 yi = 6 average = 0.063718 |
 xi = 3 yi = 1 average = 0.053188 |
 xi = 3 yi = 2 average = 0.053192 |
 xi = 3 yi = 3 average = 0.059952 |
 xi = 3 yi = 4 average = 0.063658 |
 xi = 3 yi = 5 average = 0.058375 |
 xi = 3 yi = 6 average = 0.057548 |
""",
"""
 xi = 1 yi = 1 average = 0.055316 |
 xi = 1 yi = 2 average = 0.057557 |
 xi = 1 yi = 3 average = 0.062913 |
 xi = 1 yi = 4 average = 0.082568 |
 xi = 1 yi = 5 average = 0.079512 |
 xi = 1 yi = 6 average = 0.139855 |
 xi = 2 yi = 1 average = 0.065129 |
 xi = 2 yi = 2 average = 0.076938 |
 xi = 2 yi = 3 average = 0.066012 |
 xi = 2 yi = 4 average = 0.069675 |
 xi = 2 yi = 5 average = 0.066814 |
 xi = 2 yi = 6 average = 0.066457 |
 xi = 3 yi = 1 average = 0.055076 |
 xi = 3 yi = 2 average = 0.050434 |
 xi = 3 yi = 3 average = 0.061531 |
 xi = 3 yi = 4 average = 0.063169 |
 xi = 3 yi = 5 average = 0.061981 |
 xi = 3 yi = 6 average = 0.054929 |
""",
"""
 xi = 1 yi = 1 average = 0.053985 |
 xi = 1 yi = 2 average = 0.059752 |
 xi = 1 yi = 3 average = 0.076647 |
 xi = 1 yi = 4 average = 0.078908 |
 xi = 1 yi = 5 average = 0.079510 |
 xi = 1 yi = 6 average = 0.134818 |
 xi = 2 yi = 1 average = 0.068171 |
 xi = 2 yi = 2 average = 0.067210 |
 xi = 2 yi = 3 average = 0.063391 |
 xi = 2 yi = 4 average = 0.066443 |
 xi = 2 yi = 5 average = 0.067982 |
 xi = 2 yi = 6 average = 0.065683 |
 xi = 3 yi = 1 average = 0.052755 |
 xi = 3 yi = 2 average = 0.056063 |
 xi = 3 yi = 3 average = 0.060332 |
 xi = 3 yi = 4 average = 0.062093 |
 xi = 3 yi = 5 average = 0.085335 |
 xi = 3 yi = 6 average = 0.058961 |
""",
"""
 xi = 1 yi = 1 average = 0.053789 |
 xi = 1 yi = 2 average = 0.062186 |
 xi = 1 yi = 3 average = 0.070795 |
 xi = 1 yi = 4 average = 0.080052 |
 xi = 1 yi = 5 average = 0.076039 |
 xi = 1 yi = 6 average = 0.149450 |
 xi = 2 yi = 1 average = 0.064036 |
 xi = 2 yi = 2 average = 0.068166 |
 xi = 2 yi = 3 average = 0.065114 |
 xi = 2 yi = 4 average = 0.070867 |
 xi = 2 yi = 5 average = 0.068418 |
 xi = 2 yi = 6 average = 0.067652 |
 xi = 3 yi = 1 average = 0.049166 |
 xi = 3 yi = 2 average = 0.059029 |
 xi = 3 yi = 3 average = 0.064354 |
 xi = 3 yi = 4 average = 0.061286 |
 xi = 3 yi = 5 average = 0.065583 |
 xi = 3 yi = 6 average = 0.057996 |
""",
"""
 xi = 1 yi = 1 average = 0.053880 |
 xi = 1 yi = 2 average = 0.059764 |
 xi = 1 yi = 3 average = 0.064817 |
 xi = 1 yi = 4 average = 0.080406 |
 xi = 1 yi = 5 average = 0.086168 |
 xi = 1 yi = 6 average = 0.129778 |
 xi = 2 yi = 1 average = 0.064363 |
 xi = 2 yi = 2 average = 0.058875 |
 xi = 2 yi = 3 average = 0.061182 |
 xi = 2 yi = 4 average = 0.067490 |
 xi = 2 yi = 5 average = 0.072099 |
 xi = 2 yi = 6 average = 0.062562 |
 xi = 3 yi = 1 average = 0.050391 |
 xi = 3 yi = 2 average = 0.060188 |
 xi = 3 yi = 3 average = 0.088432 |
 xi = 3 yi = 4 average = 0.059891 |
 xi = 3 yi = 5 average = 0.062284 |
 xi = 3 yi = 6 average = 0.056331 |
"""
]

def add_met_sys_type():
    lowX = 0.1
    lowY = 0.8
    met_sys  = ROOT.TPaveText(lowX, lowY, lowX+0.6, lowY+0.2, "NDC")
    met_sys.SetBorderSize(   0 )
    met_sys.SetFillStyle(    0 )
    met_sys.SetTextAlign(   32 )#12
    met_sys.SetTextColor(    1 )
    met_sys.SetTextSize(0.04)
    met_sys.SetTextFont (   42 )
    met_sys.AddText("Response                      Resolution")
    return met_sys

def get_entries():
    mapping = {}
    for entry in saved_string:
        lines = entry.split('|')
        for line in lines:
            line = line.split()
            if len(line)==0: continue
            #print(line)
            xi = int(line[2])-1
            yi = int(line[5])-1
            weight = float(line[-1])
            if (xi,yi) not in mapping:
                mapping[(xi, yi)] = [weight]
            else:
                mapping[(xi, yi)].append(weight)
    res = []        
    for k, v in mapping.items():
        res.append( [k, sum(v)/len(v)] )
        print k, sum(v)/len(v)
    return res
    
def get_plot():
    c.cd()
    hist = ROOT.TH2D("hist", "hist", 3, 0,3, 6, 0, 6)

    mapping = get_entries()
    for line in mapping:
        xi = int(line[0][0])
        yi = int(line[0][1])
        weight = float(line[1])
        hist.Fill(xi, yi, round(weight,3))
        
        
    c.GetPad(0).SetRightMargin(0.15)
    c.GetPad(0).SetLeftMargin(0.15)
    hist.GetXaxis().SetBinLabel(1,"0 jet")
    hist.GetXaxis().SetBinLabel(2,"1 jet")
    hist.GetXaxis().SetBinLabel(3,">= 2 jet")
    hist.GetYaxis().SetBinLabel(1,"<10")
    hist.GetYaxis().SetBinLabel(2,"10-20")
    hist.GetYaxis().SetBinLabel(3,"20-30")
    hist.GetYaxis().SetBinLabel(4,"30-40")
    hist.GetYaxis().SetBinLabel(5,"40-50")
    hist.GetYaxis().SetBinLabel(6,">=50")
    hist.SetTitle("Met corrections 2018")
    hist.GetXaxis().SetTitle("number of jets")
    hist.GetYaxis().SetTitle("Z boson pT [GeV]")
    

    hist.Draw("text colz")
    c.Modified()
    c.SaveAs("met_recoil_corrections_2018_v2.png")

if __name__=="__main__":
    #get_entries()
    get_plot()
    c.Close()


