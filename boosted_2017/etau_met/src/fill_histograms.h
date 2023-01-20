void etau_analyzer::fillHist( string histNumber , int eleIndex, int tauIndex, bool isFakeBkg, float event_weight){
  string hNumber = histNumber;
  // cout<<" entering fillHist() "<< histNumber <<endl;
  plotFill("elePt_"+hNumber,  my_eleP4.Pt() , 30 , 20.0 , 80.0,  event_weight);
  plotFill("eleEta_"+hNumber, my_eleP4.Eta(), 48, -2.4, 2.4,  event_weight);
  plotFill("elePhi_"+hNumber, my_eleP4.Phi(), 30, -3.14, 3.14,  event_weight);
  plotFill("eleDz_"+hNumber,  eleDz->at(eleIndex), 20, -0.2, 0.2,  event_weight);
  plotFill("eleD0_"+hNumber,  eleD0->at(eleIndex), 48, -0.06, 0.06,  event_weight);
  plotFill("eleonID_"+hNumber, eleIDbit->at(eleIndex)>>1&1, 4, -2, 2,  event_weight); // electronID
  float releleIso = ( elePFChIso->at(eleIndex) + max( elePFNeuIso->at(eleIndex) + elePFPhoIso->at(eleIndex) - 0.5 *elePFPUIso->at(eleIndex) , 0.0 )) / (my_eleP4.Pt());
  plotFill("releleIso_"+hNumber, releleIso, 200, -10, 10,  event_weight);

  plotFill("eleCharge_"+hNumber, eleCharge->at(eleIndex), 8, -2, 2 ,  event_weight);
  
  plotFill("tauPt_"+hNumber,  my_tauP4.Pt() , 25 , 30 , 80,  event_weight);
  plotFill("tauEta_"+hNumber, my_tauP4.Eta(), 25, -2.5, 2.5,  event_weight);
  plotFill("tauPhi_"+hNumber, my_tauP4.Phi(), 30, -3.14, 3.14,  event_weight);
  plotFill("tauIso_"+hNumber, tauIsolation, 4, -2, 2,  event_weight);
  plotFill("tauDecayMode_"+hNumber, tauDecayMode , 12, 0, 12,  event_weight);
  plotFill("tauCharge_"+hNumber, taucharge, 8, -2, 2 ,  event_weight);
  plotFill("tauAntiEle_"+hNumber, tauAntiEle, 8, -2, 2,  event_weight );
  plotFill("tauAntiMu_"+hNumber,  tauAntiMu, 8, -2, 2 ,  event_weight);
  // double deltaR = my_eleP4.DeltaR(my_tauP4);
  plotFill("deltaR_"+hNumber, deltaR , 10, 0, 1,  event_weight);
  // double deltaPhi = DeltaPhi(elePhi->at(eleIndex), tau_Phi->at(tauIndex));
  // double deltaEta = fabs(eleEta->at(eleIndex) - tau_Eta->at(tauIndex));
  plotFill("deltaPhi_"+hNumber, deltaPhi , 30, -3.14, 3.14,  event_weight);
  plotFill("deltaEta_"+hNumber, deltaEta ,  25, -2.5, 2.5,  event_weight);
  
  plotFill("nVertex_"+hNumber, nVtx ,  24, 0, 60,  event_weight);
  plotFill("nJet_"+hNumber,  my_njets , 6, 0, 6,  event_weight);
  plotFill("met_"+hNumber, my_metP4.Pt() , 20, 0, 200,  event_weight);
  plotFill("metLongXaxis_"+hNumber, my_metP4.Pt() , 10, 100, 200,  event_weight);
  plotFill("metPhi_"+hNumber, my_metP4.Phi() , 30, -3.14, 3.14,  event_weight);
  // double mT_eleMet = TMass_F( my_eleP4.Pt(),my_eleP4.Phi(), my_metP4.Pt(), my_metP4.Phi() );
  plotFill("mT_eleMet_"+hNumber, mT_eleMet , 20, 0, 200,event_weight);

  //double visMass_eletau = (eleP4+ tauP4).M();
  plotFill("visMass_"+hNumber, visMass_eletau , 20, 0, 200,  event_weight);
  
  //double HiggsPt = (my_eleP4 + my_tauP4).Pt();
  plotFill("higgsPt_"+hNumber,HiggsPt ,  40, 0, 400,  event_weight);

  //double delpta_phi_HptMet = (eleP4+tauP4+MET_P4).DeltaPhi(MET_P4);
  plotFill("delptaPhi_HptMet_"+hNumber, delpta_phi_HptMet , 30, -3.14, 3.14,  event_weight);
  
  //double tot_tr_mass = (eleP4 + tauP4 + MET_P4 ).M();
  plotFill("tot_TMass_"+hNumber, tot_tr_mass , 16, 40, 200,  event_weight);
  if (tot_tr_mass >= 2000) tot_tr_mass = 1900;
  float TrMassBins[13]={ 40, 60, 90, 120, 150, 180, 210, 235, 260, 285, 325, 400, 2000};
  plotFill_customBinning("tot_TMass_full_"+hNumber, tot_tr_mass , 12, TrMassBins,  event_weight);

  plotFill("tot_TMass_new_"+hNumber, tot_tr_mass , 196, 40, 2000,  event_weight);

  plotFill("isBoosted_"+hNumber, isBoostedtau , 4, 0, 2,  event_weight);


}

void etau_analyzer::fillHist_nominal(string histNumber, float event_weight){
  string hNumber = histNumber;
  TLorentzVector tauP4, eleP4, MET_P4;
  int eleIndex, tauIndex;
  int genmatch1, genmatch2, njets;
 
  eleIndex = EleIndex; tauIndex = TauIndex;
  plotFill("elePt_"+hNumber,  eleP4.Pt() , 30 , 20.0 , 80.0,  event_weight);
  plotFill("eleEta_"+hNumber, eleP4.Eta(), 48, -2.4, 2.4,  event_weight);
  plotFill("elePhi_"+hNumber, eleP4.Phi(), 30, -3.14, 3.14,  event_weight);
  plotFill("eleDz_"+hNumber,  eleDz->at(eleIndex), 20, -0.2, 0.2,  event_weight);
  plotFill("eleD0_"+hNumber,  eleD0->at(eleIndex), 48, -0.06, 0.06,  event_weight);
  plotFill("eleonID_"+hNumber, eleIDbit->at(eleIndex)>>1&1, 4, -2, 2,  event_weight); // electronID
  float relMuIso = ( elePFChIso->at(eleIndex) + max( elePFNeuIso->at(eleIndex) + elePFPhoIso->at(eleIndex) - 0.5 *elePFPUIso->at(eleIndex) , 0.0 )) / (eleP4.Pt());
  plotFill("relMuIso_"+hNumber, relMuIso, 200, -10, 10,  event_weight);  
  

  float relMuIso_new = ( elePFChIso->at(eleIndex) + max( elePFNeuIso->at(eleIndex) + elePFPhoIso->at(eleIndex) - 0.5 *elePFPUIso->at(eleIndex) , 0.0 ) - tauP4.Pt() ) / (eleP4.Pt());
  plotFill("relMuIsoNew_"+hNumber, relMuIso_new, 200, -10, 10,  event_weight);


  plotFill("eleCharge_"+hNumber, eleCharge->at(eleIndex), 8, -2, 2 ,  event_weight);
  
  plotFill("tauPt_"+hNumber,  tauP4.Pt() , 25 , 30 , 80,  event_weight);
  plotFill("tauEta_"+hNumber, tauP4.Eta(), 25, -2.5, 2.5,  event_weight);
  plotFill("tauPhi_"+hNumber, tauP4.Phi(), 30, -3.14, 3.14,  event_weight);
  plotFill("tauIso_"+hNumber, tau_byMediumDeepTau2017v2p1VSjet->at(tauIndex), 4, -2, 2,  event_weight);
  plotFill("tauDecayMode_"+hNumber, tau_DecayMode->at(tauIndex) , 12, 0, 12,  event_weight);
  plotFill("tauCharge_"+hNumber, tau_Charge->at(tauIndex), 8, -2, 2 ,  event_weight);
  plotFill("tauAntiEle_"+hNumber, tau_byTightDeepTau2017v2p1VSe->at(tauIndex), 8, -2, 2,  event_weight );
  plotFill("tauAntiMu_"+hNumber,  tau_byVLooseDeepTau2017v2p1VSmu->at(tauIndex), 8, -2, 2 ,  event_weight);
  double deltaR = eleP4.DeltaR(tauP4);
  plotFill("deltaR_"+hNumber, deltaR , 40, 0, 6,  event_weight);
  double deltaPhi = DeltaPhi(elePhi->at(eleIndex), tau_Phi->at(tauIndex));
  double deltaEta = fabs(eleEta->at(eleIndex) - tau_Eta->at(tauIndex));
  plotFill("deltaPhi_"+hNumber, deltaPhi , 30, -3.14, 3.14,  event_weight);
  plotFill("deltaEta_"+hNumber, deltaEta ,  25, -2.5, 2.5,  event_weight);
  
  plotFill("nVertex_"+hNumber, nVtx ,  24, 0, 60,  event_weight);
  plotFill("nJet_"+hNumber,  njets , 6, 0, 6,  event_weight);
  plotFill("met_"+hNumber, MET_P4.Pt() , 20, 0, 200,  event_weight);
  plotFill("metLongXaxis_"+hNumber, MET_P4.Pt() , 10, 100, 200,  event_weight);
  plotFill("metPhi_"+hNumber, MET_P4.Phi() , 30, -3.14, 3.14,  event_weight);
  double mT_eleMet = TMass_F( eleP4.Pt(),eleP4.Phi(), MET_P4.Pt(), MET_P4.Phi() );
  plotFill("mT_eleMet_"+hNumber, mT_eleMet , 20, 0, 200,event_weight);

  double visMass_eletau = (eleP4+ tauP4).M();
  plotFill("visMass_"+hNumber, visMass_eletau , 30, 50, 200,  event_weight);
  
  double HiggsPt = (my_eleP4 + my_tauP4).Pt();
  plotFill("higgsPt_"+hNumber,HiggsPt ,  40, 0, 400,  event_weight);

  double delpta_phi_HptMet = (eleP4+tauP4+MET_P4).DeltaPhi(MET_P4);
  plotFill("delptaPhi_HptMet_"+hNumber, delpta_phi_HptMet , 30, -3.14, 3.14,  event_weight);
  
  double tot_tr_mass = (eleP4 + tauP4 + MET_P4 ).M();
  plotFill("tot_TMass_"+hNumber, tot_tr_mass , 16, 40, 200,  event_weight);
  if (tot_tr_mass >= 2000) tot_tr_mass = 1900;
  float TrMassBins[13]={ 40, 60, 90, 120, 150, 180, 210, 235, 260, 285, 325, 400, 2000};
  plotFill_customBinning("tot_TMass_full_"+hNumber, tot_tr_mass , 12, TrMassBins,  event_weight);

  int triggerBin1, triggerBin2, triggerBin3, triggerBin4;
  triggerBin1=triggerBin2=triggerBin3=triggerBin4=0;
  if( HLTEleMuX>>21&1 == 1 )  triggerBin3=3;
  if( HLTEleMuX>>60&1 == 1 ) triggerBin2=2;
  if( HLTTau>>0&1 == 1 )     triggerBin1=1;
  if(triggerBin1>0)
    plotFill("trigger_"+hNumber, triggerBin1 , 5, 0, 5,  event_weight);
  if(triggerBin2>0)
    plotFill("trigger_"+hNumber, triggerBin2 , 5, 0, 5,  event_weight);
  if(triggerBin3>0)
    plotFill("trigger_"+hNumber, triggerBin3 , 5, 0, 5,  event_weight);
  
  int genMatchBin=0;
  if(is_MC){
    if(genmatch2==1) genMatchBin=1;
    else if(genmatch2==2) genMatchBin=2;
    else if(genmatch2==3) genMatchBin=3;
    else if(genmatch2==4) genMatchBin=4;
    else if(genmatch2==5) genMatchBin=5;
    else if(genmatch2==6) genMatchBin=6;
  }
  plotFill("genMatch_"+hNumber, genMatchBin ,7, 0, 7,  event_weight);
  //if(debug)cout <<"plots filled for "<<hNumber<<endl;
}
