void tautau_analyzer::fillHist( string histNumber , int tau1Index, int tau2Index, bool isFakeBkg, float event_weight){
  string hNumber = histNumber;
  //cout<<" in fillHist event_weight="<<event_weight<<endl;
  /// leading tau 
  plotFill("tau1Pt_"+hNumber,  my_tau1P4.Pt() , 30 , 40 , 180,  event_weight);
  plotFill("tau1Eta_"+hNumber, my_tau1P4.Eta(), 22, -2.1, 2.1,  event_weight);
  plotFill("tau1Phi_"+hNumber, my_tau1P4.Phi(), 30, -3.14, 3.14,  event_weight);
  plotFill("tau1Charge_"+hNumber, tau1charge, 8, -2, 2 ,  event_weight);
  plotFill("tau1Iso_"+hNumber, tau1Isolation, 4, -2, 2,  event_weight);
  plotFill("tau1DecayMode_"+hNumber, tau1DecayMode , 12, 0, 12,  event_weight);
  /// subleading tau
  plotFill("tau2Pt_"+hNumber,  my_tau2P4.Pt() , 30 , 40 , 180,  event_weight);
  plotFill("tau2Eta_"+hNumber, my_tau2P4.Eta(), 22, -2.1, 2.1,  event_weight);
  plotFill("tau2Phi_"+hNumber, my_tau2P4.Phi(), 30, -3.14, 3.14,  event_weight);
  plotFill("tau2Charge_"+hNumber, tau2charge, 8, -2, 2 ,  event_weight);
  plotFill("tau2Iso_"+hNumber, tau2Isolation, 4, -2, 2,  event_weight);
  plotFill("tau2DecayMode_"+hNumber, tau2DecayMode , 12, 0, 12,  event_weight);

plotFill("deltaR_"+hNumber, deltaR , 10, 0, 1,  event_weight);
  // double deltaPhi = DeltaPhi(muPhi->at(muIndex), tau_Phi->at(tauIndex));
  // double deltaEta = fabs(muEta->at(muIndex) - tau_Eta->at(tauIndex));
  plotFill("deltaPhi_"+hNumber, deltaPhi , 30, -3.14, 3.14,  event_weight);
  plotFill("deltaEta_"+hNumber, deltaEta ,  25, -2.5, 2.5,  event_weight);
  
  plotFill("nVertex_"+hNumber, nVtx ,  24, 0, 60,  event_weight);
  plotFill("nJet_"+hNumber,  my_njets , 6, 0, 6,  event_weight);
  plotFill("met_"+hNumber, my_metP4.Pt() , 20, 0, 200,  event_weight);
  plotFill("metLongXaxis_"+hNumber, my_metP4.Pt() , 10, 100, 200,  event_weight);
  plotFill("metPhi_"+hNumber, my_metP4.Phi() , 30, -3.14, 3.14,  event_weight);
  // double mT_muMet = TMass_F( my_muP4.Pt(),my_muP4.Phi(), my_metP4.Pt(), my_metP4.Phi() );
  plotFill("mT_muMet_"+hNumber, mT_muMet , 20, 0, 200,event_weight);

  //double visMass_mutau = (muP4+ tauP4).M();
  plotFill("visMass_"+hNumber, visMass_mutau , 20, 0, 200,  event_weight);
  
  //double HiggsPt = (my_muP4 + my_tauP4).Pt();
  plotFill("higgsPt_"+hNumber,HiggsPt ,  40, 0, 400,  event_weight);

  //double delpta_phi_HptMet = (muP4+tauP4+MET_P4).DeltaPhi(MET_P4);
  plotFill("delptaPhi_HptMet_"+hNumber, delpta_phi_HptMet , 30, -3.14, 3.14,  event_weight);
  
  //double tot_tr_mass = (muP4 + tauP4 + MET_P4 ).M();
  plotFill("tot_TMass_"+hNumber, tot_tr_mass , 16, 40, 200,  event_weight);
  if (tot_tr_mass >= 2000) tot_tr_mass = 1900;
  float TrMassBins[13]={ 40, 60, 90, 120, 150, 180, 210, 235, 260, 285, 325, 400, 2000};
  plotFill_customBinning("tot_TMass_full_"+hNumber, tot_tr_mass , 12, TrMassBins,  event_weight);

  plotFill("tot_TMass_new_"+hNumber, tot_tr_mass , 196, 40, 2000,  event_weight);
  
}

void tautau_analyzer::fillHist_nominal(string histNumber, float event_weight){


}
