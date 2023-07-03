import ROOT as R
import os

file_map = {
    "ZTTjet_inc"  :	['DYJetsToLL_final.root', 'DYJetsToLL_M10to50_final.root'],
    "ZTT1jet"  :	['DY1JetsToLL_final.root'],
    "ZTT2jet"  :	['DY2JetsToLL_final.root'],
    "ZTT3jet"  :	['DY3JetsToLL_final.root'],
    "ZTT4jet"  :	['DY4JetsToLL_final.root'],
}

#2016 xsec

xsec_map = {
"ZTTjet_inc"  : 4954.0,
"ZTT1jet" :     1012.5,
"ZTT2jet" :     332.8,
"ZTT3jet" :     101.8,
"ZTT4jet" : 54.8,
}

'''
#2017 xsec
xsec_map = {
"ZTTjet_inc"  :	5343.0, #5329
"ZTT1jet" :	877.8, #875
"ZTT2jet" :	304.4, #306
"ZTT3jet" :	111.5, #111
"ZTT4jet" :     44.0, #43
}

'''

def get_DYJets_weight():
    n_events_map = {}

    for sample,filenames in file_map.items():
        nEvents = 0
        for ifile in filenames:
            file_name_to_check = "../files_initial/"+ifile
            if os.path.exists(file_name_to_check):
                print('checking '+file_name_to_check)
                infile = R.TFile("../files_initial/"+ifile,"r")
                h_nevents = infile.Get('nEvents')
                nEvents += h_nevents.Integral()
                infile.Close()
            else:
                nEvents += 0
        n_events_map[sample] = nEvents

    print(n_events_map)
    luminosity = 59.7
    NNLO_Xsection = 5765.4 #2016
    #NNLO_Xsection = 6077.22 #2017
    LO_to_NNLO_correction_factor = NNLO_Xsection / xsec_map['ZTTjet_inc']


    lumi_map = {}
    for sample, xs in xsec_map.items():
        lumi_map[sample] = n_events_map[sample] / xs
        print("in sample {} the n_events_map is {}".format(sample,n_events_map[sample]))
    final_weights = {}
    for sample, lumi in lumi_map.items():
        denominator = lumi + lumi_map['ZTTjet_inc']
        if sample=='ZTTjet_inc':
            denominator = lumi 
        #final_weights[sample] = LO_to_NNLO_correction_factor * luminosity * 1000 / denominator
        final_weights[sample] =  luminosity * 1000 / denominator
        
    for s in final_weights:
        print(s, final_weights[s])
    
    return final_weights



if __name__=="__main__":
    print("Event weights for DY samples while stitching njet samples")
    print(get_DYJets_weight())


