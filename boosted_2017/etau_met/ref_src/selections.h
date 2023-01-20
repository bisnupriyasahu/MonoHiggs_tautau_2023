void etau_analyzer::selections(float weight, int shift, string uncObject)
{
  check_unc = false; // set true for printing unc pt, values
  vector<int> boostedtauCand;
  boostedtauCand.clear();

  double event_weight = weight;
  TLorentzVector metP4, event_met_p4;
  if (shift > 0)
    unc_shift = "up";
  else if (shift < 0)
    unc_shift = "down";
  else
    unc_shift = "nominal";
  shift_index = shift;
  selected_systematic = uncObject;
  // cout<<" selected_systematic = "<< selected_systematic << " shift = "<< shift<<endl;
  std::vector<int> event_ele, event_tau;
  event_ele.clear();
  event_tau.clear();
  eleCand.clear();
  tauCand.clear();
  aisrtauCand.clear();
  jetCand.clear();
  for (int i = 0; i < nJet; i++)
    jetPt->at(i) = orginal_jetPt[i];

  event_ele = eleCand;
  event_tau = tauCand;
  event_met_p4 = metP4;

  eleCand = simple_ele_cand(20, 2.3, 0); ///// ele selected
  tauCand = simple_tau_cand(30.0, 2.3, 0);
  boostedtauCand = simple_boostedtau_cand(30.0, 2.3, 0);
  metP4.SetPtEtaPhiE(pfMET, 0, pfMETPhi, pfMET);
  // eleCand = simple_ele_cand(20,2.1, shift);
  int ele_index = -1;
  int tau_index = -1;
  isBoostedtau = true;

  if (eleCand.size() > 0 && ( boostedtauCand.size() > 0))
  {
    // cout<<"passing "<<__LINE__<<endl;
    get_index(eleCand, tauCand, boostedtauCand, ele_index, tau_index, isBoostedtau);

    if (ele_index >= 0 && tau_index >= 0)
    {
      setMyEleTau(ele_index, tau_index, metP4, shift, isBoostedtau);
      // cout<<"passing "<<__LINE__<<endl;
      //if (shift == 0) fillHist("3_dyll", EleIndex, TauIndex, false, event_weight);
      applySf = 1.0;
      if (is_MC)
            applySf = getScaleFactors(my_eleP4.Pt(),
                    my_tauP4.Pt(),
                    my_eleP4.Eta(),
                    my_tauP4.Eta(),
                    tauDecayMode,
                    my_genmatching_l2,
                    false /// this is set to true for fake bakground
                    );
      event_weight = event_weight * applySf;

      //if (shift == 0) fillHist("4_dyll", EleIndex, TauIndex, false, event_weight);
      
      //if (thirdLeptonVeto())
      if(if_DY_Genmatching(EleIndex, TauIndex)==1 || if_DY_Genmatching(EleIndex, TauIndex)==2)
      {
        nPassedThirdLepVeto++;
        //if (pass_bjet_veto)
        {
          nPassedBjetVeto++;

            if (shift == 0) fillHist("5_dyll", EleIndex, TauIndex, false, event_weight);
            
          if(deltaR < 0.5)
          {
            nDeltaRPassed++;
          // cout<<"passing "<<__LINE__<<endl;
            // cout<<__LINE__<<endl;
            if (shift == 0) fillHist("6_dyll", EleIndex, TauIndex, false, event_weight);
            
            if (HiggsPt > 65)
            {
              if (shift == 0) fillHist("7_dyll", EleIndex, TauIndex, false, event_weight);
              if (visMass_eletau < 125)
              {
                if (shift == 0) fillHist("8_dyll", EleIndex, TauIndex, false, event_weight);
                  double mht = 0;
                  double mht_x, mht_y;
                  mht_x = mht_y = 0;
                  // cout<<"passing "<<__LINE__<<endl;
                  for ( int ij = 0; ij < nJet; ij++){
                    mht = mht + jetPt->at(ij);
                    mht_x = mht_x + jetPt->at(ij)*cos(jetPhi->at(ij));
                    mht_y = mht_y + jetPt->at(ij)*sin(jetPhi->at(ij));
                  }          
                  double mht_scalar = sqrt(mht_x*mht_x + mht_y*mht_y);
                if (my_metP4.Pt() > 120 )
                {
                  // cout<<"passing "<<__LINE__<<endl;
                  // cout<<__LINE__<<endl;
                  if (shift == 0) fillHist("9_dyll", EleIndex, TauIndex, false, event_weight);
                  else  fillUncPlots("9_dyll", EleIndex, TauIndex, false, event_weight, shift);
                }
              }
            }
          }
        }
      }
    }
  }
  ele_index = -1;
  tau_index = -1;
  isBoostedtau = true;
  if (eleCand.size() > 0 && ( boostedtauCand.size() > 0))
  {
    // cout<<"passing "<<__LINE__<<endl;
    get_index(eleCand, tauCand, boostedtauCand, ele_index, tau_index, isBoostedtau);

    if (ele_index >= 0 && tau_index >= 0)
    {
      setMyEleTau(ele_index, tau_index, metP4, shift, isBoostedtau);
      // cout<<"passing "<<__LINE__<<endl;
      if (shift == 0) fillHist("3", EleIndex, TauIndex, false, event_weight);
      applySf = 1.0;
      if (is_MC)
            applySf = getScaleFactors(my_eleP4.Pt(),
                    my_tauP4.Pt(),
                    my_eleP4.Eta(),
                    my_tauP4.Eta(),
                    tauDecayMode,
                    my_genmatching_l2,
                    false /// this is set to true for fake bakground
                    );
      event_weight = event_weight * applySf;

      if (shift == 0) fillHist("4", EleIndex, TauIndex, false, event_weight);
      
      //if (thirdLeptonVeto())
      if((if_DY_Genmatching(EleIndex, TauIndex)==1 ||  if_DY_Genmatching(EleIndex, TauIndex)==3))
      {
        nPassedThirdLepVeto++;
        //if (pass_bjet_veto)
        {
          nPassedBjetVeto++;

            if (shift == 0) fillHist("5", EleIndex, TauIndex, false, event_weight);
            
          if(deltaR < 0.5)
          {
            nDeltaRPassed++;
          // cout<<"passing "<<__LINE__<<endl;
            // cout<<__LINE__<<endl;
            if (shift == 0) fillHist("6", EleIndex, TauIndex, false, event_weight);
            
            if (HiggsPt > 65)
            {
              if (shift == 0) fillHist("7", EleIndex, TauIndex, false, event_weight);
              if (visMass_eletau < 125)
              {
                if (shift == 0) fillHist("8", EleIndex, TauIndex, false, event_weight);
                  double mht = 0;
                  double mht_x, mht_y;
                  mht_x = mht_y = 0;
                  cout<<"passing "<<__LINE__<<endl;
                  for ( int ij = 0; ij < nJet; ij++){
                    mht = mht + jetPt->at(ij);
                    mht_x = mht_x + jetPt->at(ij)*cos(jetPhi->at(ij));
                    mht_y = mht_y + jetPt->at(ij)*sin(jetPhi->at(ij));
                  }          
                  double mht_scalar = sqrt(mht_x*mht_x + mht_y*mht_y);
                if (my_metP4.Pt() > 120 )
                {
                  cout<<"passing "<<__LINE__<<endl;
                  // cout<<__LINE__<<endl;
                  if (shift == 0) fillHist("9", EleIndex, TauIndex, false, event_weight);
                  else  fillUncPlots("9", EleIndex, TauIndex, false, event_weight, shift);
                }
              }
            }
          }
        }
      }
    }
  }

  ele_index = -1;
  tau_index = -1;
  isBoostedtau = true;
  //// jet-tau region
  if (eleCand.size() > 0 && ( boostedtauCand.size() > 0))
  {

    get_index_jettau(eleCand, tauCand, boostedtauCand, ele_index, tau_index, isBoostedtau);

    if (ele_index >= 0 && tau_index >= 0)
    {
      setMyEleTau(ele_index, tau_index, metP4, shift, isBoostedtau);
      double frac_tt = 0.01;
      double frac_qcd = 0.24;
      double frac_w = 0.75;
      int category = eventCategory(EleIndex, TauIndex, HiggsPt);
      getFractions(category, visMass_eletau, frac_qcd, frac_w, frac_tt); /// this assigns right values for qcd, w and tt fractions
      bool xtrg = false;
      if (passCrossTrigger && my_eleP4.Pt() <= 25.0)
          xtrg = true;
      else if (my_eleP4.Pt() > 28.0)
          xtrg = false;
      xtrg = false;
      double jetTau_FF = FF_weights_withlpt.get_ff(my_tauP4.Pt(), mT_eleMet, visMass_eletau, 0, my_eleP4.Pt(), my_metP4.Pt(), my_njets, xtrg, frac_tt, frac_qcd, frac_w, TString(" "));

      event_weight = event_weight * jetTau_FF;

      if (shift == 0) fillHist("3_fr", EleIndex, TauIndex, true, event_weight);

      applySf = 1.0;
      if (is_MC)
          applySf = getScaleFactors(my_eleP4.Pt(),
                  my_tauP4.Pt(),
                  my_eleP4.Eta(),
                  my_tauP4.Eta(),
                  tauDecayMode,
                  my_genmatching_l2,
                  true /// this is set to true for fake bakground
                  );
      event_weight = event_weight * applySf;

      if (shift == 0) fillHist("4_fr", EleIndex, TauIndex, true, event_weight);
      //if (thirdLeptonVeto())
      {
        nPassedThirdLepVeto++;
        //if (pass_bjet_veto)
        {
          nPassedBjetVeto++;
          
          if (shift == 0) fillHist("5_fr", EleIndex, TauIndex, true, event_weight);
          
          if(deltaR < 0.5)
          {
            nDeltaRPassed++;
            // cout<<__LINE__<<endl;
            if (shift == 0) fillHist("6_fr", EleIndex, TauIndex, true, event_weight);
            if (HiggsPt > 65)
            {
              if (shift == 0) fillHist("7_fr", EleIndex, TauIndex, true, event_weight);
              if (visMass_eletau < 125)
              {
                if (shift == 0) fillHist("8_fr", EleIndex, TauIndex, true, event_weight);
                double mht = 0;
                  double mht_x, mht_y;
                  mht_x = mht_y = 0;

                  for ( int ij = 0; ij < nJet; ij++){
                    mht = mht + jetPt->at(ij);
                    mht_x = mht_x + jetPt->at(ij)*cos(jetPhi->at(ij));
                    mht_y = mht_y + jetPt->at(ij)*sin(jetPhi->at(ij));
                  }          
                double mht_scalar = sqrt(mht_x*mht_x + mht_y*mht_y);
                if (my_metP4.Pt() > 120)
                {
                  // cout<<__LINE__<<endl;
                  if (shift == 0) fillHist("9_fr", EleIndex, TauIndex, true, event_weight);
                  else  fillUncPlots("9_fr", EleIndex, TauIndex, true, event_weight, shift);
                }
              }
            }
          }
        }
      }
    }
  }
}

void etau_analyzer::get_index(vector<int> ele_indices, vector<int> tau_indices, vector<int> boostedtau_indices, int &ele_index, int &tau_index, bool &isBoostedtau)
{

  ele_index = -1;
  tau_index = -1;
  if (ele_indices.size() > 0 && boostedtau_indices.size() > 0)
  {
    for (int i = 0; i < ele_indices.size(); i++)
    {
      if (ele_index >= 0 && tau_index >= 0)
        break;
      for (int j = 0; j < boostedtau_indices.size(); j++)
      {
        if (ele_index >= 0 && tau_index >= 0)
          break;
        int iEle = ele_indices[i];
        int iTau = boostedtau_indices[j];
        TLorentzVector ele_p4, tau_p4;
        ele_p4.SetPtEtaPhiE(elePt->at(iEle), eleEta->at(iEle), elePhi->at(iEle), eleE->at(iEle));
        tau_p4.SetPtEtaPhiE(boostedTauPt->at(iTau), boostedTauEta->at(iTau), boostedTauPhi->at(iTau), boostedTauEnergy->at(iTau));
        float ele_tau_dr = ele_p4.DeltaR(tau_p4);
        double higgspt = (ele_p4 + tau_p4).Pt();

        if (ele_tau_dr < 0.5                                       // dr selection
            && eleCharge->at(iEle) * boostedTauCharge->at(iTau) < 0 // charge selection
            // && releleIso_to_use < 0.15               // eleon relative isolation
            && boostedTauByLooseIsolationMVArun2v1DBoldDMwLTNew->at(iTau) == 1 // tau isolation
            && boostedTaupfTausDiscriminationByDecayModeFindingNewDMs->at(iTau) == 1
            // && (boostedTauDecayMode->at(iTau) >= 0)                             // decay modes
            && boostedTauByMVA6LooseElectronRejection->at(iTau) == 1           // anti ele
            && boostedTauByLooseMuonRejection3->at(iTau) == 1              // anti muon
        )
        {
          ele_index = iEle;
          tau_index = iTau;
          isBoostedtau = true;
          return;
          /////////// okay we found the ele-au pair, exit these loops
        }
      }
    }
  }

  
  ele_index = -1;
  tau_index = -1;
  isBoostedtau = false;
  return;
}

void etau_analyzer::get_index_jettau(vector<int> ele_indices, vector<int> tau_indices, vector<int> boostedtau_indices, int &ele_index, int &tau_index, bool &isBoostedtau)
{

  ele_index = -1;
  tau_index = -1;
  if (ele_indices.size() > 0 && boostedtau_indices.size() > 0)
  { 
    for (int i = 0; i < ele_indices.size(); i++)
    {
      if (ele_index >= 0 && tau_index >= 0)
        break;
      for (int j = 0; j < boostedtau_indices.size(); j++)
      {
        if (ele_index >= 0 && tau_index >= 0)
          break;
        int iEle = ele_indices[i];
        int iTau = boostedtau_indices[j];
        TLorentzVector ele_p4, tau_p4;
        ele_p4.SetPtEtaPhiE(elePt->at(iEle), eleEta->at(iEle), elePhi->at(iEle), eleE->at(iEle));
        tau_p4.SetPtEtaPhiE(boostedTauPt->at(iTau), boostedTauEta->at(iTau), boostedTauPhi->at(iTau), boostedTauEnergy->at(iTau));
        float ele_tau_dr = ele_p4.DeltaR(tau_p4);
        double higgspt = (ele_p4 + tau_p4).Pt();

        if (ele_tau_dr < 0.5                                       // dr selection
            && eleCharge->at(iEle) * boostedTauCharge->at(iTau) < 0 // charge selection
            // && releleIso_to_use < 0.15               // eleon relative isolation
            && boostedTauByLooseIsolationMVArun2v1DBoldDMwLTNew->at(iTau) == 0 // tau isolation
            && boostedTauByVLooseIsolationMVArun2v1DBoldDMwLTNew->at(iTau) == 1 // tau isolation
            && boostedTaupfTausDiscriminationByDecayModeFindingNewDMs->at(iTau) == 1
            //&& (boostedTauDecayMode->at(iTau) >= 0)                             // decay modes
            && boostedTauByMVA6LooseElectronRejection->at(iTau) == 1           // anti ele
            && boostedTauByLooseMuonRejection3->at(iTau) == 1              // anti muon
        )
        {
          ele_index = iEle;
          tau_index = iTau;
          isBoostedtau = true;
          return;
          /////////// okay we found the ele-au pair, exit these loops
        }
      }
    }
  }

  ele_index = -1;
  tau_index = -1;
  isBoostedtau = false;
  return;

}
