void etau_analyzer::fillHist( string histNumber , int eleIndex, int tauIndex, bool isFakeBkg, float event_weight){
  string hNumber = histNumber;
  
  /* if (event_weight<0 || event_weight>3) */
  /*   cout<<" in fillHist event_weight = "<<event_weight<<endl; */
  if (event_weight<0) event_weight = 0.0;
  //plotFill("elePt_"+hNumber,  my_eleP4.Pt() , 38 , 24 , 100,  event_weight);
  plotFill("elePt_"+hNumber,  my_eleP4.Pt() , 10 , 0 , 100,  event_weight);  /// binning same as 2016 AN
  plotFill("eleEta_"+hNumber, my_eleP4.Eta(), 25, -2.5, 2.5,  event_weight);
  plotFill("elePhi_"+hNumber, my_eleP4.Phi(), 30, -3.14, 3.14,  event_weight);
  plotFill("eleDz_"+hNumber,  eleDz->at(eleIndex), 20, -0.2, 0.2,  event_weight);
  plotFill("eleD0_"+hNumber,  eleD0->at(eleIndex), 20, -0.05, 0.05,  event_weight);
  plotFill("electronID_"+hNumber, eleIDbit->at(eleIndex)>>8&1, 4, -2, 2,  event_weight); // electronID
  float relEleIso = ( elePFChIso->at(eleIndex) + max( elePFNeuIso->at(eleIndex) + elePFPhoIso->at(eleIndex) - 0.5 *elePFPUIso->at(eleIndex) , 0.0 )) / (my_eleP4.Pt());
  plotFill("relEleIso_"+hNumber, relEleIso, 15, 0, 0.3,  event_weight);
  plotFill("eleCharge_"+hNumber, eleCharge->at(eleIndex), 8, -2, 2 ,  event_weight);
  
  //plotFill("tauPt_"+hNumber,  my_tauP4.Pt() , 25 , 30 , 80,  event_weight);
  plotFill("tauPt_"+hNumber,  my_tauP4.Pt() , 10 , 30 , 80,  event_weight);  /// binning same as 2016 AN
  plotFill("tauEta_"+hNumber, my_tauP4.Eta(), 25, -2.5, 2.5,  event_weight);
  plotFill("tauPhi_"+hNumber, my_tauP4.Phi(), 30, -3.14, 3.14,  event_weight);
  plotFill("tauIso_"+hNumber, tau_byMediumDeepTau2017v2p1VSjet->at(tauIndex), 4, -2, 2,  event_weight);
  plotFill("tauDecayMode_"+hNumber, tau_DecayMode->at(tauIndex) , 12, 0, 12,  event_weight);
  plotFill("tauCharge_"+hNumber, tau_Charge->at(tauIndex), 8, -2, 2 ,  event_weight);
  plotFill("tauAntiEle_"+hNumber, tau_byTightDeepTau2017v2p1VSe->at(tauIndex), 8, -2, 2,  event_weight );
  plotFill("tauAntiMu_"+hNumber,  tau_byVLooseDeepTau2017v2p1VSmu->at(tauIndex), 8, -2, 2 ,  event_weight);
  double deltaR = my_eleP4.DeltaR(my_tauP4);
  plotFill("deltaR_"+hNumber, deltaR , 30, 0, 3,  event_weight);
  double deltaPhi = DeltaPhi(elePhi->at(eleIndex), tau_Phi->at(tauIndex));
  double deltaEta = fabs(eleEta->at(eleIndex) - tau_Eta->at(tauIndex));
  plotFill("deltaPhi_"+hNumber, deltaPhi , 30, -3.14, 3.14,  event_weight);
  plotFill("deltaEta_"+hNumber, deltaEta ,  25, -2.5, 2.5,  event_weight);

  plotFill("nJet_"+hNumber,  my_njets , 8, 0, 8,  event_weight);
  plotFill("met_"+hNumber, my_metP4.Pt() , 20, 0, 100,  event_weight);
  //plotFill("metLongXaxis_"+hNumber, my_metP4.Pt() , 40, 0, 200,  event_weight);
  plotFill("metLongXaxis_"+hNumber, my_metP4.Pt() , 20, 100, 200,  event_weight); /// binning same as 2016 AN
  plotFill("metPhi_"+hNumber, my_metP4.Phi() , 30, -3.14, 3.14,  event_weight);
  double mT_eleMet = TMass_F( my_eleP4.Pt(),my_eleP4.Phi(), my_metP4.Pt(), my_metP4.Phi() );
  plotFill("mT_eleMet_"+hNumber, mT_eleMet , 30, 0, 150,  event_weight);

  double visMass_mutau = (my_eleP4+ my_tauP4).M();
  //plotFill("visMass_"+hNumber, visMass_mutau , 30, 50, 200,  event_weight);
  plotFill("visMass_"+hNumber, visMass_mutau , 20, 25, 125,  event_weight);  /// binning same as 2016 AN

  double HiggsPt = (my_eleP4+my_tauP4).Pt();
  //plotFill("higgsPt_"+hNumber,HiggsPt , 25, 0, 250,  event_weight);
  plotFill("higgsPt_"+hNumber,HiggsPt , 20, 0, 200,  event_weight); /// binning same as 2016 AN

  double tot_tr_mass = (my_eleP4 + my_tauP4 + my_metP4 ).M();
  plotFill("tot_TMass_"+hNumber, tot_tr_mass , 16, 40, 200,  event_weight);
  if (tot_tr_mass >= 2000) tot_tr_mass = 1900;
  float TrMassBins[13]={ 40, 60, 90, 120, 150, 180, 210, 235, 260, 285, 325, 400, 2000};
  plotFill_customBinning("tot_TMass_full_"+hNumber, tot_tr_mass , 12, TrMassBins,  event_weight);
  double met_with_overflow = my_metP4.Pt();
  if ( met_with_overflow>= 2000 )
    met_with_overflow = 1900;
  plotFill_customBinning("metFull_"+hNumber, met_with_overflow , 12, TrMassBins,  event_weight);
  
  int triggerBin1, triggerBin2, triggerBin3, triggerBin4;
  triggerBin1=triggerBin2=triggerBin3=triggerBin4=0;
  if( HLTEleMuX>>5&1 == 1 )  triggerBin4=4;
  if( HLTEleMuX>>61&1 == 1 ) triggerBin3=3;
  if( HLTTau>>1&1 == 1 || HLTTau>>16&1==1 )     triggerBin1=1;
  if(triggerBin1>0)
    plotFill("trigger_"+hNumber, triggerBin1 , 5, 0, 5,  event_weight);
  if(triggerBin2>0)
    plotFill("trigger_"+hNumber, triggerBin2 , 5, 0, 5,  event_weight);
  if(triggerBin3>0)
    plotFill("trigger_"+hNumber, triggerBin3 , 5, 0, 5,  event_weight);
  if(triggerBin4>0)
    plotFill("trigger_"+hNumber, triggerBin4 , 5, 0, 5,  event_weight);
  
  int genMatchBin=0;
  if(is_MC){
    if(my_genmatching_l2==1) genMatchBin=1;
    else if(my_genmatching_l2==2) genMatchBin=2;
    else if(my_genmatching_l2==3) genMatchBin=3;
    else if(my_genmatching_l2==4) genMatchBin=4;
    else if(my_genmatching_l2==5) genMatchBin=5;
    else if(my_genmatching_l2==6) genMatchBin=6;
  }
  plotFill("genMatch_"+hNumber, genMatchBin ,7, 0, 7,  event_weight);
  //if(debug)cout <<"plots filled for "<<hNumber<<endl;
  
}
void etau_analyzer::fillHist_nominal(string histNumber, float event_weight){
  string hNumber = histNumber;
  TLorentzVector tauP4, eleP4, MET_P4;
  int eleIndex, tauIndex;
  int genmatch1, genmatch2, njets;
  ////cout<<__LINE__<<"  fillHist_nominal  "<<endl;
  if (stage=="5_dyll")
    {
      eleP4  = my_eleP4_nom_5dyll;
      tauP4 = my_tauP4_nom_5dyll;
      MET_P4 = my_metP4_nom_5dyll;
      eleIndex = EleIndex_nomdyll;
      tauIndex = TauIndex_nomdyll;
      genmatch1 = l1_genmatching_nomdyll;
      genmatch2 = l2_genmataching_nomdyll;
      njets= my_njets_nom_5dyll;
    }
  if (stage=="9_dyll")
    {
      eleP4  = my_eleP4_nom_9dyll;
      tauP4 = my_tauP4_nom_9dyll;
      MET_P4 = my_metP4_nom_9dyll;
      eleIndex = EleIndex_nomdyll;
      tauIndex = TauIndex_nomdyll;
      genmatch1 = l1_genmatching_nomdyll;
      genmatch2 = l2_genmataching_nomdyll;
      njets= my_njets_nom_9dyll;
    }
  if (stage=="5")
    {
      eleP4  = my_eleP4_nom_5;
      tauP4 = my_tauP4_nom_5;
      MET_P4 = my_metP4_nom_5;
      eleIndex = EleIndex_nom;
      tauIndex = TauIndex_nom;
      genmatch1 = l1_genmatching_nom;
      genmatch2 = l2_genmataching_nom;
      njets= my_njets_nom_5;
    }
  if (stage=="9")
    {
      eleP4  = my_eleP4_nom_9;
      tauP4 = my_tauP4_nom_9;
      MET_P4 = my_metP4_nom_9;
      eleIndex = EleIndex_nom;
      tauIndex = TauIndex_nom;
      genmatch1 = l1_genmatching_nom;
      genmatch2 = l2_genmataching_nom;
      njets= my_njets_nom_9;
    }
  eleIndex = EleIndex; tauIndex=TauIndex;
  //cout<<__LINE__<<"  fillHist_nominal  "<<endl;
  //plotFill("elePt_"+hNumber,  eleP4.Pt() , 38 , 24 , 100,  event_weight);
  plotFill("elePt_"+hNumber,  eleP4.Pt() , 10 , 0 , 100,  event_weight);  /// binning same as 2016 AN
  plotFill("eleEta_"+hNumber, eleP4.Eta(), 25, -2.5, 2.5,  event_weight);
  plotFill("elePhi_"+hNumber, eleP4.Phi(), 30, -3.14, 3.14,  event_weight);
  //cout<<__LINE__<<"  fillHist_nominal  "<<endl;
  plotFill("eleDz_"+hNumber,  eleDz->at(eleIndex), 20, -0.2, 0.2,  event_weight);
  //cout<<__LINE__<<"  fillHist_nominal  "<<endl;
  plotFill("eleD0_"+hNumber,  eleD0->at(eleIndex), 20, -0.05, 0.05,  event_weight);
  plotFill("electronID_"+hNumber, eleIDbit->at(eleIndex)>>8&1, 4, -2, 2,  event_weight); // electronID
  float relEleIso = ( elePFChIso->at(eleIndex) + max( elePFNeuIso->at(eleIndex) + elePFPhoIso->at(eleIndex) - 0.5 *elePFPUIso->at(eleIndex) , 0.0 )) / (eleP4.Pt());
  plotFill("relEleIso_"+hNumber, relEleIso, 15, 0, 0.3,  event_weight);
  plotFill("eleCharge_"+hNumber, eleCharge->at(eleIndex), 8, -2, 2 ,  event_weight);
  //cout<<__LINE__<<"  fillHist_nominal  "<<endl;  
  //plotFill("tauPt_"+hNumber,  tauP4.Pt() , 25 , 30 , 80,  event_weight);
  plotFill("tauPt_"+hNumber,  tauP4.Pt() , 10 , 30 , 80,  event_weight);  /// binning same as 2016 AN
  plotFill("tauEta_"+hNumber, tauP4.Eta(), 25, -2.5, 2.5,  event_weight);
  plotFill("tauPhi_"+hNumber, tauP4.Phi(), 30, -3.14, 3.14,  event_weight);
  //cout<<__LINE__<<"  fillHist_nominal  "<<endl;
  plotFill("tauIso_"+hNumber, tau_byMediumDeepTau2017v2p1VSjet->at(tauIndex), 4, -2, 2,  event_weight);
  plotFill("tauDecayMode_"+hNumber, tau_DecayMode->at(tauIndex) , 12, 0, 12,  event_weight);
  //cout<<__LINE__<<"  fillHist_nominal  "<<endl;
  plotFill("tauCharge_"+hNumber, tau_Charge->at(tauIndex), 8, -2, 2 ,  event_weight);
  plotFill("tauAntiEle_"+hNumber, tau_byTightDeepTau2017v2p1VSe->at(tauIndex), 8, -2, 2,  event_weight );
  plotFill("tauAntiMu_"+hNumber,  tau_byVLooseDeepTau2017v2p1VSmu->at(tauIndex), 8, -2, 2 ,  event_weight);
  //cout<<__LINE__<<"  fillHist_nominal  "<<endl;
  double deltaR = eleP4.DeltaR(tauP4);
  plotFill("deltaR_"+hNumber, deltaR , 30, 0, 3,  event_weight);
  double deltaPhi = DeltaPhi(elePhi->at(eleIndex), tau_Phi->at(tauIndex));
  double deltaEta = fabs(eleEta->at(eleIndex) - tau_Eta->at(tauIndex));
  plotFill("deltaPhi_"+hNumber, deltaPhi , 30, -3.14, 3.14,  event_weight);
  plotFill("deltaEta_"+hNumber, deltaEta ,  25, -2.5, 2.5,  event_weight);
  //cout<<__LINE__<<"  fillHist_nominal  "<<endl;
  plotFill("nJet_"+hNumber,  njets , 8, 0, 8,  event_weight);
  plotFill("met_"+hNumber, MET_P4.Pt() , 20, 0, 100,  event_weight);
  //plotFill("metLongXaxis_"+hNumber, MET_P4.Pt() , 40, 0, 200,  event_weight);
  plotFill("metLongXaxis_"+hNumber, MET_P4.Pt() , 20, 100, 200,  event_weight); /// binning same as 2016 AN
  plotFill("metPhi_"+hNumber, MET_P4.Phi() , 30, -3.14, 3.14,  event_weight);
  double mT_eleMet = TMass_F( eleP4.Pt(),eleP4.Phi(), MET_P4.Pt(), MET_P4.Phi() );
  plotFill("mT_eleMet_"+hNumber, mT_eleMet , 30, 0, 150,  event_weight);

  double visMass_mutau = (eleP4+ tauP4).M();
  //plotFill("visMass_"+hNumber, visMass_mutau , 30, 50, 200,  event_weight);
  plotFill("visMass_"+hNumber, visMass_mutau , 20, 25, 125,  event_weight);  /// binning same as 2016 AN

  double HiggsPt = (eleP4+tauP4).Pt();
  //plotFill("higgsPt_"+hNumber,HiggsPt , 25, 0, 250,  event_weight);
  plotFill("higgsPt_"+hNumber,HiggsPt , 20, 0, 200,  event_weight); /// binning same as 2016 AN

  double tot_tr_mass = (eleP4 + tauP4 + MET_P4 ).M();
  plotFill("tot_TMass_"+hNumber, tot_tr_mass , 16, 40, 200,  event_weight);
  if (tot_tr_mass >= 2000) tot_tr_mass = 1900;
  float TrMassBins[13]={ 40, 60, 90, 120, 150, 180, 210, 235, 260, 285, 325, 400, 2000};
  plotFill_customBinning("tot_TMass_full_"+hNumber, tot_tr_mass , 12, TrMassBins,  event_weight);

  int triggerBin1, triggerBin2, triggerBin3, triggerBin4;
  triggerBin1=triggerBin2=triggerBin3=triggerBin4=0;
  if( HLTEleMuX>>5&1 == 1 )  triggerBin4=4;
  if( HLTEleMuX>>61&1 == 1 ) triggerBin3=3;
  if( HLTTau>>1&1 == 1 || HLTTau>>16&1==1 )     triggerBin1=1;
  if(triggerBin1>0)
    plotFill("trigger_"+hNumber, triggerBin1 , 5, 0, 5,  event_weight);
  if(triggerBin2>0)
    plotFill("trigger_"+hNumber, triggerBin2 , 5, 0, 5,  event_weight);
  if(triggerBin3>0)
    plotFill("trigger_"+hNumber, triggerBin3 , 5, 0, 5,  event_weight);
  if(triggerBin4>0)
    plotFill("trigger_"+hNumber, triggerBin4 , 5, 0, 5,  event_weight);
  
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
  //if(debug)//cout <<"plots filled for "<<hNumber<<endl;
  //cout<<__LINE__<<"  fillHist_nominal  "<<endl;
}
