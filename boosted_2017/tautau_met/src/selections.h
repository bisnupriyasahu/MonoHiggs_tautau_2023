void tautau_analyzer::selections(float weight, int shift, string uncObject)
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
  std::vector<int> event_mu, event_tau;
  event_mu.clear();
  event_tau.clear();
  muCand.clear();
  tauCand.clear();
  aisrtauCand.clear();
  jetCand.clear();
  for (int i = 0; i < nJet; i++)
    jetPt->at(i) = orginal_jetPt[i];

  event_mu = muCand;
  event_tau = tauCand;
  event_met_p4 = metP4;

  boostedtauCand = simple_boostedtau_cand(40, 2.1, 0);
  metP4.SetPtEtaPhiE(pfMET, 0, pfMETPhi, pfMET);
  // muCand = simple_mu_cand(20,2.1, shift);
  int tau1_index = -1;
  int tau2_index = -1;
  isBoostedtau = true;

  if  (boostedtauCand.size() > 1)
  {

    get_index( boostedtauCand, tau1_index, tau2_index, isBoostedtau);


    if (tau1_index >= 0 && tau2_index >= 0)
    {
      setMyEleTau(tau1_index, tau2_index, metP4, shift, isBoostedtau);

      if (shift == 0) fillHist("3", Tau1Index, Tau1Index, false, event_weight);
      // else fillUncPlots("3", Tau1Index, Tau1Index, false, event_weight, shift);

      applySf = 1.0;
      if (is_MC)
            applySf = getScaleFactors(my_tau1P4.Pt(),
                    my_tau2P4.Pt(),
                    my_tau1P4.Eta(),
                    my_tau2P4.Eta(),
                    tau1DecayMode,
                    my_genmatching_l2,
                    false /// this is set to true for fake bakground
                    );
      event_weight = event_weight * applySf;

      if (shift == 0) fillHist("4", Tau1Index, Tau1Index, false, event_weight);
      // else fillUncPlots("4", Tau1Index, Tau1Index, false, event_weight, shift);
      //if (thirdLeptonVeto())
      {
        nPassedThirdLepVeto++;
        //if (pass_bjet_veto)
        {
          nPassedBjetVeto++;

            if (shift == 0) fillHist("5", Tau1Index, Tau1Index, false, event_weight);
	    // else fillUncPlots("5", Tau1Index, Tau1Index, false, event_weight, shift);
          if(deltaR < 0.5)
          {
            nDeltaRPassed++;
          
            // cout<<__LINE__<<endl;
            if (shift == 0) fillHist("6", Tau1Index, Tau1Index, false, event_weight);
	    // else fillUncPlots("6", Tau1Index, Tau1Index, false, event_weight, shift);
            if (HiggsPt > 65)
            {
              if (shift == 0) fillHist("7", Tau1Index, Tau1Index, false, event_weight);
	      // else fillUncPlots("7", Tau1Index, Tau1Index, false, event_weight, shift);
              if (visMass_mutau < 125)
              {
                if (shift == 0) fillHist("8", Tau1Index, Tau1Index, false, event_weight);
		// else fillUncPlots("8", Tau1Index, Tau1Index, false, event_weight, shift);
                  double mht = 0;
                  double mht_x, mht_y;
                  mht_x = mht_y = 0;

                  for ( int ij = 0; ij < nJet; ij++){
                    mht = mht + jetPt->at(ij);
                    mht_x = mht_x + jetPt->at(ij)*cos(jetPhi->at(ij));
                    mht_y = mht_y + jetPt->at(ij)*sin(jetPhi->at(ij));
                  }          
                  double mht_scalar = sqrt(mht_x*mht_x + mht_y*mht_y);
                if (my_metP4.Pt() > 120 )
                {
                  // cout<<__LINE__<<endl;
                  if (shift == 0) fillHist("9", Tau1Index, Tau1Index, false, event_weight);
		  else fillUncPlots("9", Tau1Index, Tau1Index, false, event_weight, shift);
                }
              }
            }
          }
        }
      }
    }
  }

  tau1_index = -1;
  tau2_index = -1;
  isBoostedtau = true;
  //// jet-tau region
  if ( boostedtauCand.size() > 1)
  {

    get_index_jettau( boostedtauCand, tau1_index, tau2_index, isBoostedtau);


    if (tau1_index >= 0 && tau2_index >= 0)
    {
      setMyEleTau(tau1_index, tau2_index, metP4, shift, isBoostedtau);
      double jetTau_FF = 1.0;
	    jetTau_FF = FF_weights_withlpt.get_ff( my_tau1P4.Pt(), mT_muMet, visMass_mutau
					     , 0 , my_tau2P4.Pt(), my_metP4.Pt()
					     , my_njets, 0
					     , 0, 0 , 0
					     , TString(" "));
		      
      event_weight = event_weight * jetTau_FF;

      if (shift == 0) fillHist("3_fr", Tau1Index, Tau1Index, true, event_weight);
      // else fillUncPlots("3_fr", Tau1Index, Tau1Index, true, event_weight, shift);
      applySf = 1.0;
      if (is_MC)
          applySf = getScaleFactors(my_tau1P4.Pt(),
                  my_tau2P4.Pt(),
                  my_tau1P4.Eta(),
                  my_tau2P4.Eta(),
                  tau1DecayMode,
                  my_genmatching_l2,
                  true /// this is set to true for fake bakground
                  );
      event_weight = event_weight * applySf;

      if (shift == 0) fillHist("4_fr", Tau1Index, Tau1Index, true, event_weight);
      // else fillUncPlots("4_fr", Tau1Index, Tau1Index, true, event_weight, shift);
      //if (thirdLeptonVeto())
      {
        nPassedThirdLepVeto++;
        //if (pass_bjet_veto)
        {
          nPassedBjetVeto++;
          
          if (shift == 0) fillHist("5_fr", Tau1Index, Tau1Index, true, event_weight);
	  // else fillUncPlots("5_fr", Tau1Index, Tau1Index, true, event_weight, shift);
          if(deltaR < 0.5)
          {
            nDeltaRPassed++;
            // cout<<__LINE__<<endl;
            if (shift == 0) fillHist("6_fr", Tau1Index, Tau1Index, true, event_weight);
	    // else fillUncPlots("6_fr", Tau1Index, Tau1Index, true, event_weight, shift);
            if (HiggsPt > 65)
            {
              if (shift == 0) fillHist("7_fr", Tau1Index, Tau1Index, true, event_weight);
	      // else fillUncPlots("7_fr", Tau1Index, Tau1Index, true, event_weight, shift);
              if (visMass_mutau < 125)
              {
                if (shift == 0) fillHist("8_fr", Tau1Index, Tau1Index, true, event_weight);
		// else fillUncPlots("8_fr", Tau1Index, Tau1Index, true, event_weight, shift);
                double mht = 0;
                  double mht_x, mht_y;
                  mht_x = mht_y = 0;

                  for ( int ij = 0; ij < nJet; ij++){
                    mht = mht + jetPt->at(ij);
                    mht_x = mht_x + jetPt->at(ij)*cos(jetPhi->at(ij));
                    mht_y = mht_y + jetPt->at(ij)*sin(jetPhi->at(ij));
                  }          
                double mht_scalar = sqrt(mht_x*mht_x + mht_y*mht_y);
                if (my_metP4.Pt() > 120 )
                {
                  // cout<<__LINE__<<endl;
                  if (shift == 0) fillHist("9_fr", Tau1Index, Tau1Index, true, event_weight);
		  else fillUncPlots("9_fr", Tau1Index, Tau1Index, true, event_weight, shift);
                }
              }
            }
          }
        }
      }
    }
  }
}

void tautau_analyzer::get_index(vector<int> boostedtau_indices, int &tau1_index, int &tau2_index, bool &isBoostedtau)
{

  tau1_index = -1;
  tau2_index = -1;
  if (boostedtau_indices.size() > 1)
  {
    for (int i = 0; i < boostedtau_indices.size(); i++)
    {
      for (int j = i+1; j < boostedtau_indices.size(); j++)
      {
        int iTau1 = boostedtau_indices[i];
        int iTau2 = boostedtau_indices[j];
        TLorentzVector tau1_p4, tau2_p4;
        tau1_p4.SetPtEtaPhiE(boostedTauPt->at(iTau1), boostedTauEta->at(iTau1), boostedTauPhi->at(iTau1), boostedTauEnergy->at(iTau1));
        tau2_p4.SetPtEtaPhiE(boostedTauPt->at(iTau2), boostedTauEta->at(iTau2), boostedTauPhi->at(iTau2), boostedTauEnergy->at(iTau2));
        float tau_tau_dr = tau1_p4.DeltaR(tau2_p4);
        double higgspt = (tau1_p4 + tau2_p4).Pt();

        if (tau_tau_dr < 0.5                                       // dr selection
            && boostedTauCharge->at(iTau1) * boostedTauCharge->at(iTau2) < 0 // charge selection
            // && relMuIso_to_use < 0.15               // muon relative isolation
            && boostedTauByLooseIsolationMVArun2v1DBoldDMwLTNew->at(iTau1) == 1 // tau isolation
            && boostedTaupfTausDiscriminationByDecayModeFindingNewDMs->at(iTau1) == 1
            && boostedTauByLooseIsolationMVArun2v1DBoldDMwLTNew->at(iTau2) == 1 // tau isolation
            && boostedTaupfTausDiscriminationByDecayModeFindingNewDMs->at(iTau2) == 1
            // && (boostedTauDecayMode->at(iTau) >= 0)                             // decay modes
            && boostedTauByMVA6LooseElectronRejection->at(iTau1) == 1           // anti ele
            && boostedTauByLooseMuonRejection3->at(iTau1) == 1              // anti muon
            && boostedTauByMVA6LooseElectronRejection->at(iTau2) == 1           // anti ele
            && boostedTauByLooseMuonRejection3->at(iTau2) == 1              // anti muon        )
        )
        {
          tau1_index = iTau1;
          tau2_index = iTau2;
          isBoostedtau = true;
          return;
          /////////// okay we found the mu-au pair, exit these loops
        }
      }
    }
  }

  
  tau1_index = -1;
  tau2_index = -1;
  isBoostedtau = false;
  return;
}


void tautau_analyzer::get_index_jettau(vector<int> boostedtau_indices, int &tau1_index, int &tau2_index, bool &isBoostedtau)
{

  tau1_index = -1;
  tau2_index = -1;
  if (boostedtau_indices.size() > 1)
  {
    for (int i = 0; i < boostedtau_indices.size(); i++)
    {
      for (int j = i+1; j < boostedtau_indices.size(); j++)
      {
        int iTau1 = boostedtau_indices[i];
        int iTau2 = boostedtau_indices[j];
        TLorentzVector tau1_p4, tau2_p4;
        tau1_p4.SetPtEtaPhiE(boostedTauPt->at(iTau1), boostedTauEta->at(iTau1), boostedTauPhi->at(iTau1), boostedTauEnergy->at(iTau1));
        tau2_p4.SetPtEtaPhiE(boostedTauPt->at(iTau2), boostedTauEta->at(iTau2), boostedTauPhi->at(iTau2), boostedTauEnergy->at(iTau2));
        float tau_tau_dr = tau1_p4.DeltaR(tau2_p4);
        double higgspt = (tau1_p4 + tau2_p4).Pt();

        if (tau_tau_dr < 0.5                                       // dr selection
            && boostedTauCharge->at(iTau1) * boostedTauCharge->at(iTau2) < 0 // charge selection
            // && relMuIso_to_use < 0.15               // muon relative isolation
            && boostedTauByVLooseIsolationMVArun2v1DBoldDMwLTNew->at(iTau1) == 1 // tau isolation
            && boostedTaupfTausDiscriminationByDecayModeFindingNewDMs->at(iTau1) == 1
            && boostedTauByVLooseIsolationMVArun2v1DBoldDMwLTNew->at(iTau2) == 1 // tau isolation
            && boostedTaupfTausDiscriminationByDecayModeFindingNewDMs->at(iTau2) == 1
            // && (boostedTauDecayMode->at(iTau) >= 0)                             // decay modes
            && boostedTauByMVA6LooseElectronRejection->at(iTau1) == 1           // anti ele
            && boostedTauByLooseMuonRejection3->at(iTau1) == 1              // anti muon
            && boostedTauByMVA6LooseElectronRejection->at(iTau2) == 1           // anti ele
            && boostedTauByLooseMuonRejection3->at(iTau2) == 1              // anti muon        )
        )
        {
          tau1_index = iTau1;
          tau2_index = iTau2;
          isBoostedtau = true;
          return;
          /////////// okay we found the mu-au pair, exit these loops
        }
      }
    }
  }

  
  tau1_index = -1;
  tau2_index = -1;
  isBoostedtau = false;
  return;
}

