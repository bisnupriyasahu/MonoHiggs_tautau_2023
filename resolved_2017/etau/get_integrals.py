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

mc_samples = []

        
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

def getHistList(inFile, channel):
    keyList = inFile.GetKeyNames()

    syst_mapping = {
        'CMS_JER' : ['ZTTjet', 'ZLLjet', 'TT', 'otherMC', 'STT', 'VVT'] ,
        'CMS_JES' : ['ZTTjet', 'ZLLjet', 'TT', 'otherMC', 'STT', 'VVT'] ,
        'CMS_Prefiring' : ['ZTTjet', 'ZLLjet', 'TT', 'otherMC', 'STT', 'VVT'] ,
        'CMS_eletautrg_2017' : ['ZTTjet', 'ZLLjet', 'TT', 'otherMC', 'STT', 'VVT'] ,
        'CMS_htt_boson_reso_met_Jet_2017' : ['ZTTjet', 'ZLLjet', 'TT', 'otherMC', 'STT', 'VVT'] ,
        'CMS_htt_boson_scale_met_Jet_2017' : ['ZTTjet', 'ZLLjet', 'TT', 'otherMC', 'STT', 'VVT'] ,
        'CMS_htt_dyShape' : ['ZTTjet', 'ZLLjet', 'TT', 'otherMC', 'STT', 'VVT'] ,
        'CMS_htt_ttbarShape' : ['ZTTjet', 'ZLLjet', 'TT', 'otherMC', 'STT', 'VVT'] ,
        'CMS_scale_e_Scale_2017' : ['ZTTjet', 'ZLLjet', 'TT', 'otherMC', 'STT', 'VVT'] ,
        'CMS_scale_efaket_1prong1pizero_barrel_2017' : ['ZTTjet', 'ZLLjet', 'TT', 'otherMC', 'STT', 'VVT'] ,
        'CMS_scale_efaket_1prong1pizero_endcap_2017' : ['ZTTjet', 'ZLLjet', 'TT', 'otherMC', 'STT', 'VVT'] ,
        'CMS_scale_efaket_1prong_barrel_2017' : ['ZTTjet', 'ZLLjet', 'TT', 'otherMC', 'STT', 'VVT'] ,
        'CMS_scale_efaket_1prong_endcap_2017' : ['ZTTjet', 'ZLLjet', 'TT', 'otherMC', 'STT', 'VVT'] ,
        'CMS_scale_met_unclustered_2017' : ['ZTTjet', 'ZLLjet', 'TT', 'otherMC', 'STT', 'VVT'] ,
        'CMS_scale_t_1prong1pizero_2017' : ['ZTTjet', 'ZLLjet', 'TT', 'otherMC', 'STT', 'VVT'] ,
        'CMS_scale_t_1prong_2017' : ['ZTTjet', 'ZLLjet', 'TT', 'otherMC', 'STT', 'VVT'] ,
        'CMS_scale_t_3prong1pizero_2017' : ['ZTTjet', 'ZLLjet', 'TT', 'otherMC', 'STT', 'VVT'] ,
        'CMS_scale_t_3prong_2017' : ['ZTTjet', 'ZLLjet', 'TT', 'otherMC', 'STT', 'VVT'] ,
        'CMS_scale_tautrg_1prong1pizero_2017' : ['ZTTjet', 'ZLLjet', 'TT', 'otherMC', 'STT', 'VVT'] ,
        'CMS_scale_tautrg_1prong_2017' : ['ZTTjet', 'ZLLjet', 'TT', 'otherMC', 'STT', 'VVT'] ,
        'CMS_scale_tautrg_3prong1pizero_2017' : ['ZTTjet', 'ZLLjet', 'TT', 'otherMC', 'STT', 'VVT'] ,
        'CMS_scale_tautrg_3prong_2017' : ['ZTTjet', 'ZLLjet', 'TT', 'otherMC', 'STT', 'VVT'] ,
        'CMS_singleeletrg_2017' : ['ZTTjet', 'ZLLjet', 'TT', 'otherMC', 'STT', 'VVT'] ,
        'CMS_tauideff_pt30to35_2017' : ['ZTTjet', 'ZLLjet', 'TT', 'otherMC', 'STT', 'VVT'] ,
        'CMS_tauideff_pt35to40_2017' : ['ZTTjet', 'ZLLjet', 'TT', 'otherMC', 'STT', 'VVT'] ,
        'CMS_tauideff_ptgt40_2017' : ['ZTTjet', 'ZLLjet', 'TT', 'otherMC', 'STT', 'VVT'] 
    }
    histnames = ['elePt_5', 'tauPt_5', 'metLongXaxis_5', 'tot_TMass_full_5']
    for key in syst_mapping:
        print key 
        for hist in histnames:
            nominal = rootfile.Get(hist)
            up = rootfile.Get(hist + '_' + key +'_up')
            dn = rootfile.Get(hist + '_' + key +'_down')
            int_nominal = nominal.Integral()
            int_up = up.Integral()
            int_dn = dn.Integral()
            percent_up = str( round(100*(int_up - int_nominal)/int_nominal, 3) ) +' %'
            percent_dn = str( round(100*(int_dn - int_nominal)/int_nominal, 3) ) + '%'
            print "{} , systematic = {}".format(hist, key)
            t = PrettyTable(['down', 'nominal', 'up'])
            t.add_row([int_dn, int_nominal, int_up])
            t.add_row([percent_dn , 0 , percent_up])
            print t
            print '\n'

            
if __name__=="__main__":
    channel = 'etau'
    infile = 'DYJetsToLL_00_test'
    rootfile = ROOT.TFile(infile+".root","READ")
    getHistList(rootfile, channel)
    rootfile.Close()
