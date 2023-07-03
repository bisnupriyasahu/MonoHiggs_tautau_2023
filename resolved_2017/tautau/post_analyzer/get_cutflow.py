#!/usr/bin/env python
import ROOT
from array import array
from os import listdir

def GetKeyNames( self, dir = "" ):
    self.cd(dir)
    return [key.GetName() for key in ROOT.gDirectory.GetListOfKeys()]
ROOT.TFile.GetKeyNames = GetKeyNames




zpb_mapping= {
    'Signal_ZpBaryonic_2017_1' : [ 'Signal_ZpBaryonic_2017_1' , 'Signal_MZp_1000_MChi_100' , 0 ] ,
    'Signal_ZpBaryonic_2017_2' : [ 'Signal_ZpBaryonic_2017_2' , 'Signal_MZp_1000_MChi_1' , 0 ] ,
    'Signal_ZpBaryonic_2017_3' : [ 'Signal_ZpBaryonic_2017_3' , 'Signal_MZp_1000_MChi_200' , 0 ] ,
    'Signal_ZpBaryonic_2017_4' : [ 'Signal_ZpBaryonic_2017_4' , 'Signal_MZp_1000_MChi_400' , 0 ] ,
    'Signal_ZpBaryonic_2017_5' : [ 'Signal_ZpBaryonic_2017_5' , 'Signal_MZp_1000_MChi_600' , 0 ] ,
    'Signal_ZpBaryonic_2017_6' : [ 'Signal_ZpBaryonic_2017_6' , 'Signal_MZp_1000_MChi_800' , 0 ] ,
    'Signal_ZpBaryonic_2017_7' : [ 'Signal_ZpBaryonic_2017_7' , 'Signal_MZp_100_MChi_1' , 0 ] ,
    'Signal_ZpBaryonic_2017_8' : [ 'Signal_ZpBaryonic_2017_8' , 'Signal_MZp_100_MChi_50' , 0 ] ,
    'Signal_ZpBaryonic_2017_9' : [ 'Signal_ZpBaryonic_2017_9' , 'Signal_MZp_1500_MChi_100' , 0 ] ,
    'Signal_ZpBaryonic_2017_10' : [ 'Signal_ZpBaryonic_2017_10' , 'Signal_MZp_1500_MChi_1' , 0 ] ,
    'Signal_ZpBaryonic_2017_11' : [ 'Signal_ZpBaryonic_2017_11' , 'Signal_MZp_1500_MChi_200' , 0 ] ,
    'Signal_ZpBaryonic_2017_12' : [ 'Signal_ZpBaryonic_2017_12' , 'Signal_MZp_1500_MChi_400' , 0 ] ,
    'Signal_ZpBaryonic_2017_13' : [ 'Signal_ZpBaryonic_2017_13' , 'Signal_MZp_1500_MChi_600' , 0 ] ,
    'Signal_ZpBaryonic_2017_14' : [ 'Signal_ZpBaryonic_2017_14' , 'Signal_MZp_1500_MChi_800' , 0 ] ,
    'Signal_ZpBaryonic_2017_15' : [ 'Signal_ZpBaryonic_2017_15' , 'Signal_MZp_2000_MChi_100' , 0 ] ,
    'Signal_ZpBaryonic_2017_16' : [ 'Signal_ZpBaryonic_2017_16' , 'Signal_MZp_2000_MChi_1' , 0 ] ,
    'Signal_ZpBaryonic_2017_17' : [ 'Signal_ZpBaryonic_2017_17' , 'Signal_MZp_2000_MChi_200' , 0 ] ,
    'Signal_ZpBaryonic_2017_18' : [ 'Signal_ZpBaryonic_2017_18' , 'Signal_MZp_2000_MChi_400' , 0 ] ,
    'Signal_ZpBaryonic_2017_19' : [ 'Signal_ZpBaryonic_2017_19' , 'Signal_MZp_2000_MChi_600' , 0 ] ,
    'Signal_ZpBaryonic_2017_20' : [ 'Signal_ZpBaryonic_2017_20' , 'Signal_MZp_2000_MChi_800' , 0 ] ,
    'Signal_ZpBaryonic_2017_21' : [ 'Signal_ZpBaryonic_2017_21' , 'Signal_MZp_200_MChi_100' , 0 ] ,
    'Signal_ZpBaryonic_2017_22' : [ 'Signal_ZpBaryonic_2017_22' , 'Signal_MZp_200_MChi_150' , 0 ] ,
    'Signal_ZpBaryonic_2017_23' : [ 'Signal_ZpBaryonic_2017_23' , 'Signal_MZp_200_MChi_1' , 0 ] ,
    'Signal_ZpBaryonic_2017_24' : [ 'Signal_ZpBaryonic_2017_24' , 'Signal_MZp_200_MChi_50' , 0 ] ,
    'Signal_ZpBaryonic_2017_25' : [ 'Signal_ZpBaryonic_2017_25' , 'Signal_MZp_2500_MChi_100' , 0 ] ,
    'Signal_ZpBaryonic_2017_26' : [ 'Signal_ZpBaryonic_2017_26' , 'Signal_MZp_2500_MChi_1' , 0 ] ,
    'Signal_ZpBaryonic_2017_27' : [ 'Signal_ZpBaryonic_2017_27' , 'Signal_MZp_2500_MChi_200' , 0 ] ,
    'Signal_ZpBaryonic_2017_28' : [ 'Signal_ZpBaryonic_2017_28' , 'Signal_MZp_2500_MChi_400' , 0 ] ,
    'Signal_ZpBaryonic_2017_29' : [ 'Signal_ZpBaryonic_2017_29' , 'Signal_MZp_2500_MChi_600' , 0 ] ,
    'Signal_ZpBaryonic_2017_30' : [ 'Signal_ZpBaryonic_2017_30' , 'Signal_MZp_2500_MChi_800' , 0 ] ,
    'Signal_ZpBaryonic_2017_31' : [ 'Signal_ZpBaryonic_2017_31' , 'Signal_MZp_3000_MChi_100' , 0 ] ,
    'Signal_ZpBaryonic_2017_32' : [ 'Signal_ZpBaryonic_2017_32' , 'Signal_MZp_3000_MChi_1' , 0 ] ,
    'Signal_ZpBaryonic_2017_33' : [ 'Signal_ZpBaryonic_2017_33' , 'Signal_MZp_3000_MChi_200' , 0 ] ,
    'Signal_ZpBaryonic_2017_34' : [ 'Signal_ZpBaryonic_2017_34' , 'Signal_MZp_300_MChi_150' , 0 ] ,
    'Signal_ZpBaryonic_2017_35' : [ 'Signal_ZpBaryonic_2017_35' , 'Signal_MZp_3500_MChi_100' , 0 ] ,
    'Signal_ZpBaryonic_2017_36' : [ 'Signal_ZpBaryonic_2017_36' , 'Signal_MZp_3500_MChi_1' , 0 ] ,
    'Signal_ZpBaryonic_2017_37' : [ 'Signal_ZpBaryonic_2017_37' , 'Signal_MZp_350_MChi_50' , 0 ] ,
    'Signal_ZpBaryonic_2017_38' : [ 'Signal_ZpBaryonic_2017_38' , 'Signal_MZp_500_MChi_100' , 0 ] ,
    'Signal_ZpBaryonic_2017_39' : [ 'Signal_ZpBaryonic_2017_39' , 'Signal_MZp_500_MChi_1' , 0 ] ,
    'Signal_ZpBaryonic_2017_40' : [ 'Signal_ZpBaryonic_2017_40' , 'Signal_MZp_500_MChi_200' , 0 ] ,
    'Signal_ZpBaryonic_2017_41' : [ 'Signal_ZpBaryonic_2017_41' , 'Signal_MZp_500_MChi_400' , 0 ] ,
    'Signal_ZpBaryonic_2017_42' : [ 'Signal_ZpBaryonic_2017_42' , 'Signal_MZp_650_MChi_50' , 0 ] ,
    'Signal_ZpBaryonic_2017_43' : [ 'Signal_ZpBaryonic_2017_43' , 'Signal_MZp_800_MChi_50' , 0 ] ,
}
zprime_ngen = {'Signal_ZpBaryonic2017_6': 174000, 'Signal_ZpBaryonic2017_7': 209000, 'Signal_ZpBaryonic2017_4': 196000, 'Signal_ZpBaryonic2017_5': 167000, 'Signal_ZpBaryonic2017_2': 176000, 'Signal_ZpBaryonic2017_3': 187000, 'Signal_ZpBaryonic2017_1': 193000, 'Signal_ZpBaryonic2017_8': 204000, 'Signal_ZpBaryonic2017_9': 165000, 'Signal_ZpBaryonic2017_29': 188000, 'Signal_ZpBaryonic2017_28': 181000, 'Signal_ZpBaryonic2017_41': 155000, 'Signal_ZpBaryonic2017_40': 203000, 'Signal_ZpBaryonic2017_25': 210000, 'Signal_ZpBaryonic2017_24': 177000, 'Signal_ZpBaryonic2017_27': 167000, 'Signal_ZpBaryonic2017_26': 190000, 'Signal_ZpBaryonic2017_21': 194000, 'Signal_ZpBaryonic2017_20': 207000, 'Signal_ZpBaryonic2017_23': 201000, 'Signal_ZpBaryonic2017_22': 195000, 'Signal_ZpBaryonic2017_14': 170000, 'Signal_ZpBaryonic2017_15': 167000, 'Signal_ZpBaryonic2017_16': 165000, 'Signal_ZpBaryonic2017_17': 164000, 'Signal_ZpBaryonic2017_10': 177000, 'Signal_ZpBaryonic2017_11': 181000, 'Signal_ZpBaryonic2017_12': 179000, 'Signal_ZpBaryonic2017_13': 196000, 'Signal_ZpBaryonic2017_18': 175000, 'Signal_ZpBaryonic2017_19': 159000, 'Signal_ZpBaryonic2017_38': 166000, 'Signal_ZpBaryonic2017_39': 190000, 'Signal_ZpBaryonic2017_36': 185000, 'Signal_ZpBaryonic2017_37': 178000.0, 'Signal_ZpBaryonic2017_34': 205000, 'Signal_ZpBaryonic2017_35': 184000, 'Signal_ZpBaryonic2017_32': 188000, 'Signal_ZpBaryonic2017_33': 200000, 'Signal_ZpBaryonic2017_30': 190000, 'Signal_ZpBaryonic2017_31': 193000, 'Signal_ZpBaryonic2017_43': 172000.0, 'Signal_ZpBaryonic2017_42': 190000.0}


def getHist(sampleName = "", hist_name="cutflow_n"):
    #print(sampleName)
    inFile= ROOT.TFile("files_initial/"+sampleName+'_final.root',"r")
    mchi =['1'] #zpb_mapping[sampleName][1].split('_')[-2]
    print(mchi)
    if mchi != '1':
        return 
    print(sampleName)
    ngen = zprime_ngen[sampleName]
    print(ngen)
    hist_5 = inFile.Get('tot_TMass_full_5')
    hist_7 = inFile.Get('tot_TMass_full_7')
    hist_8 = inFile.Get('tot_TMass_full_8') 
    hist_9 = inFile.Get('tot_TMass_full_9')

    i_5 = hist_5.Integral()
    i_7 = hist_7.Integral()
    i_8 = hist_8.Integral()
    i_9 = hist_9.Integral()

    i_5 = round(100*i_5/ngen, 3)
    i_7 = round(100*i_7/ngen, 3)
    i_8 = round(100*i_8/ngen, 3)
    i_9 = round(100*i_9/ngen, 3)
    #print sampleName, zpb_mapping[sampleName][1], ngen, i_5, i_9
    return [ zpb_mapping[sampleName][1], ngen, i_5, i_7, i_8 , i_9 ]


res = []
for sample in zprime_ngen:
    tmp = getHist(sampleName = sample, hist_name="")
    if tmp is None:
        continue
    mzp = tmp[0]
    mzp = int(mzp.split('_')[1])
    tmp = [mzp] + tmp
    res.append(tmp)

res = sorted(res)

res = [  [str(x) for x in r] for r in res  ]
for r in res:
    print (','.join(r))
