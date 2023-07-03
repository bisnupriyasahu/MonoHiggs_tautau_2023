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

from prettytable import PrettyTable

# from sys import path
# path.append("../../../MacrosAndScripts/")
# from myPlotStyle import *
ROOT.gStyle.SetFrameLineWidth(1)
ROOT.gStyle.SetLineWidth(2)
ROOT.gStyle.SetOptStat(0)

mc_samples = ['jetFakes', 'ZTTjet', 'ZLLjet', 'TT' , 'otherMC' , 'STT', 'VVT']
signal_samples=['MH3_200_MH4_100', 'MH3_200_MH4_150', 'MH3_300_MH4_100', 'MH3_300_MH4_150', 'MH3_400_MH4_100', 'MH3_400_MH4_150', 'MH3_400_MH4_200', 'MH3_400_MH4_250', 'MH3_500_MH4_150', 'MH3_500_MH4_200', 'MH3_500_MH4_250', 'MH3_500_MH4_300', 'MH3_600_MH4_100', 'MH3_600_MH4_150', 'MH3_600_MH4_200', 'MH3_600_MH4_250', 'MH3_600_MH4_300', 'MH3_600_MH4_350', 'MH3_600_MH4_400', 'MH3_600_MH4_500', 'MH3_700_MH4_250', 'MH3_700_MH4_300', 'MH3_700_MH4_350', 'MH3_700_MH4_400', 'MH3_800_MH4_250', 'MH3_800_MH4_300', 'MH3_800_MH4_350', 'MH3_800_MH4_500', 'MH3_900_MH4_300', 'MH3_900_MH4_350', 'MH3_900_MH4_400', 'MH3_900_MH4_500']


channelName = 'mutau'
outFile =  ROOT.TFile(channelName+'.root',"UPDATE")
        
def checkHistogram(f, histogram):
    isthere=  f.GetListOfKeys().Contains(histogram)
    #print(isthere)
    return isthere


def GetKeyNames( self, dir = "" ):
    self.cd(dir)
    return [key.GetName() for key in ROOT.gDirectory.GetListOfKeys()]
ROOT.TFile.GetKeyNames = GetKeyNames

def getLabel(name):
    label = name
    label = label.replace('tot_TMass_full_9', '')
    label = label.replace('_down1', 'Down')
    label = label.replace('_up1', 'Up')
    label = label.replace('_down', 'Down')
    label = label.replace('_up', 'Up')
    label = label.replace('_Down', 'Down')
    label = label.replace('_Up', 'Up')
    if '_fr' in label:
        label = label.replace('_fr', '')
    return label

def getHistList(inFile):
    keyList = inFile.GetKeyNames("mutau")

    syst_mapping = {}
    for thist in keyList:
        if 'MH3' in thist: continue;
        thist = thist.replace('Up', '')
        thist = thist.replace('Down', '')
        name_array = thist.split('_')
        if len(name_array)==1 or 'data' in name_array: continue
        mc_name = name_array[0]
        syst_name = '_'.join(name_array[1:])
        if syst_name not in syst_mapping:
            syst_mapping[syst_name] = [mc_name]
        elif mc_name not in syst_mapping[syst_name]:
            syst_mapping[syst_name].append(mc_name)

    for key, values in syst_mapping.items():
        for value in values:
            print "For {}  and systematic {}".format(value, key)
            nominal = rootfile.Get('mutau/'+ value)
            up = rootfile.Get('mutau/'+ value + '_' + key +'Up')
            dn = rootfile.Get('mutau/'+ value + '_' + key +'Down')
            int_nominal = nominal.Integral()
            int_up = up.Integral()
            int_dn = dn.Integral()
            percent_up = str( round(100*(int_up - int_nominal)/int_nominal, 3) ) +' %'
            percent_dn = str( round(100*(int_dn - int_nominal)/int_nominal, 3) ) + '%'
            t = PrettyTable(['down', 'nominal', 'up'])
            t.add_row([int_dn, int_nominal, int_up])
            t.add_row([percent_dn , 0 , percent_up])
            print t
            print '\n'

            
if __name__=="__main__":
    rootfile = ROOT.TFile("mutau.root","READ")
    getHistList(rootfile)
    rootfile.Close()
