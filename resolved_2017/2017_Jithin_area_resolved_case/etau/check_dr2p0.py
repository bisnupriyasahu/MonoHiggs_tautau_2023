import ROOT
# from sys import path
# from sys import exit
# # import time
#from myPlotStyle import *
import argparse
from os import path, makedirs
from prettytable import PrettyTable
from math import sqrt
ROOT.gStyle.SetFrameLineWidth(1)
ROOT.gStyle.SetLineWidth(2)
ROOT.gStyle.SetOptStat(0)
ROOT.gROOT.SetBatch(True)
import csv
xsex_mapping = {
    
    'ZTTjet_inc' : 2.447677534 , 
    'ZTT1jet' : 0.785055866 , 
    'ZTT2jet' : 0.968954563 , 
    'ZTT3jet' : 0.552080344 , 
    'ZTT4jet' : 0.48914453 , 

    'MH3_200_MH4_100' : 3.628e-01 , 
    'MH3_200_MH4_150' : 3.209e-01 , 
    'MH3_300_MH4_100' : 2.892e+00 , 
    'MH3_300_MH4_150' : 1.596e+00 , 
    'MH3_400_MH4_100' : 1.352e+00 , 
    'MH3_400_MH4_150' : 9.943e-01 , 
    'MH3_400_MH4_200' : 5.997e-01 , 
    'MH3_400_MH4_250' : 2.301e-01 , 
    'MH3_500_MH4_150' : 5.070e-01 , 
    'MH3_500_MH4_200' : 3.709e-01 , 
    'MH3_500_MH4_250' : 2.375e-01 , 
    'MH3_500_MH4_300' : 1.295e-01 , 
    'MH3_600_MH4_100' : 3.778e-01 , 
    'MH3_600_MH4_150' : 2.981e-01 , 
    'MH3_600_MH4_200' : 2.313e-01 , 
    'MH3_600_MH4_250' : 1.657e-01 , 
    'MH3_600_MH4_300' : 1.160e-01 , 
    'MH3_600_MH4_350' : 7.739e-02 , 
    'MH3_600_MH4_400' : 4.035e-02 , 
    'MH3_600_MH4_500' : 5.494e-03 , 
    'MH3_700_MH4_250' : 1.084e-01 , 
    'MH3_700_MH4_300' : 8.360e-02 , 
    'MH3_700_MH4_350' : 6.513e-02 , 
    'MH3_700_MH4_400' : 4.227e-02 , 
    'MH3_800_MH4_250' : 7.091e-02 , 
    'MH3_800_MH4_300' : 5.730e-02 , 
    'MH3_800_MH4_350' : 4.830e-02 , 
    'MH3_800_MH4_500' : 1.604e-02 , 
    'MH3_900_MH4_300' : 3.757e-02 , 
    'MH3_900_MH4_350' : 3.359e-02 , 
    'MH3_900_MH4_400' : 2.559e-02 , 
    'MH3_900_MH4_500' : 1.432e-02 
}


def make_plot(signal_name= ""):
    if not path.exists('bkg/'+signal_name):
        return 
    inFile = ROOT.TFile('bkg/'+signal_name)
    signal_name = signal_name.replace(".root", "")
    hist_nom_0      = inFile.Get("deltaR_signal_0")
    hist_nom_1      = inFile.Get("deltaR_signal_1")

    nEventsHisto = inFile.Get("nEvents")
    nGeneratedEvents = nEventsHisto.GetBinContent(1)
    lumi_weight =  41520.0 * xsex_mapping[signal_name] / nGeneratedEvents
    hist_nom_0.Scale(lumi_weight)
    hist_nom_1.Scale(lumi_weight)
    
    dy_inc_file = ROOT.TFile('bkg/ZTTjet_inc.root')
    dy_1j_file = ROOT.TFile('bkg/ZTT1jet.root')
    dy_2j_file = ROOT.TFile('bkg/ZTT2jet.root')
    dy_3j_file = ROOT.TFile('bkg/ZTT3jet.root')
    dy_4j_file = ROOT.TFile('bkg/ZTT4jet.root')
    hist_dy_inc =  dy_inc_file.Get("deltaR_signal_0")
    hist_dy_1j =  dy_1j_file.Get("deltaR_signal_0")
    hist_dy_2j =  dy_2j_file.Get("deltaR_signal_0")
    hist_dy_3j =  dy_3j_file.Get("deltaR_signal_0")
    hist_dy_4j =  dy_4j_file.Get("deltaR_signal_0")
    hist_dy_inc.Scale(xsex_mapping['ZTTjet_inc'] )
    hist_dy_1j.Scale(xsex_mapping['ZTT1jet'] )
    hist_dy_2j.Scale(xsex_mapping['ZTT2jet'] )
    hist_dy_3j.Scale(xsex_mapping['ZTT3jet'] )
    hist_dy_4j.Scale(xsex_mapping['ZTT4jet'] )
    hist_dy_inc.Add(hist_dy_1j)
    hist_dy_inc.Add(hist_dy_2j)
    hist_dy_inc.Add(hist_dy_3j)
    hist_dy_inc.Add(hist_dy_4j)


    hist_dy_inc_1 =  dy_inc_file.Get("deltaR_signal_1")
    hist_dy_1j_1 =  dy_1j_file.Get("deltaR_signal_1")
    hist_dy_2j_1 =  dy_2j_file.Get("deltaR_signal_1")
    hist_dy_3j_1 =  dy_3j_file.Get("deltaR_signal_1")
    hist_dy_4j_1 =  dy_4j_file.Get("deltaR_signal_1")
    hist_dy_inc_1.Scale(xsex_mapping['ZTTjet_inc'] )
    hist_dy_1j_1.Scale(xsex_mapping['ZTT1jet'] )
    hist_dy_2j_1.Scale(xsex_mapping['ZTT2jet'] )
    hist_dy_3j_1.Scale(xsex_mapping['ZTT3jet'] )
    hist_dy_4j_1.Scale(xsex_mapping['ZTT4jet'] )
    hist_dy_inc_1.Add(hist_dy_1j_1)
    hist_dy_inc_1.Add(hist_dy_2j_1)
    hist_dy_inc_1.Add(hist_dy_3j_1)
    hist_dy_inc_1.Add(hist_dy_4j_1)
    
    
    print signal_name
    return [signal_name,
            round(hist_nom_0.Integral(), 3),
            round(hist_nom_1.Integral(), 3),
            round(100*(hist_nom_0.Integral()-hist_nom_1.Integral())/hist_nom_0.Integral(), 3) ,
            round(hist_dy_inc.Integral(), 3),
            round(hist_dy_inc_1.Integral(), 3),
            round(100*(hist_dy_inc.Integral()-hist_dy_inc_1.Integral())/ hist_dy_inc.Integral(), 3) ,
            round( hist_nom_0.Integral()/sqrt(hist_dy_inc.Integral()),3),
            round( hist_nom_1.Integral()/sqrt(hist_dy_inc_1.Integral()),3) ]  
    
if __name__=="__main__":
    signal_names = ["MH3_200_MH4_100.root",  "MH3_400_MH4_100.root",  "MH3_500_MH4_150.root",  "MH3_600_MH4_100.root",  "MH3_600_MH4_300.root",  "MH3_700_MH4_250.root",  "MH3_800_MH4_250.root",  "MH3_900_MH4_300.root",
                    "MH3_200_MH4_150.root",  "MH3_400_MH4_150.root",  "MH3_500_MH4_200.root",  "MH3_600_MH4_150.root",  "MH3_600_MH4_350.root",  "MH3_700_MH4_300.root",  "MH3_800_MH4_300.root",  "MH3_900_MH4_350.root",
                    "MH3_300_MH4_100.root",  "MH3_400_MH4_200.root",  "MH3_500_MH4_250.root",  "MH3_600_MH4_200.root",  "MH3_600_MH4_400.root",  "MH3_700_MH4_350.root",  "MH3_800_MH4_350.root",  "MH3_900_MH4_400.root",
                    "MH3_300_MH4_150.root",  "MH3_400_MH4_250.root",  "MH3_500_MH4_300.root",  "MH3_600_MH4_250.root",  "MH3_600_MH4_500.root",  "MH3_700_MH4_400.root",  "MH3_800_MH4_500.root",  "MH3_900_MH4_500.root"]
    f = open('dr_table.csv', 'w')
    writer = csv.writer(f)
    # write the header
    writer.writerow(['Signal Name' , 'Events without dr<2.0', 'Events with dr<2.0', 'signal percent loss', 'DY without dr<2.0', 'DY with dr<2.0', 'DY Percent loss', 'S/sqrt(B) without cut', 'S/sqrt(B) with cut'])
    

    for name in sorted(signal_names):
        writer.writerow( make_plot(name) )
    f.close()

