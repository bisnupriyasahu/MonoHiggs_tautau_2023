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
# from sys import path
# path.append("../../../MacrosAndScripts/")
# from myPlotStyle import *
ROOT.gStyle.SetFrameLineWidth(1)
ROOT.gStyle.SetLineWidth(2)
ROOT.gStyle.SetOptStat(0)

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

        
inFile_nominal= ROOT.TFile("f_mutau_initial.root","r")
inFile_up     = ROOT.TFile("f_mutau_up.root","r")
inFile_down   = ROOT.TFile("f_mutau_down.root","r")
#tot_TMass_9_dyll_JER_down
h_selected = "tot_TMass_full"
#HistSelected = OutFile.Get("tot_TMass")

def GetKeyNames( self, dir = "" ):
    self.cd(dir)
    return [key.GetName() for key in ROOT.gDirectory.GetListOfKeys()]
ROOT.TFile.GetKeyNames = GetKeyNames

def getHistList(inFile):
    keyList = inFile.GetKeyNames()
    #print "\nKeys in file:", keyList
    tmpList= []
    for tdir in keyList:
        #print('in DIRECTORY       ', tdir)
        histlist = inFile.GetKeyNames(tdir)
        #tmpList.append("    in "+tdir+"***************>")
        for hlist in histlist:
            if h_selected not in hlist:
                continue
            else:
                tmpList.append(hlist)

    return tmpList


print(getHistList(inFile_nominal))
print(getHistList(inFile_up))
print(getHistList(inFile_down))            


#         if ("Up" in hlist) or ("Down" in hlist) or (hlist in tmpList):
#             continue
#         else:
#             tmpList.append(hlist)
#     mylist = ['data_obs' ,'ZL' , 'embedded' , 'jetFakes']
#     #print "\n hist in ",tdir," :", histlist
#     for h in mylist:
#         tmpHist = OutFile.Get(tdir+'/'+h)
#         print h+" in "+ tdir +" ", tmpHist.Integral()
#         if h=='data_obs':
#             dataIntegral += tmpHist.Integral()
#             #drawHist(tmpHist, tdir)
#         elif h=='embedded':
#             embedded_integral += tmpHist.Integral()
            
# print '\n dataIntegral = ', dataIntegral
# print '\n embedded_integral = ', embedded_integral

# print tmpList
