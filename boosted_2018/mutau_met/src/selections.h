void mutau_analyzer::selections(float weight, int shift, string uncObject)
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

  muCand = simple_mu_cand(20, 2.4, 0); ///// ele selected
  tauCand = simple_tau_cand(30.0, 2.3, 0);
  boostedtauCand = simple_boostedtau_cand(30.0, 2.3, 0);
  metP4.SetPtEtaPhiE(pfMET, 0, pfMETPhi, pfMET);
  // muCand = simple_mu_cand(20,2.1, shift);
  int mu_index = -1;
  int tau_index = -1;
  isBoostedtau = true;

  if (muCand.size() > 0 && (boostedtauCand.size() > 0))
  {

    get_index(muCand, tauCand, boostedtauCand, mu_index, tau_index, isBoostedtau);


    if (mu_index >= 0 && tau_index >= 0)
    {
      setMyEleTau(mu_index, tau_index, metP4, shift, isBoostedtau);

      // if (shift == 0)
      //   fillHist("3", MuIndex, TauIndex, false, event_weight);
      // else
      //   fillUncPlots("3", MuIndex, TauIndex, false, event_weight, shift);

      applySf = 1.0;
      if (is_MC)
        applySf = getScaleFactors(my_muP4.Pt(),
                                  my_tauP4.Pt(),
                                  my_muP4.Eta(),
                                  my_tauP4.Eta(),
                                  tauDecayMode,
                                  my_genmatching_l2,
                                  false /// this is set to true for fake bakground
        );
      event_weight = event_weight * applySf;

      // if (shift == 0)
      //   fillHist("4", MuIndex, TauIndex, false, event_weight);
      // else
      //   fillUncPlots("4", MuIndex, TauIndex, false, event_weight, shift);

      //if (thirdLeptonVeto())
      if(if_DY_Genmatching(MuIndex, TauIndex)==1 || if_DY_Genmatching(MuIndex, TauIndex)==2)
      {
        nPassedThirdLepVeto++;
        //if (pass_bjet_veto)
        {
          nPassedBjetVeto++;

          if (shift == 0)
            fillHist("5_dyll", MuIndex, TauIndex, false, event_weight);
          // else
          //   fillUncPlots("5", MuIndex, TauIndex, false, event_weight, shift);

          if (deltaR < 0.5)
          {
            nDeltaRPassed++;

            // cout<<__LINE__<<endl;
            if (shift == 0)
              fillHist("6_dyll", MuIndex, TauIndex, false, event_weight);
            // else
            //   fillUncPlots("6", MuIndex, TauIndex, false, event_weight, shift);

            if (HiggsPt > 65)
            {
              if (shift == 0)
                fillHist("7_dyll", MuIndex, TauIndex, false, event_weight);
              // else
              //   fillUncPlots("7", MuIndex, TauIndex, false, event_weight, shift);

              if (visMass_mutau < 125)
              {
                if (shift == 0)
                  fillHist("8_dyll", MuIndex, TauIndex, false, event_weight);
                // else
                //   fillUncPlots("8", MuIndex, TauIndex, false, event_weight, shift);

                double mht = 0;
                double mht_x, mht_y;
                mht_x = mht_y = 0;

                for (int ij = 0; ij < nJet; ij++)
                {
                  mht = mht + jetPt->at(ij);
                  mht_x = mht_x + jetPt->at(ij) * cos(jetPhi->at(ij));
                  mht_y = mht_y + jetPt->at(ij) * sin(jetPhi->at(ij));
                }
                double mht_scalar = sqrt(mht_x * mht_x + mht_y * mht_y);
                if (my_metP4.Pt() > 120)
                {
                  // cout<<__LINE__<<endl;
                  if (shift == 0)
                    fillHist("9_dyll", MuIndex, TauIndex, false, event_weight);
                  else
                    fillUncPlots("9_dyll", MuIndex, TauIndex, false, event_weight, shift);
                }
              }
            }
          }
        }
      }
    }
  }
  mu_index = -1;
  tau_index = -1;
  isBoostedtau = true;

  if (muCand.size() > 0 && (boostedtauCand.size() > 0))
  {

    get_index(muCand, tauCand, boostedtauCand, mu_index, tau_index, isBoostedtau);

    if (isBoostedtau)
      nboosted++;
    else
      nresolved++;

    if (mu_index >= 0 && tau_index >= 0)
    {
      setMyEleTau(mu_index, tau_index, metP4, shift, isBoostedtau);

      if (shift == 0)
        fillHist("3", MuIndex, TauIndex, false, event_weight);
      // else
      //   fillUncPlots("3", MuIndex, TauIndex, false, event_weight, shift);

      applySf = 1.0;
      if (is_MC)
        applySf = getScaleFactors(my_muP4.Pt(),
                                  my_tauP4.Pt(),
                                  my_muP4.Eta(),
                                  my_tauP4.Eta(),
                                  tauDecayMode,
                                  my_genmatching_l2,
                                  false /// this is set to true for fake bakground
        );
      event_weight = event_weight * applySf;

      if (shift == 0)
        fillHist("4", MuIndex, TauIndex, false, event_weight);
      // else
      //   fillUncPlots("4", MuIndex, TauIndex, false, event_weight, shift);

      //if (thirdLeptonVeto())
      // if(if_DY_Genmatching(MuIndex, TauIndex)==1 || if_DY_Genmatching(MuIndex, TauIndex)==3)
      {
        nPassedThirdLepVeto++;
        //if (pass_bjet_veto)
        {
          nPassedBjetVeto++;

          if (shift == 0)
            fillHist("5", MuIndex, TauIndex, false, event_weight);
          // else
          //   fillUncPlots("5", MuIndex, TauIndex, false, event_weight, shift);

          if (deltaR < 0.5)
          {
            nDeltaRPassed++;

            // cout<<__LINE__<<endl;
            if (shift == 0)
              fillHist("6", MuIndex, TauIndex, false, event_weight);
            // else
            //   fillUncPlots("6", MuIndex, TauIndex, false, event_weight, shift);

            if (HiggsPt > 65)
            {
              if (shift == 0)
                fillHist("7", MuIndex, TauIndex, false, event_weight);
              // else
              //   fillUncPlots("7", MuIndex, TauIndex, false, event_weight, shift);

              if (visMass_mutau < 125)
              {
                if (shift == 0)
                  fillHist("8", MuIndex, TauIndex, false, event_weight);
                // else
                //   fillUncPlots("8", MuIndex, TauIndex, false, event_weight, shift);

                double mht = 0;
                double mht_x, mht_y;
                mht_x = mht_y = 0;

                for (int ij = 0; ij < nJet; ij++)
                {
                  mht = mht + jetPt->at(ij);
                  mht_x = mht_x + jetPt->at(ij) * cos(jetPhi->at(ij));
                  mht_y = mht_y + jetPt->at(ij) * sin(jetPhi->at(ij));
                }
                double mht_scalar = sqrt(mht_x * mht_x + mht_y * mht_y);
                if (my_metP4.Pt() > 120)
                {
                  // cout<<__LINE__<<endl;
                  if (shift == 0)
                    fillHist("9", MuIndex, TauIndex, false, event_weight);
                  else
                    fillUncPlots("9", MuIndex, TauIndex, false, event_weight, shift);
                }
              }
            }
          }
        }
      }
    }
  }
  mu_index = -1;
  tau_index = -1;
  isBoostedtau = true;
  //// jet-tau region
  if (muCand.size() > 0 && (boostedtauCand.size() > 0))
  {

    get_index_jettau(muCand, tauCand, boostedtauCand, mu_index, tau_index, isBoostedtau);


    if (mu_index >= 0 && tau_index >= 0)
    {
      setMyEleTau(mu_index, tau_index, metP4, shift, isBoostedtau);
      double frac_tt = 0.01;
      double frac_qcd = 0.24;
      double frac_w = 0.75;
      int category = eventCategory(MuIndex, TauIndex, HiggsPt);
      getFractions(category, visMass_mutau, frac_qcd, frac_w, frac_tt); /// this assigns right values for qcd, w and tt fractions
      bool xtrg = false;
      if (passCrossTrigger && my_muP4.Pt() <= 25.0)
        xtrg = true;
      else if (my_muP4.Pt() > 28.0)
        xtrg = false;
      xtrg = false;
      double jetTau_FF = FF_weights_withlpt.get_ff(my_tauP4.Pt(), mT_muMet, visMass_mutau, 0, my_muP4.Pt(), my_metP4.Pt(), my_njets, xtrg, frac_tt, frac_qcd, frac_w, TString(" "));

      event_weight = event_weight * jetTau_FF;

      if (shift == 0)
        fillHist("3_fr", MuIndex, TauIndex, true, event_weight);
      // else
      //   fillUncPlots("3_fr", MuIndex, TauIndex, false, event_weight, shift);

      applySf = 1.0;
      if (is_MC)
        applySf = getScaleFactors(my_muP4.Pt(),
                                  my_tauP4.Pt(),
                                  my_muP4.Eta(),
                                  my_tauP4.Eta(),
                                  tauDecayMode,
                                  my_genmatching_l2,
                                  true /// this is set to true for fake bakground
        );
      event_weight = event_weight * applySf;

      if (shift == 0)
        fillHist("4_fr", MuIndex, TauIndex, true, event_weight);
      // else
      //   fillUncPlots("4_fr", MuIndex, TauIndex, false, event_weight, shift);

      //if (thirdLeptonVeto())
      {
        nPassedThirdLepVeto++;
        //if (pass_bjet_veto)
        {
          nPassedBjetVeto++;

          if (shift == 0)
            fillHist("5_fr", MuIndex, TauIndex, true, event_weight);
          // else
          //   fillUncPlots("5_fr", MuIndex, TauIndex, false, event_weight, shift);

          if (deltaR < 0.5)
          {
            nDeltaRPassed++;
            // cout<<__LINE__<<endl;
            if (shift == 0)
              fillHist("6_fr", MuIndex, TauIndex, true, event_weight);
            // else
            //   fillUncPlots("6_fr", MuIndex, TauIndex, false, event_weight, shift);

            if (HiggsPt > 65)
            {
              if (shift == 0)
                fillHist("7_fr", MuIndex, TauIndex, true, event_weight);
              // else
              //   fillUncPlots("7_fr", MuIndex, TauIndex, false, event_weight, shift);

              if (visMass_mutau < 125)
              {
                if (shift == 0)
                  fillHist("8_fr", MuIndex, TauIndex, true, event_weight);
                // else
                //   fillUncPlots("8_fr", MuIndex, TauIndex, false, event_weight, shift);

                double mht = 0;
                double mht_x, mht_y;
                mht_x = mht_y = 0;

                for (int ij = 0; ij < nJet; ij++)
                {
                  mht = mht + jetPt->at(ij);
                  mht_x = mht_x + jetPt->at(ij) * cos(jetPhi->at(ij));
                  mht_y = mht_y + jetPt->at(ij) * sin(jetPhi->at(ij));
                }
                double mht_scalar = sqrt(mht_x * mht_x + mht_y * mht_y);
                if (my_metP4.Pt() > 120)
                {
                  // cout<<__LINE__<<endl;
                  if (shift == 0)
                    fillHist("9_fr", MuIndex, TauIndex, true, event_weight);
                  else
                    fillUncPlots("9_fr", MuIndex, TauIndex, false, event_weight, shift);
                }
              }
            }
          }
        }
      }
    }
  }
}

void mutau_analyzer::get_index(vector<int> mu_indices, vector<int> tau_indices, vector<int> boostedtau_indices, int &mu_index, int &tau_index, bool &isBoostedtau)
{

  mu_index = -1;
  tau_index = -1;
  if (mu_indices.size() > 0 && boostedtau_indices.size() > 0)
  {
    for (int i = 0; i < mu_indices.size(); i++)
    {
      if (mu_index >= 0 && tau_index >= 0)
        break;
      for (int j = 0; j < boostedtau_indices.size(); j++)
      {
        if (mu_index >= 0 && tau_index >= 0)
          break;
        int iMu = mu_indices[i];
        int iTau = boostedtau_indices[j];
        TLorentzVector mu_p4, tau_p4;
        mu_p4.SetPtEtaPhiE(muPt->at(iMu), muEta->at(iMu), muPhi->at(iMu), muE->at(iMu));
        tau_p4.SetPtEtaPhiE(boostedTauPt->at(iTau), boostedTauEta->at(iTau), boostedTauPhi->at(iTau), boostedTauEnergy->at(iTau));
        float mu_tau_dr = mu_p4.DeltaR(tau_p4);
        double higgspt = (mu_p4 + tau_p4).Pt();

        double relMuIso = (muPFChIso->at(iMu) + max(muPFNeuIso->at(iMu) + muPFPhoIso->at(iMu) - 0.5 * muPFPUIso->at(iMu), 0.0)) / (muPt->at(iMu));

        if (mu_tau_dr < 0.5                                       // dr selection
            && muCharge->at(iMu) * boostedTauCharge->at(iTau) < 0 // charge selection
            && muIDbit->at(iMu) >> 1 & 1 == 1                     // muon id
            // && relMuIso_to_use < 0.15               // muon relative isolation
            && boostedTauByLooseIsolationMVArun2v1DBoldDMwLTNew->at(iTau) == 1 // tau isolation
            && boostedTaupfTausDiscriminationByDecayModeFindingNewDMs->at(iTau) == 1
            // && (boostedTauDecayMode->at(iTau) >= 0)                             // decay modes
            && boostedTauByMVA6LooseElectronRejection->at(iTau) == 1 // anti ele
            && boostedTauByLooseMuonRejection3->at(iTau) == 1        // anti muon
        )
        {
          mu_index = iMu;
          tau_index = iTau;
          isBoostedtau = true;
          return;
          /////////// okay we found the mu-au pair, exit these loops
        }
      }
    }
  }

  mu_index = -1;
  tau_index = -1;
  isBoostedtau = false;
  return;
}

void mutau_analyzer::get_index_jettau(vector<int> mu_indices, vector<int> tau_indices, vector<int> boostedtau_indices, int &mu_index, int &tau_index, bool &isBoostedtau)
{

  mu_index = -1;
  tau_index = -1;
  if (mu_indices.size() > 0 && boostedtau_indices.size() > 0)
  {
    for (int i = 0; i < mu_indices.size(); i++)
    {
      if (mu_index >= 0 && tau_index >= 0)
        break;
      for (int j = 0; j < boostedtau_indices.size(); j++)
      {
        if (mu_index >= 0 && tau_index >= 0)
          break;
        int iMu = mu_indices[i];
        int iTau = boostedtau_indices[j];
        TLorentzVector mu_p4, tau_p4;
        mu_p4.SetPtEtaPhiE(muPt->at(iMu), muEta->at(iMu), muPhi->at(iMu), muE->at(iMu));
        tau_p4.SetPtEtaPhiE(boostedTauPt->at(iTau), boostedTauEta->at(iTau), boostedTauPhi->at(iTau), boostedTauEnergy->at(iTau));
        float mu_tau_dr = mu_p4.DeltaR(tau_p4);
        double higgspt = (mu_p4 + tau_p4).Pt();

        double relMuIso = (muPFChIso->at(iMu) + max(muPFNeuIso->at(iMu) + muPFPhoIso->at(iMu) - 0.5 * muPFPUIso->at(iMu), 0.0)) / (muPt->at(iMu));

        if (mu_tau_dr < 0.5                                       // dr selection
            && muCharge->at(iMu) * boostedTauCharge->at(iTau) < 0 // charge selection
            && muIDbit->at(iMu) >> 1 & 1 == 1                     // muon id
            // && relMuIso_to_use < 0.15               // muon relative isolation
            && boostedTauByLooseIsolationMVArun2v1DBoldDMwLTNew->at(iTau) == 0  // tau isolation
            && boostedTauByVLooseIsolationMVArun2v1DBoldDMwLTNew->at(iTau) == 1 // tau isolation
            && boostedTaupfTausDiscriminationByDecayModeFindingNewDMs->at(iTau) == 1
            //&& (boostedTauDecayMode->at(iTau) >= 0)                             // decay modes
            && boostedTauByMVA6LooseElectronRejection->at(iTau) == 1 // anti ele
            && boostedTauByLooseMuonRejection3->at(iTau) == 1        // anti muon
        )
        {
          mu_index = iMu;
          tau_index = iTau;
          isBoostedtau = true;
          return;
          /////////// okay we found the mu-au pair, exit these loops
        }
      }
    }
  }

  mu_index = -1;
  tau_index = -1;
  isBoostedtau = false;
  return;
}
