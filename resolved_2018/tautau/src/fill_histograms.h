void tautau_analyzer::fillHist( string histNumber , int tau1Index, int tau2Index, TLorentzVector a, TLorentzVector b,  bool isFakeBkg, float event_weight){
  string hNumber = histNumber;
  //cout<<" in fillHist event_weight="<<event_weight<<endl;
  /// leading tau 
  //  TLorentzVector tmp_tau1, tmp_tau2;
  //tmp_tau1.SetPtEtaPhiE(tau_Pt->at(tau1Index),tau_Eta->at(tau1Index)
  //                       ,tau_Phi->at(tau1Index), tau_Energy->at(tau1Index)
  //                    );
//tmp_tau2.SetPtEtaPhiE(tau_Pt->at(tau2Index),tau_Eta->at(tau2Index)
  //                     ,tau_Phi->at(tau2Index), tau_Energy->at(tau2Index)
  //                    );
  my_tau1P4 = a;
  my_tau2P4 = b;
  //cout<<"coming in selection fill hist 1 "<<endl;
  plotFill("tau1Pt_"+hNumber,  my_tau1P4.Pt() , 30 , 40 , 180,  event_weight);
  plotFill("tau1Eta_"+hNumber, my_tau1P4.Eta(), 22, -2.1, 2.1,  event_weight);
  plotFill("tau1Phi_"+hNumber, my_tau1P4.Phi(), 30, -3.14, 3.14,  event_weight);
  plotFill("tau1Charge_"+hNumber, tau_Charge->at(tau1Index), 8, -2, 2 ,  event_weight);
  //cout<<"coming in selection fill hist 2 "<<endl;
  plotFill("tau1Iso_"+hNumber, tau_byMediumDeepTau2017v2p1VSjet->at(tau1Index), 4, -2, 2,  event_weight);
  //cout<<"coming in selection fill hist 3 "<<endl;
  //plotFill("tau1rawiso_"+hNumber, tau_byIsolationMVArun2017v2DBoldDMwLTraw2017->at(tau1Index), 20, -1, 1,  event_weight);
  //cout<<"coming in selection fill hist 4 "<<endl;
  plotFill("tau1DecayMode_"+hNumber, tau_DecayMode->at(tau1Index) , 12, 0, 12,  event_weight);
  /// subleading tau
  plotFill("tau2Pt_"+hNumber,  my_tau2P4.Pt() , 30 , 40 , 120,  event_weight);
  plotFill("tau2Eta_"+hNumber, my_tau2P4.Eta(), 22, -2.1, 2.1,  event_weight);
  plotFill("tau2Phi_"+hNumber, my_tau2P4.Phi(), 30, -3.14, 3.14,  event_weight);
  plotFill("tau2Iso_"+hNumber, tau_byMediumDeepTau2017v2p1VSjet->at(tau2Index), 4, -2, 2,  event_weight);
  //plotFill("tau2rawiso_"+hNumber, tau_byIsolationMVArun2017v2DBoldDMwLTraw2017->at(tau2Index), 20, -1, 1,  event_weight);
  plotFill("tau2DecayMode_"+hNumber, tau_DecayMode->at(tau2Index) , 12, 0, 12,  event_weight);
  plotFill("tau2Charge_"+hNumber, tau_Charge->at(tau2Index), 8, -2, 2 ,  event_weight);
  //cout<<"coming in selection fill hist 5 "<<endl;


  double deltaR = my_tau1P4.DeltaR(my_tau2P4);
  plotFill("deltaR_"+hNumber, deltaR , 30, 0, 6,  event_weight);
  double deltaPhi = DeltaPhi(my_tau1P4.Phi(), my_tau2P4.Phi());
  double deltaEta = fabs(my_tau1P4.Eta() - my_tau2P4.Eta());
  plotFill("deltaPhi_"+hNumber, deltaPhi , 30, 0, 3.14,  event_weight);
  plotFill("deltaEta_"+hNumber, deltaEta ,  25, 0, 2.5,  event_weight);

  plotFill("nJet_"+hNumber,  my_njets , 8, 0, 8,  event_weight);
  plotFill("met_"+hNumber, my_metP4.Pt() , 30, 0, 150,  event_weight);
  plotFill("metLongXaxis_"+hNumber, my_metP4.Pt() , 40, 0, 200,  event_weight);
  plotFill("metPhi_"+hNumber, my_metP4.Phi() , 30, -3.14, 3.14,  event_weight);
  double mT_tauMet = TMass_F( my_tau1P4.Pt(),my_tau1P4.Phi(), my_metP4.Pt(), my_metP4.Phi() );
  plotFill("mT_tauMet_"+hNumber, mT_tauMet , 30, 0, 150,  event_weight);

  double visMass_mutau = (my_tau1P4+ my_tau2P4).M();
  plotFill("visMass_"+hNumber, visMass_mutau , 30, 0, 300,  event_weight);
  
  double HiggsPt = (my_tau1P4+my_tau2P4).Pt();
  plotFill("higgsPt_"+hNumber,HiggsPt , 30, 0, 230,  event_weight);

  //  double tot_tr_mass = (my_tau1P4 + my_tau2P4 + my_metP4 ).M();
  double tot_tr_mass = TMasstaumet_F(my_tau1P4,my_tau2P4,my_metP4);
  if (tot_tr_mass >= 2000) tot_tr_mass = 1900;
  plotFill("tot_TMass_"+hNumber, tot_tr_mass , 16, 40, 200,  event_weight);
  float TrMassBins[13]={40, 60, 90, 120, 150, 180, 210, 235, 260, 285, 325, 400, 2000};
  plotFill_customBinning("tot_TMass_full_"+hNumber, tot_tr_mass , 12, TrMassBins,  event_weight);

  plotFill("tot_TMass_new_"+hNumber, tot_tr_mass , 196, 40, 2000,  event_weight);


  double met_with_overflow = my_metP4.Pt();
  if ( met_with_overflow>= 2000 )
    met_with_overflow = 1900;
  plotFill_customBinning("metFull_"+hNumber, met_with_overflow , 12, TrMassBins,  event_weight);
  
  int triggerBin1, triggerBin2, triggerBin3, triggerBin4;
  triggerBin1=triggerBin2=triggerBin3=triggerBin4=0;
  if( HLTTau>>17&1 == 1 )     triggerBin4=4;
  if( HLTTau>>7&1 == 1 )     triggerBin3=3;
  if( HLTTau>>6&1 == 1 )     triggerBin2=2;
  if( HLTTau>>5&1 == 1 )     triggerBin1=1;
  if(triggerBin1>0)
    plotFill("trigger_"+hNumber, triggerBin1 , 5, 0, 5,  event_weight);
  if(triggerBin2>0)
    plotFill("trigger_"+hNumber, triggerBin2 , 5, 0, 5,  event_weight);
  if(triggerBin3>0)
    plotFill("trigger_"+hNumber, triggerBin3 , 5, 0, 5,  event_weight);
  if(triggerBin4>0)
    plotFill("trigger_"+hNumber, triggerBin4 , 5, 0, 5,  event_weight);
  
  
}

void tautau_analyzer::fillHist_nominal(string histNumber, float event_weight){
  string hNumber = histNumber;
  TLorentzVector tau1P4, tau2P4, MET_P4;
  int tau1Index, tau2Index;
  int genmatch1, genmatch2, njets;
  if (stage=="5")
    {
      tau1P4  = my_tau1P4_nom_5;
      tau2P4 = my_tau2P4_nom_5;
      MET_P4 = my_metP4_nom_5;
      genmatch1 = l1_genmatching_nom;
      genmatch2 = l2_genmataching_nom;
      njets= my_njets_nom_5;
    }
  if (stage=="9")
    {
      tau1P4  = my_tau1P4_nom_9;
      tau2P4 = my_tau2P4_nom_9;
      MET_P4 = my_metP4_nom_9;
      genmatch1 = l1_genmatching_nom;
      genmatch2 = l2_genmataching_nom;
      njets= my_njets_nom_9;
    }
  tau1Index = Tau1Index; tau2Index = Tau2Index;
  
  plotFill("tau1Pt_"+hNumber,  tau1P4.Pt() , 30 , 40 , 180,  event_weight);
  plotFill("tau1Eta_"+hNumber, tau1P4.Eta(), 22, -2.1, 2.1,  event_weight);
  plotFill("tau1Phi_"+hNumber, tau1P4.Phi(), 30, -3.14, 3.14,  event_weight);
  plotFill("tau1Charge_"+hNumber, tau_Charge->at(tau1Index), 8, -2, 2 ,  event_weight);
  plotFill("tau1Iso_"+hNumber, tau_byMediumDeepTau2017v2p1VSjet->at(tau1Index), 4, -2, 2,  event_weight);
  //plotFill("tau1rawiso_"+hNumber, tau_byIsolationMVArun2017v2DBoldDMwLTraw2017->at(tau1Index), 20, -1, 1,  event_weight);
  plotFill("tau1DecayMode_"+hNumber, tau_DecayMode->at(tau1Index) , 12, 0, 12,  event_weight);
  /// subleading tau
  plotFill("tau2Pt_"+hNumber,  tau2P4.Pt() , 30 , 40 , 120,  event_weight);
  plotFill("tau2Eta_"+hNumber, tau2P4.Eta(), 22, -2.1, 2.1,  event_weight);
  plotFill("tau2Phi_"+hNumber, tau2P4.Phi(), 30, -3.14, 3.14,  event_weight);
  plotFill("tau2Iso_"+hNumber, tau_byMediumDeepTau2017v2p1VSjet->at(tau2Index), 4, -2, 2,  event_weight);
  //plotFill("tau2rawiso_"+hNumber, tau_byIsolationMVArun2017v2DBoldDMwLTraw2017->at(tau2Index), 20, -1, 1,  event_weight);
  plotFill("tau2DecayMode_"+hNumber, tau_DecayMode->at(tau2Index) , 12, 0, 12,  event_weight);
  plotFill("tau2Charge_"+hNumber, tau_Charge->at(tau2Index), 8, -2, 2 ,  event_weight);


  double deltaR = tau1P4.DeltaR(tau2P4);
  plotFill("deltaR_"+hNumber, deltaR , 30, 0, 6,  event_weight);
  double deltaPhi = DeltaPhi(tau1P4.Phi(), tau2P4.Phi());
  double deltaEta = fabs(tau1P4.Eta() - tau2P4.Eta());
  plotFill("deltaPhi_"+hNumber, deltaPhi , 30, 0, 3.14,  event_weight);
  plotFill("deltaEta_"+hNumber, deltaEta ,  25, 0, 2.5,  event_weight);

  plotFill("nJet_"+hNumber,  my_njets , 8, 0, 8,  event_weight);
  plotFill("met_"+hNumber, my_metP4.Pt() , 30, 0, 150,  event_weight);
  plotFill("metLongXaxis_"+hNumber, my_metP4.Pt() , 40, 0, 200,  event_weight);
  plotFill("metPhi_"+hNumber, my_metP4.Phi() , 30, -3.14, 3.14,  event_weight);
  double mT_tauMet = TMass_F( tau2P4.Pt(),tau2P4.Phi(), my_metP4.Pt(), my_metP4.Phi() );
  plotFill("mT_tauMet_"+hNumber, mT_tauMet , 30, 0, 150,  event_weight);

  double visMass_mutau = (tau1P4+ tau2P4).M();
  plotFill("visMass_"+hNumber, visMass_mutau , 30, 0, 300,  event_weight);
  
  double HiggsPt = (my_tau1P4+my_tau2P4).Pt();
  plotFill("higgsPt_"+hNumber,HiggsPt , 30, 0, 230,  event_weight);

  double tot_tr_mass = (tau1P4 + tau2P4 + my_metP4 ).M();
  if (tot_tr_mass >= 2000) tot_tr_mass = 1900;
  plotFill("tot_TMass_"+hNumber, tot_tr_mass , 16, 40, 200,  event_weight);
  float TrMassBins[13]={40, 60, 90, 120, 150, 180, 210, 235, 260, 285, 325, 400, 2000};
  plotFill_customBinning("tot_TMass_full_"+hNumber, tot_tr_mass , 12, TrMassBins,  event_weight);

  int triggerBin1, triggerBin2, triggerBin3, triggerBin4;
  triggerBin1=triggerBin2=triggerBin3=triggerBin4=0;
  if( HLTTau>>7&1 == 1 )     triggerBin3=3;
  if( HLTTau>>6&1 == 1 )     triggerBin2=2;
  if( HLTTau>>5&1 == 1 )     triggerBin1=1;
  if(triggerBin1>0)
    plotFill("trigger_"+hNumber, triggerBin1 , 5, 0, 5,  event_weight);
  if(triggerBin2>0)
    plotFill("trigger_"+hNumber, triggerBin2 , 5, 0, 5,  event_weight);
  if(triggerBin3>0)
    plotFill("trigger_"+hNumber, triggerBin3 , 5, 0, 5,  event_weight);
  if(triggerBin4>0)
    plotFill("trigger_"+hNumber, triggerBin4 , 5, 0, 5,  event_weight);


}
