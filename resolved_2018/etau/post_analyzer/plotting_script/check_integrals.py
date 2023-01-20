#!/usr/bin/env python
import ROOT
import re
from array import array
import sys
import csv
from os import listdir
from math import sqrt
from math import pi
import datetime
import argparse
import lumi_weights_2018 as lumi
import pandas as pd

def GetKeyNames( self, dir = "" ):
    self.cd(dir)
    return [key.GetName() for key in ROOT.gDirectory.GetListOfKeys()]
ROOT.TFile.GetKeyNames = GetKeyNames

def getSaveName(histName):
    position = re.search(r"\d", histName)
    saveName = ""
    if position:
        saveName =  histName[: position.start()-1] if histName[position.start()-1]=="_" else histName[: position.start()+1]
    else:
        saveName =  histName
    if 'up' in histName:
        saveName += "_up"
    elif 'down' in histName:
        saveName += "_down"
    return saveName

def getHistList(sampleName = ""):
    inFile= ROOT.TFile("../files_initial/"+sampleName,"r")
    keyList = inFile.GetKeyNames()
    #print "{} histograms in file {}".format(sampleName, len(keyList))
    hist_mapping = { }
    for hist in keyList:
        saveName = getSaveName(hist)
        if saveName in hist_mapping:
            hist_mapping[saveName].append(hist)
        else:
            hist_mapping[saveName] = [hist]
    
    inFile.Close()
    return hist_mapping
    
def check_integral(sampleName = ""):
    inFile= ROOT.TFile("../files_initial/"+sampleName,"r")
    nEventsHisto = inFile.Get("nEvents")
    if not isinstance(nEventsHisto, ROOT.TH1F):
        #print 'nEvents not found in ' "../files_initial/"+sampleName
        return 
    nGeneratedEvents = nEventsHisto.GetBinContent(1)
    weight, saveName= lumi.get_lumiweight(sampleName[:-11], nGeneratedEvents)
    
    hist_mapping =  getHistList(sampleName)
    for key in hist_mapping:
        if "muPt" not in key: continue
        #print 'in file ', sampleName
        for histName in hist_mapping[key]:
            #if "_9" not in histName : continue
            tmpHist =  inFile.Get(histName)
            print 'Integral for  ', histName , tmpHist.Integral()
            if tmpHist.Integral() != tmpHist.Integral() : 
                print "\t\t\t\t********* check this : "+histName
    inFile.Close()

def make_files(sampleName = ""):

    
    inFile= ROOT.TFile("../files_initial/"+sampleName,"r")
    nEventsHisto = inFile.Get("nEvents")
    nFInal = inFile.Get("tot_TMass_full_9b")
    if 'Zpbaryonic' in sampleName:
        nEventsHisto = inFile.Get("nEvents_ZpB")
    if not isinstance(nEventsHisto, ROOT.TH1F):
        print 'nEvents not found in ' "../files_initial/"+sampleName
        return 
    nGeneratedEvents = nEventsHisto.GetBinContent(1)
    if 'Zpbaryonic' in sampleName:
        nGeneratedEvents = nEventsHisto.Integral()
    final_events = nFInal.Integral()
    ratio_events = final_events/nGeneratedEvents
    #print "sample name = {} , ngen ={} , final events = {}  , selection/final ={}".format(sampleName[:-11] , nGeneratedEvents, final_events, ratio_events )
    weight, saveName= lumi.get_lumiweight(sampleName[:-11], nGeneratedEvents)
    #print weight, saveName
    #print 
    inFile.Close()
    return sampleName[:-11], saveName, lumi.xsex_mapping[sampleName[:-11]], weight, nGeneratedEvents, round(final_events,3), round(ratio_events,3)



path = "../files_initial/"
f_list = listdir(path)
df = pd.DataFrame(columns=['name', 'saved_name', 'xsec', 'weight' , 'ngen', 'final_events', 'final_over_ngen'])

i = 1
for infile in f_list:
    #check_integral(infile)
    if '.root' not in infile: continue
    if 'Zpbaryonic' not in infile: continue
    rv = make_files(infile) 
    values_to_add = {'name':rv[0], 'saved_name':rv[1], 'xsec':rv[2], 'weight':rv[3] , 'ngen':rv[4], 'final_events':rv[5], 'final_over_ngen':rv[6]}
    row_to_add = pd.Series(values_to_add, name=str(i) )
    i += 1
    df = df.append(row_to_add)


#print df

df['lumi_pb'] = 59700
df['expected_weight'] = df['lumi_pb']* df['xsec']*0.06 / df['ngen']
df['weight_diff'] = df['expected_weight']/df['weight']
#print df['name']
df['mZp'] = df['saved_name'].apply(lambda x : x.split('_')[1])
df['mChi'] = df['saved_name'].apply(lambda x : x.split('_')[-1])

df['mZp'] = pd.to_numeric(df['mZp'])
df['mChi'] = pd.to_numeric(df['mChi'])
#df.to_csv('zprime_xsec.csv')

print df[df['mChi']==1].sort_values(by=['mZp'])
