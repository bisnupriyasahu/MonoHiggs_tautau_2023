#!/usr/bin/env python
import ROOT
from os import path, remove, getcwd
from array import array

mc_samples = ['jetFakes', 'ZTTjet', 'ZLLjet', 'TT' , 'otherMC' , 'STT', 'VVT']
# signal_samples=['MH3_200_MH4_100', 'MH3_200_MH4_150', 'MH3_300_MH4_100', 'MH3_300_MH4_150', 'MH3_400_MH4_100', 'MH3_400_MH4_150', 'MH3_400_MH4_200', 'MH3_400_MH4_250', 'MH3_500_MH4_150', 'MH3_500_MH4_200', 'MH3_500_MH4_250', 'MH3_500_MH4_300', 'MH3_600_MH4_100', 'MH3_600_MH4_150', 'MH3_600_MH4_200', 'MH3_600_MH4_250', 'MH3_600_MH4_300', 'MH3_600_MH4_350', 'MH3_600_MH4_400', 'MH3_600_MH4_500', 'MH3_700_MH4_250', 'MH3_700_MH4_300', 'MH3_700_MH4_350', 'MH3_700_MH4_400', 'MH3_800_MH4_250', 'MH3_800_MH4_300', 'MH3_800_MH4_350', 'MH3_800_MH4_500', 'MH3_900_MH4_300', 'MH3_900_MH4_350', 'MH3_900_MH4_400', 'MH3_900_MH4_500']
signal_samples=['Signal_2HDMa_bb_sinp_0p1_tanb_1p0_mXd_10_MH3_600_MH4_200', 'Signal_2HDMa_bb_sinp_0p2_tanb_1p0_mXd_10_MH3_600_MH4_200', 'Signal_2HDMa_bb_sinp_0p35_tanb_0p5_mXd_10_MH3_600_MH4_150', 'Signal_2HDMa_bb_sinp_0p35_tanb_0p5_mXd_10_MH3_600_MH4_250', 'Signal_2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_1000_MH4_150', 'Signal_2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_1000_MH4_350', 'Signal_2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_1200_MH4_150', 'Signal_2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_1200_MH4_250', 'Signal_2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_1200_MH4_350', 'Signal_2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_1600_MH4_150', 'Signal_2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_1600_MH4_250', 'Signal_2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_1600_MH4_350', 'Signal_2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_200_MH4_150', 'Signal_2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_400_MH4_150', 'Signal_2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_400_MH4_250', 'Signal_2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_600_MH4_150', 'Signal_2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_600_MH4_250', 'Signal_2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_600_MH4_350', 'Signal_2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_800_MH4_250', 'Signal_2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_800_MH4_350', 'Signal_2HDMa_bb_sinp_0p35_tanb_1p5_mXd_10_MH3_600_MH4_150', 'Signal_2HDMa_bb_sinp_0p35_tanb_1p5_mXd_10_MH3_600_MH4_250', 'Signal_2HDMa_bb_sinp_0p35_tanb_20p0_mXd_10_MH3_600_MH4_150', 'Signal_2HDMa_bb_sinp_0p35_tanb_20p0_mXd_10_MH3_600_MH4_250', 'Signal_2HDMa_bb_sinp_0p35_tanb_2p0_mXd_10_MH3_600_MH4_150', 'Signal_2HDMa_bb_sinp_0p35_tanb_2p0_mXd_10_MH3_600_MH4_250', 'Signal_2HDMa_bb_sinp_0p35_tanb_4p0_mXd_10_MH3_600_MH4_150', 'Signal_2HDMa_bb_sinp_0p35_tanb_4p0_mXd_10_MH3_600_MH4_250', 'Signal_2HDMa_bb_sinp_0p35_tanb_50p0_mXd_10_MH3_600_MH4_150', 'Signal_2HDMa_bb_sinp_0p35_tanb_50p0_mXd_10_MH3_600_MH4_250', 'Signal_2HDMa_bb_sinp_0p35_tanb_8p0_mXd_10_MH3_600_MH4_150', 'Signal_2HDMa_bb_sinp_0p35_tanb_8p0_mXd_10_MH3_600_MH4_250', 'Signal_2HDMa_bb_sinp_0p3_tanb_1p0_mXd_10_MH3_600_MH4_200', 'Signal_2HDMa_bb_sinp_0p4_tanb_1p0_mXd_10_MH3_600_MH4_200', 'Signal_2HDMa_bb_sinp_0p6_tanb_1p0_mXd_10_MH3_600_MH4_200', 'Signal_2HDMa_bb_sinp_0p7_tanb_1p0_mXd_10_MH3_600_MH4_200', 'Signal_2HDMa_bb_sinp_0p8_tanb_1p0_mXd_10_MH3_600_MH4_200', 'Signal_2HDMa_bb_sinp_0p9_tanb_1p0_mXd_10_MH3_600_MH4_200', 'Signal_2HDMa_gg_sinp_0p1_tanb_1p0_mXd_10_MH3_600_MH4_200', 'Signal_2HDMa_gg_sinp_0p2_tanb_1p0_mXd_10_MH3_600_MH4_200', 'Signal_2HDMa_gg_sinp_0p35_tanb_0p5_mXd_10_MH3_600_MH4_150', 'Signal_2HDMa_gg_sinp_0p35_tanb_0p5_mXd_10_MH3_600_MH4_250', 'Signal_2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_1000_MH4_150', 'Signal_2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_1000_MH4_250', 'Signal_2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_1000_MH4_350', 'Signal_2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_1200_MH4_150', 'Signal_2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_1200_MH4_250', 'Signal_2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_1200_MH4_350', 'Signal_2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_1600_MH4_150', 'Signal_2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_1600_MH4_250', 'Signal_2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_1600_MH4_350', 'Signal_2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_800_MH4_150', 'Signal_2HDMa_gg_sinp_0p35_tanb_1p5_mXd_10_MH3_600_MH4_150', 'Signal_2HDMa_gg_sinp_0p35_tanb_1p5_mXd_10_MH3_600_MH4_250', 'Signal_2HDMa_gg_sinp_0p35_tanb_20p0_mXd_10_MH3_600_MH4_150', 'Signal_2HDMa_gg_sinp_0p35_tanb_20p0_mXd_10_MH3_600_MH4_250', 'Signal_2HDMa_gg_sinp_0p35_tanb_2p0_mXd_10_MH3_600_MH4_150', 'Signal_2HDMa_gg_sinp_0p35_tanb_2p0_mXd_10_MH3_600_MH4_250', 'Signal_2HDMa_gg_sinp_0p35_tanb_4p0_mXd_10_MH3_600_MH4_150', 'Signal_2HDMa_gg_sinp_0p35_tanb_4p0_mXd_10_MH3_600_MH4_250', 'Signal_2HDMa_gg_sinp_0p35_tanb_50p0_mXd_10_MH3_600_MH4_150', 'Signal_2HDMa_gg_sinp_0p35_tanb_50p0_mXd_10_MH3_600_MH4_250', 'Signal_2HDMa_gg_sinp_0p35_tanb_8p0_mXd_10_MH3_600_MH4_150', 'Signal_2HDMa_gg_sinp_0p35_tanb_8p0_mXd_10_MH3_600_MH4_250', 'Signal_2HDMa_gg_sinp_0p3_tanb_1p0_mXd_10_MH3_600_MH4_200', 'Signal_2HDMa_gg_sinp_0p4_tanb_1p0_mXd_10_MH3_600_MH4_200', 'Signal_2HDMa_gg_sinp_0p5_tanb_1p0_mXd_10_MH3_600_MH4_200', 'Signal_2HDMa_gg_sinp_0p6_tanb_1p0_mXd_10_MH3_600_MH4_200', 'Signal_2HDMa_gg_sinp_0p7_tanb_1p0_mXd_10_MH3_600_MH4_200', 'Signal_2HDMa_gg_sinp_0p8_tanb_1p0_mXd_10_MH3_600_MH4_200', 'Signal_2HDMa_gg_sinp_0p9_tanb_1p0_mXd_10_MH3_600_MH4_200', 'Signal_2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_200_MH4_100', 'Signal_2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_200_MH4_150', 'Signal_2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_300_MH4_100', 'Signal_2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_300_MH4_150', 'Signal_2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_400_MH4_100', 'Signal_2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_400_MH4_150', 'Signal_2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_400_MH4_200', 'Signal_2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_400_MH4_250', 'Signal_2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_500_MH4_150', 'Signal_2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_500_MH4_200', 'Signal_2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_500_MH4_250', 'Signal_2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_500_MH4_300', 'Signal_2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_600_MH4_100', 'Signal_2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_600_MH4_150', 'Signal_2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_600_MH4_200', 'Signal_2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_600_MH4_250', 'Signal_2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_600_MH4_300', 'Signal_2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_600_MH4_350', 'Signal_2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_600_MH4_400', 'Signal_2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_600_MH4_500', 'Signal_2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_700_MH4_250', 'Signal_2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_700_MH4_300', 'Signal_2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_700_MH4_350', 'Signal_2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_700_MH4_400', 'Signal_2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_800_MH4_250', 'Signal_2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_800_MH4_300', 'Signal_2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_800_MH4_350', 'Signal_2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_800_MH4_500', 'Signal_2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_900_MH4_300', 'Signal_2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_900_MH4_350', 'Signal_2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_900_MH4_400', 'Signal_2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_900_MH4_500']

zprime_samples=['Signal_MZp_1000_MChi_100', 'Signal_MZp_1000_MChi_1', 'Signal_MZp_1000_MChi_200', 'Signal_MZp_1000_MChi_400', 'Signal_MZp_1000_MChi_600', 'Signal_MZp_1000_MChi_800', 'Signal_MZp_100_MChi_1', 'Signal_MZp_100_MChi_50', 'Signal_MZp_1500_MChi_100', 'Signal_MZp_1500_MChi_1', 'Signal_MZp_1500_MChi_200', 'Signal_MZp_1500_MChi_400', 'Signal_MZp_1500_MChi_600', 'Signal_MZp_1500_MChi_800', 'Signal_MZp_2000_MChi_100', 'Signal_MZp_2000_MChi_1', 'Signal_MZp_2000_MChi_200', 'Signal_MZp_2000_MChi_400', 'Signal_MZp_2000_MChi_600', 'Signal_MZp_2000_MChi_800', 'Signal_MZp_200_MChi_100', 'Signal_MZp_200_MChi_150', 'Signal_MZp_200_MChi_1', 'Signal_MZp_200_MChi_50', 'Signal_MZp_2500_MChi_100', 'Signal_MZp_2500_MChi_1', 'Signal_MZp_2500_MChi_200', 'Signal_MZp_2500_MChi_400', 'Signal_MZp_2500_MChi_600', 'Signal_MZp_2500_MChi_800', 'Signal_MZp_3000_MChi_100', 'Signal_MZp_3000_MChi_1', 'Signal_MZp_3000_MChi_200', 'Signal_MZp_300_MChi_150', 'Signal_MZp_3500_MChi_100', 'Signal_MZp_3500_MChi_1', 'Signal_MZp_350_MChi_50', 'Signal_MZp_500_MChi_100', 'Signal_MZp_500_MChi_1', 'Signal_MZp_500_MChi_200', 'Signal_MZp_500_MChi_400', 'Signal_MZp_650_MChi_50', 'Signal_MZp_800_MChi_50']


        
def checkHistogram(f, histogram):
    isthere=  f.GetListOfKeys().Contains(histogram)
    #print(isthere)
    return isthere


def GetKeyNames( self, dir = "" ):
    self.cd(dir)
    return [key.GetName() for key in ROOT.gDirectory.GetListOfKeys()]
ROOT.TFile.GetKeyNames = GetKeyNames

def getLabel(name, idx):
    label = name
    label = label.replace('tot_TMass_new_'+idx, '')
    label = label.replace('_down1', 'Down')
    label = label.replace('_up1', 'Up')
    label = label.replace('_down', 'Down')
    label = label.replace('_up', 'Up')
    label = label.replace('_Down', 'Down')
    label = label.replace('_Up', 'Up')
    if '_fr' in label:
        label = label.replace('_fr', '')
    return label

def getHistList(fname , channelName, idx):
    #channelName = 'etau'
    new_binning = array('d', [40, 100, 200, 300, 400, 2000])
    new_nbins = 5
    outFile =  ROOT.TFile(channelName+'.root',"UPDATE")
    inFile = ROOT.TFile(fname,"READ")
    keyList = inFile.GetKeyNames()
    #print "\nKeys in file:", keyList
    tmpList= []
    channel = channelName
    outFile.cd()
    if not outFile.GetDirectory(channel):
        outFile.mkdir(channel)
    outFile.cd(channel)

    for tdir in sorted(keyList):
        if 'initial' in fname and tdir!='tot_TMass_new_'+idx:
            continue
        elif ('up' in fname or 'down' in fname) and 'tot_TMass_new_'+idx+'_' not in tdir:
            continue
        #if 'tot_TMass_full' not in tdir : continue
        #if '_9' not in tdir: continue
        if "_dyll" in tdir: continue
        if tdir == 'tot_TMass_new_'+idx:
            data = inFile.Get(tdir+'/data_obs_'+tdir)
            data = data.Rebin(new_nbins,  'data_obs', new_binning ) # for custom binning
            data.SetName('data_obs')
            outFile.cd(channel)
            data.Write()

        for signal in signal_samples:
            if inFile.Get(tdir+'/'+signal+'_'+tdir) and '_fr' not in tdir:
                signalhist = inFile.Get(tdir+'/'+signal+'_'+tdir)
                signalhist = signalhist.Rebin(new_nbins,  signal+'_'+tdir, new_binning ) # for custom binning
                signalhist.SetName( signal + getLabel(tdir, idx))
                signalhist.Write()
        for mc in mc_samples:
            if mc != 'jetFakes' and '_fr' in tdir:
                continue
            tmppath = tdir+'/'+mc+'_'+tdir
            try:
                tmpHist = inFile.Get(tmppath)
                tmpHist = tmpHist.Rebin(new_nbins,  mc+'_'+tdir, new_binning )
                tmpHist.SetName(mc + getLabel(tdir, idx))
                tmpHist.Write()
            except:
                pass
        for signal in zprime_samples:
            if inFile.Get(tdir+'/'+signal+'_'+tdir) and '_fr' not in tdir:
                signalhist = inFile.Get(tdir+'/'+signal+'_'+tdir)
                signalhist = signalhist.Rebin(new_nbins,  signal+'_'+tdir, new_binning )
                signalhist.SetName( signal + getLabel(tdir, idx))
                signalhist.Write()

    inFile.Close()
    outFile.Close()
    print("Finished gathering from " + fname)




###########################################################################################
cwd = getcwd()
#print cwd
ch = cwd.split('/')[-2]
ch = ch.replace('_blinded', '')

channelName = 'etau'
idx = '9b'
# inFile_nominal= ROOT.TFile("f_mutau_initial.root","UPDATE")
file_list = ["f_tot_TMass_new_initial.root", "f_tot_TMass_new_up.root", "f_tot_TMass_new_down.root"]

if path.exists(channelName+".root"):
    remove(channelName+".root")
    print("The file has been deleted successfully")
else:
    print("The file does not exist!")
    
for fname in file_list:
    getHistList(fname , channelName, idx )
    
print("Outpur written to "+channelName+".root")
print("Done")
