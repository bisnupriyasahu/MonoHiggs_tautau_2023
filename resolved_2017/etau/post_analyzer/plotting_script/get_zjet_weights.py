import ROOT as R

file_map = {
"ZTTjet_inc"  :	['DYJetsToLL_M-50_TuneCP5_v1_final.root', 'DYJetsToLL_M-50_TuneCP5_ext1_v1_final.root'],
"ZTT1jet"  :	['DY1JetsToLL_M-50_TuneCP5_final.root'],
"ZTT2jet"  :	['DY2JetsToLL_M-50_TuneCP5_final.root'],
"ZTT3jet"  :	['DY3JetsToLL_M-50_TuneCP5_v1_final.root', 'DY3JetsToLL_M-50_TuneCP5_ext1_final.root'],
"ZTT4jet"  :	['DY4JetsToLL_M-50_TuneCP5_final.root'],
}


xsec_map = {
"ZTTjet_inc"  :	4954.0,
"ZTT1jet" :	1012.5,
"ZTT2jet" :	332.8,
"ZTT3jet" :	101.8,
"ZTT4jet" : 54.8,
}

'''
xsec_map = {
"ZTTjet_inc"  : 5343.0,
"ZTT1jet" :     877.8,
"ZTT2jet" :     304.4,
"ZTT3jet" :     111.5,
"ZTT4jet" : 44.0,
}
'''



def get_DYJets_weight():
    n_events_map = {}

    for sample,filenames in file_map.items():
        nEvents = 0
        for ifile in filenames:
            infile = R.TFile("../files_initial/"+ifile,"r")
            h_nevents = infile.Get('nEvents')
            nEvents += h_nevents.Integral()
            infile.Close()
        n_events_map[sample] = nEvents
        print("in the zll python script the nevents for the sample: {} and the nevents is : {}".format(sample,nEvents))

    luminosity = 41.520
    NNLO_Xsection = 5765.4
    #NNLO_Xsection = 6077.22
    LO_to_NNLO_correction_factor = NNLO_Xsection / xsec_map['ZTTjet_inc']
    print("in the zll python script the the final xsec is LO_to_NNLO_correction_factor : {}".format(LO_to_NNLO_correction_factor))

    lumi_map = {}
    for sample, xs in xsec_map.items():
        lumi_map[sample] = n_events_map[sample] / xs
        print("in the zll python script the lumimap: {}, sample is : {}".format(lumi_map[sample],sample))
        print(1/lumi_map[sample])
    final_weights = {}
    for sample, lumi in lumi_map.items():
        denominator = lumi + lumi_map['ZTTjet_inc']
        if sample=='ZTTjet_inc':
            denominator = lumi 
        print("lumi is : ",lumi)
        print("sample name : {} and denominator is : {}  ".format(sample,denominator))
        #final_weights[sample] = LO_to_NNLO_correction_factor * luminosity * 1000 / denominator
        final_weights[sample] = luminosity * 1000 / denominator
        print("in the zll python script final weight: {}, sample is : {}".format(final_weights[sample] ,sample))
    for s in final_weights:
        print(s, final_weights[s])
        print("the final sample and final weights")
    return final_weights



if __name__=="__main__":
    print("Event weights for DY samples while stitching njet samples")
    print(get_DYJets_weight())


