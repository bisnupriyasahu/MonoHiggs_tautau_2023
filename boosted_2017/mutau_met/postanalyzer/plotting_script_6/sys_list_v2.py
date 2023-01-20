


######### shapes 
shape_list = {
    # 'CMS_rawFF_tt_qcd_2017' : ['jetFakes'] ,
    # 'CMS_FF_closure_taupt_tt_qcd' : ['jetFakes'] ,
    # 'CMS_FF_closure_tt_qcd_osss' : ['jetFakes'] ,
    'CMS_htt_boson_scale_met_Jet_2017' : ['ZTTjet' ,'ZLLjet'] ,
    'CMS_htt_boson_reso_met_Jet_2017' : ['ZTTjet' ,'ZLLjet'] ,
    'CMS_htt_dyShape' : ['ZTTjet' ,'ZLLjet'] ,
    'CMS_htt_ttbarShape' : ['TTL'] ,
    # #'CMS_Prefiring' : ['ZTTjet' ,'ZLLjet', 'VVL', 'STL', 'TTL' , 'VVT', 'STT', 'TT'] ,
    'CMS_scale_met_unclustered_2017' : ['VVL', 'STL', 'TTL' , 'VVT', 'STT', 'TT', 'otherMC'] ,
    # 'CMS_boostedTauES_1prong' : ['ZTTjet' ,'ZLLjet', 'VVT', 'STT', 'TT', 'otherMC'],
    # 'CMS_boostedTauES_1prong1pizero' : ['ZTTjet' ,'ZLLjet', 'VVT', 'STT', 'TT', 'otherMC'],
    #'CMS_boostedTauES_3prong' : ['ZTTjet' ,'ZLLjet', 'VVT', 'STT', 'TT', 'otherMC'],
    #'CMS_boostedTauES_3prong1pizero' : ['ZTTjet' ,'ZLLjet', 'VVT', 'STT', 'TT', 'otherMC'],

    # 'CMS_boostedTauID_1prong' : ['ZTTjet' ,'ZLLjet', 'VVT', 'STT', 'TT', 'otherMC'],
    # 'CMS_boostedTauID_1prong1pizero' : ['ZTTjet' ,'ZLLjet', 'VVT', 'STT', 'TT', 'otherMC'],
    # 'CMS_boostedTauID_3prong' : ['ZTTjet' ,'ZLLjet', 'VVT', 'STT', 'TT', 'otherMC'],
    # 'CMS_boostedTauID_3prong1pizero' : ['ZTTjet' ,'ZLLjet', 'VVT', 'STT', 'TT', 'otherMC'],
    
}

######### scale 
norm_list = { 
    'CMS_JER' : [1.09, ['ZTTjet' ,'ZLLjet', 1.09, 'VVT', 1.09, 'STT', 1.09, 'TT', 1.09, 'otherMC']] ,
    'CMS_JES' : [1.09, ['ZTTjet' ,'ZLLjet', 1.09, 'VVT', 1.09, 'STT', 1.09, 'TT', 1.09, 'otherMC']] ,
    'CMS_htt_eff_b' : [1.005, ['ZTTjet' ,'ZLLjet', 1.005, 'VVT']] ,
    'CMS_htt_eff_b' : [1.005, ['ZTTjet' ,'ZLLjet', 1.005, 'VVT']] ,
    'CMS_htt_dyShape' : [1.1, ['ZTTjet','ZLLjet']] ,
    'CMS_htt_stXsec' : [1.05, ['STT']] ,
    'CMS_htt_tjXsec' : [1.042, ['TT']] ,
    'CMS_htt_vvXsec' : [1.05, ['VVT']] ,
    'CMS_htt_zjXsec' : [1.02, ['ZTTjet' ,'ZLLjet']] ,
    'CMS_jetFakesNorm_0jet_tt_2017' : [1.1, ['jetFakes']] ,
    'lumi_Run2017' : [1.02, ['ZTTjet' ,'ZLLjet', 1.02, 'VVT', 1.02, 'STT', 1.02, 'TT'], 1.07, 'otherMC'] ,
    'lumi_XYfactorization' : [1.008, ['ZTTjet' ,'ZLLjet', 1.008, 'VVT', 1.008, 'STT', 1.008, 'TT', 1.07, 'otherMC']] ,
    'lumi_beamBeamDeflection' : [1.004, ['ZTTjet' ,'ZLLjet', 1.004, 'VVT', 1.004, 'STT', 1.004, 'TT', 1.07, 'otherMC']] ,
    'lumi_beamCurrentCalibration' : [1.003, ['ZTTjet' ,'ZLLjet', 1.003, 'VVT', 1.003, 'STT', 1.003, 'TT', 1.07, 'otherMC']] ,
    'lumi_dynamicBeta' : [1.005, ['ZTTjet' ,'ZLLjet', 1.005, 'VVT', 1.005, 'STT', 1.005, 'TT', 1.07, 'otherMC']] ,
    'lumi_ghostsAndSatellites' : [1.001, ['ZTTjet' ,'ZLLjet', 1.001, 'VVT', 1.001, 'STT', 1.001, 'TT', 1.07, 'otherMC']] ,
    'lumi_lengthScale' : [1.003, ['ZTTjet' ,'ZLLjet', 1.003, 'VVT', 1.003, 'STT', 1.003, 'TT', 1.07, 'otherMC']] ,
    
}
