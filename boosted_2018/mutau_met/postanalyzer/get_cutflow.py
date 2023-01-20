#!/usr/bin/env python
import ROOT
from array import array
from os import listdir

def GetKeyNames( self, dir = "" ):
    self.cd(dir)
    return [key.GetName() for key in ROOT.gDirectory.GetListOfKeys()]
ROOT.TFile.GetKeyNames = GetKeyNames




zpb_mapping= {
    'Zpbaryonic2017_1' : [ 'Zpbaryonic2017_1' , 'MZp_1000_MChi_100' , 0 ] ,
    'Zpbaryonic2017_2' : [ 'Zpbaryonic2017_2' , 'MZp_1000_MChi_1' , 0 ] ,
    'Zpbaryonic2017_3' : [ 'Zpbaryonic2017_3' , 'MZp_1000_MChi_200' , 0 ] ,
    'Zpbaryonic2017_4' : [ 'Zpbaryonic2017_4' , 'MZp_1000_MChi_400' , 0 ] ,
    'Zpbaryonic2017_5' : [ 'Zpbaryonic2017_5' , 'MZp_1000_MChi_600' , 0 ] ,
    'Zpbaryonic2017_6' : [ 'Zpbaryonic2017_6' , 'MZp_1000_MChi_800' , 0 ] ,
    'Zpbaryonic2017_7' : [ 'Zpbaryonic2017_7' , 'MZp_100_MChi_1' , 0 ] ,
    'Zpbaryonic2017_8' : [ 'Zpbaryonic2017_8' , 'MZp_100_MChi_50' , 0 ] ,
    'Zpbaryonic2017_9' : [ 'Zpbaryonic2017_9' , 'MZp_1500_MChi_100' , 0 ] ,
    'Zpbaryonic2017_10' : [ 'Zpbaryonic2017_10' , 'MZp_1500_MChi_1' , 0 ] ,
    'Zpbaryonic2017_11' : [ 'Zpbaryonic2017_11' , 'MZp_1500_MChi_200' , 0 ] ,
    'Zpbaryonic2017_12' : [ 'Zpbaryonic2017_12' , 'MZp_1500_MChi_400' , 0 ] ,
    'Zpbaryonic2017_13' : [ 'Zpbaryonic2017_13' , 'MZp_1500_MChi_600' , 0 ] ,
    'Zpbaryonic2017_14' : [ 'Zpbaryonic2017_14' , 'MZp_1500_MChi_800' , 0 ] ,
    'Zpbaryonic2017_15' : [ 'Zpbaryonic2017_15' , 'MZp_2000_MChi_100' , 0 ] ,
    'Zpbaryonic2017_16' : [ 'Zpbaryonic2017_16' , 'MZp_2000_MChi_1' , 0 ] ,
    'Zpbaryonic2017_17' : [ 'Zpbaryonic2017_17' , 'MZp_2000_MChi_200' , 0 ] ,
    'Zpbaryonic2017_18' : [ 'Zpbaryonic2017_18' , 'MZp_2000_MChi_400' , 0 ] ,
    'Zpbaryonic2017_19' : [ 'Zpbaryonic2017_19' , 'MZp_2000_MChi_600' , 0 ] ,
    'Zpbaryonic2017_20' : [ 'Zpbaryonic2017_20' , 'MZp_2000_MChi_800' , 0 ] ,
    'Zpbaryonic2017_21' : [ 'Zpbaryonic2017_21' , 'MZp_200_MChi_100' , 0 ] ,
    'Zpbaryonic2017_22' : [ 'Zpbaryonic2017_22' , 'MZp_200_MChi_150' , 0 ] ,
    'Zpbaryonic2017_23' : [ 'Zpbaryonic2017_23' , 'MZp_200_MChi_1' , 0 ] ,
    'Zpbaryonic2017_24' : [ 'Zpbaryonic2017_24' , 'MZp_200_MChi_50' , 0 ] ,
    'Zpbaryonic2017_25' : [ 'Zpbaryonic2017_25' , 'MZp_2500_MChi_100' , 0 ] ,
    'Zpbaryonic2017_26' : [ 'Zpbaryonic2017_26' , 'MZp_2500_MChi_1' , 0 ] ,
    'Zpbaryonic2017_27' : [ 'Zpbaryonic2017_27' , 'MZp_2500_MChi_200' , 0 ] ,
    'Zpbaryonic2017_28' : [ 'Zpbaryonic2017_28' , 'MZp_2500_MChi_400' , 0 ] ,
    'Zpbaryonic2017_29' : [ 'Zpbaryonic2017_29' , 'MZp_2500_MChi_600' , 0 ] ,
    'Zpbaryonic2017_30' : [ 'Zpbaryonic2017_30' , 'MZp_2500_MChi_800' , 0 ] ,
    'Zpbaryonic2017_31' : [ 'Zpbaryonic2017_31' , 'MZp_3000_MChi_100' , 0 ] ,
    'Zpbaryonic2017_32' : [ 'Zpbaryonic2017_32' , 'MZp_3000_MChi_1' , 0 ] ,
    'Zpbaryonic2017_33' : [ 'Zpbaryonic2017_33' , 'MZp_3000_MChi_200' , 0 ] ,
    'Zpbaryonic2017_34' : [ 'Zpbaryonic2017_34' , 'MZp_300_MChi_150' , 0 ] ,
    'Zpbaryonic2017_35' : [ 'Zpbaryonic2017_35' , 'MZp_3500_MChi_100' , 0 ] ,
    'Zpbaryonic2017_36' : [ 'Zpbaryonic2017_36' , 'MZp_3500_MChi_1' , 0 ] ,
    'Zpbaryonic2017_37' : [ 'Zpbaryonic2017_37' , 'MZp_350_MChi_50' , 0 ] ,
    'Zpbaryonic2017_38' : [ 'Zpbaryonic2017_38' , 'MZp_500_MChi_100' , 0 ] ,
    'Zpbaryonic2017_39' : [ 'Zpbaryonic2017_39' , 'MZp_500_MChi_1' , 0 ] ,
    'Zpbaryonic2017_40' : [ 'Zpbaryonic2017_40' , 'MZp_500_MChi_200' , 0 ] ,
    'Zpbaryonic2017_41' : [ 'Zpbaryonic2017_41' , 'MZp_500_MChi_400' , 0 ] ,
    'Zpbaryonic2017_42' : [ 'Zpbaryonic2017_42' , 'MZp_650_MChi_50' , 0 ] ,
    'Zpbaryonic2017_43' : [ 'Zpbaryonic2017_43' , 'MZp_800_MChi_50' , 0 ] ,
}

zprime_ngen = {'Zpbaryonic2017_6': 887000, 'Zpbaryonic2017_7': 1101000, 'Zpbaryonic2017_4': 1005000, 'Zpbaryonic2017_5': 916000, 'Zpbaryonic2017_2': 948000, 'Zpbaryonic2017_3': 974000, 'Zpbaryonic2017_1': 1018000, 'Zpbaryonic2017_8': 1035000, 'Zpbaryonic2017_9': 919000, 'Zpbaryonic2017_29': 1015000, 'Zpbaryonic2017_28': 933000, 'Zpbaryonic2017_41': 891000, 'Zpbaryonic2017_40': 1046000, 'Zpbaryonic2017_25': 1003000, 'Zpbaryonic2017_24': 1000000, 'Zpbaryonic2017_27': 895000, 'Zpbaryonic2017_26': 949000, 'Zpbaryonic2017_21': 955000, 'Zpbaryonic2017_20': 986000, 'Zpbaryonic2017_23': 1044000, 'Zpbaryonic2017_22': 1006000, 'Zpbaryonic2017_14': 968000, 'Zpbaryonic2017_15': 900000, 'Zpbaryonic2017_16': 902000, 'Zpbaryonic2017_17': 917000, 'Zpbaryonic2017_10': 937000, 'Zpbaryonic2017_11': 1039000, 'Zpbaryonic2017_12': 1002000, 'Zpbaryonic2017_13': 996000, 'Zpbaryonic2017_18': 947000, 'Zpbaryonic2017_19': 957000, 'Zpbaryonic2017_38': 997000, 'Zpbaryonic2017_39': 930000, 'Zpbaryonic2017_36': 944000, 'Zpbaryonic2017_37': 994000, 'Zpbaryonic2017_34': 1031000, 'Zpbaryonic2017_35': 989000, 'Zpbaryonic2017_32': 995000, 'Zpbaryonic2017_33': 993000, 'Zpbaryonic2017_30': 939000, 'Zpbaryonic2017_31': 940000, 'Zpbaryonic2017_43': 933000, 'Zpbaryonic2017_42': 1027000}


def getHist(sampleName = "", hist_name=""):
    inFile= ROOT.TFile("files_initial/"+sampleName+'_final.root',"r")
    mchi = zpb_mapping[sampleName][1].split('_')[-1]
    if mchi != '1':
        return 
    ngen = zprime_ngen[sampleName]
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
    print ','.join(r)
