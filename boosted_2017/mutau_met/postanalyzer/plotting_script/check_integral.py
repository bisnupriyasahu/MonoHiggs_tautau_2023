#!/usr/bin/env python
import ROOT
import re
from array import array
import sys
import csv
from math import sqrt
from math import pi
import datetime
import argparse


mc_samples = ['jetFakes', 'ZTTjet', 'ZLLjet', 'TT' , 'otherMC' , 'STT', 'VVT']

signal_samples=['2HDMa_bb_sinp_0p1_tanb_1p0_mXd_10_MH3_600_MH4_200', '2HDMa_bb_sinp_0p2_tanb_1p0_mXd_10_MH3_600_MH4_200', '2HDMa_bb_sinp_0p35_tanb_0p5_mXd_10_MH3_600_MH4_150', '2HDMa_bb_sinp_0p35_tanb_0p5_mXd_10_MH3_600_MH4_250', '2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_1000_MH4_150', '2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_1000_MH4_350', '2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_1200_MH4_150', '2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_1200_MH4_250', '2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_1200_MH4_350', '2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_1600_MH4_150', '2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_1600_MH4_250', '2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_1600_MH4_350', '2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_200_MH4_150', '2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_400_MH4_150', '2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_400_MH4_250', '2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_600_MH4_150', '2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_600_MH4_250', '2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_600_MH4_350', '2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_800_MH4_250', '2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_800_MH4_350', '2HDMa_bb_sinp_0p35_tanb_1p5_mXd_10_MH3_600_MH4_150', '2HDMa_bb_sinp_0p35_tanb_1p5_mXd_10_MH3_600_MH4_250', '2HDMa_bb_sinp_0p35_tanb_20p0_mXd_10_MH3_600_MH4_150', '2HDMa_bb_sinp_0p35_tanb_20p0_mXd_10_MH3_600_MH4_250', '2HDMa_bb_sinp_0p35_tanb_2p0_mXd_10_MH3_600_MH4_150', '2HDMa_bb_sinp_0p35_tanb_2p0_mXd_10_MH3_600_MH4_250', '2HDMa_bb_sinp_0p35_tanb_4p0_mXd_10_MH3_600_MH4_150', '2HDMa_bb_sinp_0p35_tanb_4p0_mXd_10_MH3_600_MH4_250', '2HDMa_bb_sinp_0p35_tanb_50p0_mXd_10_MH3_600_MH4_150', '2HDMa_bb_sinp_0p35_tanb_50p0_mXd_10_MH3_600_MH4_250', '2HDMa_bb_sinp_0p35_tanb_8p0_mXd_10_MH3_600_MH4_150', '2HDMa_bb_sinp_0p35_tanb_8p0_mXd_10_MH3_600_MH4_250', '2HDMa_bb_sinp_0p3_tanb_1p0_mXd_10_MH3_600_MH4_200', '2HDMa_bb_sinp_0p4_tanb_1p0_mXd_10_MH3_600_MH4_200', '2HDMa_bb_sinp_0p6_tanb_1p0_mXd_10_MH3_600_MH4_200', '2HDMa_bb_sinp_0p7_tanb_1p0_mXd_10_MH3_600_MH4_200', '2HDMa_bb_sinp_0p8_tanb_1p0_mXd_10_MH3_600_MH4_200', '2HDMa_bb_sinp_0p9_tanb_1p0_mXd_10_MH3_600_MH4_200', '2HDMa_gg_sinp_0p1_tanb_1p0_mXd_10_MH3_600_MH4_200', '2HDMa_gg_sinp_0p2_tanb_1p0_mXd_10_MH3_600_MH4_200', '2HDMa_gg_sinp_0p35_tanb_0p5_mXd_10_MH3_600_MH4_150', '2HDMa_gg_sinp_0p35_tanb_0p5_mXd_10_MH3_600_MH4_250', '2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_1000_MH4_150', '2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_1000_MH4_250', '2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_1000_MH4_350', '2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_1200_MH4_150', '2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_1200_MH4_250', '2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_1200_MH4_350', '2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_1600_MH4_150', '2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_1600_MH4_250', '2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_1600_MH4_350', '2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_800_MH4_150', '2HDMa_gg_sinp_0p35_tanb_1p5_mXd_10_MH3_600_MH4_150', '2HDMa_gg_sinp_0p35_tanb_1p5_mXd_10_MH3_600_MH4_250', '2HDMa_gg_sinp_0p35_tanb_20p0_mXd_10_MH3_600_MH4_150', '2HDMa_gg_sinp_0p35_tanb_20p0_mXd_10_MH3_600_MH4_250', '2HDMa_gg_sinp_0p35_tanb_2p0_mXd_10_MH3_600_MH4_150', '2HDMa_gg_sinp_0p35_tanb_2p0_mXd_10_MH3_600_MH4_250', '2HDMa_gg_sinp_0p35_tanb_4p0_mXd_10_MH3_600_MH4_150', '2HDMa_gg_sinp_0p35_tanb_4p0_mXd_10_MH3_600_MH4_250', '2HDMa_gg_sinp_0p35_tanb_50p0_mXd_10_MH3_600_MH4_150', '2HDMa_gg_sinp_0p35_tanb_50p0_mXd_10_MH3_600_MH4_250', '2HDMa_gg_sinp_0p35_tanb_8p0_mXd_10_MH3_600_MH4_150', '2HDMa_gg_sinp_0p35_tanb_8p0_mXd_10_MH3_600_MH4_250', '2HDMa_gg_sinp_0p3_tanb_1p0_mXd_10_MH3_600_MH4_200', '2HDMa_gg_sinp_0p4_tanb_1p0_mXd_10_MH3_600_MH4_200', '2HDMa_gg_sinp_0p5_tanb_1p0_mXd_10_MH3_600_MH4_200', '2HDMa_gg_sinp_0p6_tanb_1p0_mXd_10_MH3_600_MH4_200', '2HDMa_gg_sinp_0p7_tanb_1p0_mXd_10_MH3_600_MH4_200', '2HDMa_gg_sinp_0p8_tanb_1p0_mXd_10_MH3_600_MH4_200', '2HDMa_gg_sinp_0p9_tanb_1p0_mXd_10_MH3_600_MH4_200', '2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_200_MH4_100', '2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_200_MH4_150', '2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_300_MH4_100', '2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_300_MH4_150', '2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_400_MH4_100', '2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_400_MH4_150', '2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_400_MH4_200', '2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_400_MH4_250', '2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_500_MH4_150', '2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_500_MH4_200', '2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_500_MH4_250', '2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_500_MH4_300', '2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_600_MH4_100', '2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_600_MH4_150', '2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_600_MH4_200', '2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_600_MH4_250', '2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_600_MH4_300', '2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_600_MH4_350', '2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_600_MH4_400', '2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_600_MH4_500', '2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_700_MH4_250', '2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_700_MH4_300', '2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_700_MH4_350', '2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_700_MH4_400', '2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_800_MH4_250', '2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_800_MH4_300', '2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_800_MH4_350', '2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_800_MH4_500', '2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_900_MH4_300', '2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_900_MH4_350', '2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_900_MH4_400', '2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_900_MH4_500']

# signal_samples=['MH3_200_MH4_100', 'MH3_200_MH4_150', 'MH3_300_MH4_100', 'MH3_300_MH4_150', 'MH3_400_MH4_100', 'MH3_400_MH4_150', 'MH3_400_MH4_200', 'MH3_400_MH4_250', 'MH3_500_MH4_150', 'MH3_500_MH4_200', 'MH3_500_MH4_250', 'MH3_500_MH4_300', 'MH3_600_MH4_100', 'MH3_600_MH4_150', 'MH3_600_MH4_200', 'MH3_600_MH4_250', 'MH3_600_MH4_300', 'MH3_600_MH4_350', 'MH3_600_MH4_400', 'MH3_600_MH4_500', 'MH3_700_MH4_250', 'MH3_700_MH4_300', 'MH3_700_MH4_350', 'MH3_700_MH4_400', 'MH3_800_MH4_250', 'MH3_800_MH4_300', 'MH3_800_MH4_350', 'MH3_800_MH4_500', 'MH3_900_MH4_300', 'MH3_900_MH4_350', 'MH3_900_MH4_400', 'MH3_900_MH4_500']
zprime_samples= ['MZp_1000_MChi_100', 'MZp_1000_MChi_1', 'MZp_1000_MChi_200', 'MZp_1000_MChi_400', 'MZp_1000_MChi_600', 'MZp_1000_MChi_800', 'MZp_100_MChi_1', 'MZp_100_MChi_50', 'MZp_1500_MChi_100', 'MZp_1500_MChi_1', 'MZp_1500_MChi_200', 'MZp_1500_MChi_400', 'MZp_1500_MChi_600', 'MZp_1500_MChi_800', 'MZp_2000_MChi_100', 'MZp_2000_MChi_1', 'MZp_2000_MChi_200', 'MZp_2000_MChi_400', 'MZp_2000_MChi_600', 'MZp_2000_MChi_800', 'MZp_200_MChi_100', 'MZp_200_MChi_150', 'MZp_200_MChi_1', 'MZp_200_MChi_50', 'MZp_2500_MChi_100', 'MZp_2500_MChi_1', 'MZp_2500_MChi_200', 'MZp_2500_MChi_400', 'MZp_2500_MChi_600', 'MZp_2500_MChi_800', 'MZp_3000_MChi_100', 'MZp_3000_MChi_1', 'MZp_3000_MChi_200', 'MZp_300_MChi_150', 'MZp_3500_MChi_100', 'MZp_3500_MChi_1', 'MZp_350_MChi_50', 'MZp_500_MChi_100', 'MZp_500_MChi_1', 'MZp_500_MChi_200', 'MZp_500_MChi_400', 'MZp_650_MChi_50', 'MZp_800_MChi_50']

def GetKeyNames( self, dir = "" ):
    self.cd(dir)
    return [key.GetName() for key in ROOT.gDirectory.GetListOfKeys()]
ROOT.TFile.GetKeyNames = GetKeyNames

def getHistList(inFile):

    tdir = 'mutau'
    keyList = inFile.GetKeyNames(tdir)
    for signal in signal_samples:
        signalhist = inFile.Get(tdir+'/'+signal)
        print signal, signalhist.Integral()
    for signal in zprime_samples:
        signalhist = inFile.Get(tdir+'/'+signal)
        print signal, signalhist.Integral()            
    for mc in mc_samples:
        signalhist = inFile.Get(tdir+'/'+mc)
        print mc, signalhist.Integral()

if __name__=="__main__":
    
    fname = 'mutau.root'
    rootfile = ROOT.TFile(fname,"READ")
    getHistList(rootfile)
    rootfile.Close()
