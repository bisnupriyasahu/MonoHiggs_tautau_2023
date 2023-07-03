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
    # print "{} histograms in file {}".format(sampleName, len(keyList))
    hist_mapping = { }
    for hist in keyList:
        #if 'tot_TMass' not in hist and 'metPhi' not in hist and 'met' not in hist  : continue
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
        # print 'nEvents not found in ' "../files_initial/"+sampleName
        return 
    nGeneratedEvents = nEventsHisto.GetBinContent(1)
    weight, saveName= lumi.get_lumiweight(sampleName[:-11], nGeneratedEvents)
    
    hist_mapping =  getHistList(sampleName)
    for key in hist_mapping:
        #if "muPt" not in key: continue
        # print 'in file ', sampleName
        for histName in hist_mapping[key]:
            #if "_9" not in histName : continue
            tmpHist =  inFile.Get(histName)
            print('Integral for  ', histName , tmpHist.Integral())
            if tmpHist.Integral() != tmpHist.Integral() : 
                print("\t\t\t\t********* check this : "+histName)
    inFile.Close()

def make_files(sampleName = ""):
    inFile= ROOT.TFile("../files_initial/"+sampleName,"r")
    nEventsHisto = inFile.Get("nEvents")
    # if 'Zpbaryonic' in sampleName:
    #     nEventsHisto = inFile.Get("nEvents_ZpB")
    if not isinstance(nEventsHisto, ROOT.TH1F):
        # print 'nEvents not found in ' "../files_initial/"+sampleName
        return 
    nGeneratedEvents = nEventsHisto.GetBinContent(1)
    # if 'Zpbaryonic' in sampleName:
    #     nGeneratedEvents = nEventsHisto.Integral()
    # print "sample name = {} , ngen ={}".format(sampleName[:-11] , nGeneratedEvents)
    weight, saveName= lumi.get_lumiweight(sampleName[:-11], nGeneratedEvents)
    # print weight, saveName
    hist_mapping =  getHistList(sampleName)
    ## print hist_mapping
    for key in hist_mapping:
        outFile = ROOT.TFile("sample/"+sampleName[:-5]+'_'+key+'.root' ,  "UPDATE")
        ## print 'in file ', "sample/"+sampleName[:-5]+'_'+key+'.root'
        for histName in hist_mapping[key]:
            outFile.cd()
            tmpHist =  inFile.Get(histName)
            if not outFile.GetDirectory(histName):
                outFile.mkdir(histName)
            outFile.cd(histName)
            tmpHist.Scale(weight)
            tmpHist.Write(saveName+"_"+histName)
        outFile.Close()
    inFile.Close()

path = "../files_initial/"
f_list = listdir(path)
for infile in f_list:
    #check_integral(infile)
    if '.root' not in infile: continue
    
    make_files(infile)
    
