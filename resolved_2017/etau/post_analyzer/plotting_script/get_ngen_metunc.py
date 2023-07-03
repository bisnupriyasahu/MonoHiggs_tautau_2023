#!/usr/bin/env python
import ROOT
import re
from array import array
from sys import argv
import ROOT as Root
import csv
from math import sqrt
from math import pi


year = '2017/'
channel = ['etau' ] #, 'mutau', 'tautau']
MZp = ['100', '200', '500', '1000', '1500', '2000', '2500', '3000', '3500']
MChi = '1'
sin = 'Signal_2HDMa_gg_sinp_'
sinp35 = 'Signal_2HDMa_gg_sinp_0p35_tanb_'
tan150 = '_mXd_10_MH3_600_MH4_150'
tan250 = '_mXd_10_MH3_600_MH4_250'
tan1p0 = '_tanb_1p0_mXd_10_MH3_600_MH4_200'
theta = ['0p1', '0p2','0p3', '0p35', '0p4', '0p5', '0p6', '0p7', '0p8','0p9']
betas = ['0p5', '1p0', '1p5', '2p0', '4p0', '8p0', '20p0', '50p0']

#bkg = ['data_obs', 'TT', 'ZTTjet', 'STT', 'VVT', 'jetFakes', 'otherMC']
bkg = ['ZTTjet']
unc = ['CMS_htt_boson_scale_met_Jet_2017']
for ch in channel:
        inputFile_=ch+'.root'    
        #inputFile_='f_tot_TMass_new_initial.root'    
        OutFile=ROOT.TFile(inputFile_,"r")    
        OutFile.cd()
        print(inputFile_)
        print("######################background ##################")
        for bkgs in bkg:
                for uc in unc: 
                        #histo = ch+'/'+bkgs
                        histo = ch+'/'+bkgs
                        Data_hist    =OutFile.Get(histo)
                        print("%.7f " %Data_hist.Integral())
                        #print(bkgs)

        print("###################### UP ##################")
        for bkgs in bkg:
                for uc in unc:
                        #histo = ch+'/'+bkgs
                        histo = ch+'/'+bkgs+'_'+uc+'Up'
                        Data_hist    =OutFile.Get(histo)
                        print("%.7f " %Data_hist.Integral())
                        #print(bkgs)


                        
                        
        print("###################### Down ##################")
        for bkgs in bkg:
                for uc in unc:
                        #histo = ch+'/'+bkgs
                        histo = ch+'/'+bkgs+'_'+uc+'Down'
                        Data_hist    =OutFile.Get(histo)
                        print("%.7f " %Data_hist.Integral())
                        #print(bkgs)

        print("###################### avg ##################")
        for bkgs in bkg:
                for uc in unc:
                        histo = ch+'/'+bkgs
                        Data_hist    =OutFile.Get(histo)

                        histo_up = ch+'/'+bkgs+'_'+uc+'Up'                        
                        Data_hist_up    =OutFile.Get(histo_up)
                        
                        histo_down = ch+'/'+bkgs+'_'+uc+'Down'                        
                        Data_hist_down    =OutFile.Get(histo_down)
                        
                        unc_up = (Data_hist_up.Integral() - Data_hist.Integral())/Data_hist.Integral()
                        unc_down = (Data_hist.Integral() - Data_hist_down.Integral())/Data_hist.Integral()
   
                        unc_met = (unc_up + unc_down)/2 
                        print("%.7f " %unc_met)
                        #print(bkgs)
    

unc = ['CMS_scale_met_unclustered_2017']
for ch in channel:
        inputFile_=ch+'.root'    
        #inputFile_='f_tot_TMass_new_initial.root'    
        OutFile=ROOT.TFile(inputFile_,"r")    
        OutFile.cd()
        print(inputFile_)
        print("######################background ##################")
        for bkgs in bkg:
                for uc in unc: 
                        #histo = ch+'/'+bkgs
                        histo = ch+'/'+bkgs+'_'+uc+'Up'
                        Data_hist    =OutFile.Get(histo)
                        print(Data_hist)
                        #print(bkgs)

        print("###################### UP ##################")
        for bkgs in bkg:
                for uc in unc:
                        #histo = ch+'/'+bkgs
                        histo = ch+'/'+bkgs+'_'+uc+'Up'
                        Data_hist    =OutFile.Get(histo)
                        print("%.7f " %Data_hist.Integral())
                        #print(bkgs)

        print("###################### Down ##################")
        for bkgs in bkg:
                for uc in unc:
                        #histo = ch+'/'+bkgs
                        histo = ch+'/'+bkgs+'_'+uc+'Down'
                        Data_hist    =OutFile.Get(histo)
                        print("%.7f " %Data_hist.Integral())
                        #print(bkgs)

        print("###################### avg ##################")
        for bkgs in bkg:
                for uc in unc:
                        histo = ch+'/'+bkgs
                        Data_hist    =OutFile.Get(histo)

                        histo_up = ch+'/'+bkgs+'_'+uc+'Up'                        
                        Data_hist_up    =OutFile.Get(histo_up)
                        
                        histo_down = ch+'/'+bkgs+'_'+uc+'Down'                        
                        Data_hist_down    =OutFile.Get(histo_down)
                        
                        unc_up = (Data_hist_up.Integral() - Data_hist.Integral())/Data_hist.Integral()
                        unc_down = (Data_hist.Integral() - Data_hist_down.Integral())/Data_hist.Integral()
   
                        unc_met = (unc_up + unc_down)/2 
                        print("%.7f " %unc_met)
                        #print(bkgs)
    

unc = ['CMS_htt_boson_reso_met_Jet_2017']
for ch in channel:
        inputFile_=ch+'.root'    
        #inputFile_='f_tot_TMass_new_initial.root'    
        OutFile=ROOT.TFile(inputFile_,"r")    
        OutFile.cd()
        print(inputFile_)
        print("######################background ##################")
        for bkgs in bkg:
                for uc in unc: 
                        #histo = ch+'/'+bkgs
                        histo = ch+'/'+bkgs+'_'+uc+'Up'
                        Data_hist    =OutFile.Get(histo)
                        print(Data_hist)
                        #print(bkgs)

        print("###################### UP ##################")
        for bkgs in bkg:
                for uc in unc:
                        #histo = ch+'/'+bkgs
                        histo = ch+'/'+bkgs+'_'+uc+'Up'
                        Data_hist    =OutFile.Get(histo)
                        print("%.7f " %Data_hist.Integral())
                        #print(bkgs)

        print("###################### Down ##################")
        for bkgs in bkg:
                #print(bkgs)
                for uc in unc:
                        #histo = ch+'/'+bkgs
                        histo = ch+'/'+bkgs+'_'+uc+'Down'
                        Data_hist    =OutFile.Get(histo)
                        print("%.7f " %Data_hist.Integral())
                        #print(bkgs)

    
        print("###################### avg ##################")
        for bkgs in bkg:
                for uc in unc:
                        histo = ch+'/'+bkgs
                        Data_hist    =OutFile.Get(histo)

                        histo_up = ch+'/'+bkgs+'_'+uc+'Up'                        
                        Data_hist_up    =OutFile.Get(histo_up)
                        
                        histo_down = ch+'/'+bkgs+'_'+uc+'Down'                        
                        Data_hist_down    =OutFile.Get(histo_down)
                        
                        unc_up = (Data_hist_up.Integral() - Data_hist.Integral())/Data_hist.Integral()
                        unc_down = (Data_hist.Integral() - Data_hist_down.Integral())/Data_hist.Integral()
   
                        unc_met = (unc_up + unc_down)/2 
                        print("%.7f " %unc_met)
                        #print(bkgs)
