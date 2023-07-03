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
import os


def drawHist(hist, category):
    c=ROOT.TCanvas("canvas","",0,0,1300,1200)
    c.cd()
    try:
        hist.Draw()
        c.SaveAs("vismass_"+category+".png")
    except:
        print("troubel making "+"vismass_"+category+".png" )
    c.Clear()
    c.Close()

        

def checkHistogram(f, histogram):
    isthere=  f.GetListOfKeys().Contains(histogram)
    #print(isthere)
    return isthere


def GetKeyNames( self, dir = "" ):
    self.cd(dir)
    return [key.GetName() for key in ROOT.gDirectory.GetListOfKeys()]
ROOT.TFile.GetKeyNames = GetKeyNames

def getHistList(inFile):
    keyList = inFile.GetKeyNames()
    tmpList= []
    for tobj in keyList:
        #if "FF" in tobj: continue
        if "elePt_9" not in tobj: continue
        #print tobj
        # tmpHist = inFile.Get(tobj)
        # print tmpHist.Integral(), '\n'
        histname = tobj.split('elePt_9_')[-1]
        histname = histname.replace('_up', '')
        histname = histname.replace('_down', '')
        if histname not in tmpList:
            tmpList.append(histname)

    for h in tmpList:
        print h
    return 

file_list = os.listdir("../files_initial/")
for f in file_list:
    if 'MH3_200' not in f : continue
    print f
    inFile_initial= ROOT.TFile("../files_initial/"+f,"UPDATE")
    getHistList(inFile_initial)
    inFile_initial.Close()
