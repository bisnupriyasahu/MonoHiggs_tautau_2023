std::vector<int> tautau_analyzer::simple_mu_cand(double muPtCut, double muEtaCut, int shift)
{
  std::vector<int> tmpCand;
  tmpCand.clear();
  // Loop over muons
  for (int iMu = 0; iMu < nMu; iMu++)
  {
    bool kinematic = false;
    if (muPt->at(iMu) > muPtCut && fabs(muEta->at(iMu)) < muEtaCut && fabs(muDz->at(iMu)) < 0.2 && fabs(muD0->at(iMu)) < 0.045)
      kinematic = true;

    if (kinematic == true)
      tmpCand.push_back(iMu);
  }
  return tmpCand;
}

std::vector<int> tautau_analyzer::simple_tau_cand(double tauPtCut, double tauEtaCut, int shift)
{
  std::vector<int> tmpCand;
  tmpCand.clear();
  TLorentzVector dau2;
  // Loop over taus
  for (int iTau = 0; iTau < nTau; iTau++)
  {
    dau2.SetPtEtaPhiE(tau_Pt->at(iTau), tau_Eta->at(iTau), tau_Phi->at(iTau), tau_Energy->at(iTau));
    bool kinematic = false;
    if (dau2.Pt() > tauPtCut && fabs(dau2.Eta()) < tauEtaCut && tau_LeadChargedHadron_dz->at(iTau) < 0.2)
      kinematic = true;
    if (kinematic == true)
      tmpCand.push_back(iTau);
  }
  return tmpCand;
}

std::vector<int> tautau_analyzer::simple_boostedtau_cand(double tauPtCut, double tauEtaCut, int shift)
{
  std::vector<int> tmpCand;
  tmpCand.clear();
  TLorentzVector dau2;
  // Loop over taus
  for (int iTau = 0; iTau < nBoostedTau; iTau++)
  {
    dau2.SetPtEtaPhiE(boostedTauPt->at(iTau), boostedTauEta->at(iTau), boostedTauPhi->at(iTau), boostedTauEnergy->at(iTau));
    bool kinematic = false;
    if (dau2.Pt() > tauPtCut && fabs(dau2.Eta()) < tauEtaCut && boostedTauZImpact->at(iTau) < 0.2)
      kinematic = true;
    if (kinematic == true)
      tmpCand.push_back(iTau);
  }
  return tmpCand;
}

std::vector<int> tautau_analyzer::getMuCand(double muPtCut, double muEtaCut, int shift)
{
  std::vector<int> tmpCand;
  tmpCand.clear();
  // Loop over muons
  for (int iMu = 0; iMu < nMu; iMu++)
  {
    bool kinematic = false;
    bool muonID = false;
    bool muonIso = false;
    bool trigger = false;
    bool filter = false;
    if (muPt->at(iMu) > muPtCut && fabs(muEta->at(iMu)) < muEtaCut && fabs(muDz->at(iMu)) < 0.2 && fabs(muD0->at(iMu)) < 0.045)
      kinematic = true;
    if (muIDbit->at(iMu) >> 1 & 1 == 1)
      muonID = true; //|| muIDbit->at(iMu)>>8&1==1 || muIDbit->at(iMu)>>17&1==1  ) muonID = true;

    //  float relMuIso = ( muPFChIso->at(iMu) + max( muPFNeuIso->at(iMu) + muPFPhoIso->at(iMu) - 0.5 *muPFPUIso->at(iMu) , 0.0 )) / (muPt->at(iMu));

    // float relMuIso = ( muPFChIso->at(iMu) + max( muPFNeuIso->at(iMu) + muPFPhoIso->at(iMu) - 0.5 *muPFPUIso->at(iMu) , 0.0 ) ) / (muPt->at(iMu));

    // if( relMuIso < 0.15 )
    muonIso = true;

    if (kinematic == true && muonID == true && muonIso == true)
    {
      tmpCand.push_back(iMu);
    }
  }
  return tmpCand;
}

std::vector<int> tautau_analyzer::getTauCand(double tauPtCut, double tauEtaCut, int shift)
{
  std::vector<int> tmpCand;
  tmpCand.clear();
  TLorentzVector dau2;
  // Loop over taus
  for (int iTau = 0; iTau < nTau; iTau++)
  {
    dau2.SetPtEtaPhiE(tau_Pt->at(iTau), tau_Eta->at(iTau), tau_Phi->at(iTau), tau_Energy->at(iTau));
    if (is_MC)
      dau2 = applyTauESCorrections(dau2, iTau, shift);

    bool kinematic = false;
    bool trigger = false;
    bool tauId = false;
    bool decayModeCut = false;
    bool tauIsolation = false;
    bool mutau_separation = false;
    bool newDecayModeFinding = false;
    bool tau_reject = false;
    bool filter = false;
    if (dau2.Pt() > tauPtCut && fabs(dau2.Eta()) < tauEtaCut && tau_LeadChargedHadron_dz->at(iTau) < 0.2)
      kinematic = true;
    if (tau_byMediumDeepTau2017v2p1VSjet->at(iTau) == 1)
      tauIsolation = true;
    if (tau_IDbits->at(iTau) >> 1 & 1 == 1)
      newDecayModeFinding = true;
    if (tau_DecayMode->at(iTau) == 0 || tau_DecayMode->at(iTau) == 1 || tau_DecayMode->at(iTau) == 10 || tau_DecayMode->at(iTau) == 11)
      decayModeCut = true;
    if (tau_byVLooseDeepTau2017v2p1VSe->at(iTau) == 1 && tau_byTightDeepTau2017v2p1VSmu->at(iTau) == 1)
      tau_reject = true;

    if (kinematic == true && decayModeCut == true && tauIsolation == true && tau_reject == true && newDecayModeFinding == true)
    {
      tmpCand.push_back(iTau);
    }
  }
  return tmpCand;
}
std::vector<int> tautau_analyzer::getAISRTauCand(double tauPtCut, double tauEtaCut, int shift)
{
  std::vector<int> tmpCand;
  tmpCand.clear();
  TLorentzVector dau2;
  for (int iTau = 0; iTau < nTau; iTau++) // Loop over taus
  {
    dau2.SetPtEtaPhiE(tau_Pt->at(iTau), tau_Eta->at(iTau), tau_Phi->at(iTau), tau_Energy->at(iTau));
    if (is_MC)
      dau2 = applyTauESCorrections(dau2, iTau, shift);

    bool kinematic = false;
    bool trigger = false;
    bool tauId = false;
    bool decayModeCut = false;
    bool tauIsolation = false;
    bool mutau_separation = false;
    bool newDecayModeFinding = false;
    bool tau_reject = false;
    bool filter = false;
    if (dau2.Pt() > tauPtCut && fabs(dau2.Eta()) < tauEtaCut && tau_LeadChargedHadron_dz->at(iTau) < 0.2)
      kinematic = true;
    if (tau_byVVVLooseDeepTau2017v2p1VSjet->at(iTau) == 1 && !(tau_byMediumDeepTau2017v2p1VSjet->at(iTau) == 1))
      tauIsolation = true;
    if (tau_IDbits->at(iTau) >> 1 & 1 == 1)
      newDecayModeFinding = true;
    if (tau_DecayMode->at(iTau) == 0 || tau_DecayMode->at(iTau) == 1 || tau_DecayMode->at(iTau) == 10 || tau_DecayMode->at(iTau) == 11)
      decayModeCut = true;
    if (tau_byVLooseDeepTau2017v2p1VSe->at(iTau) == 1 && tau_byTightDeepTau2017v2p1VSmu->at(iTau) == 1)
      tau_reject = true;

    if (kinematic == true && decayModeCut == true && tauIsolation == true && tau_reject == true && newDecayModeFinding == true)
    {
      tmpCand.push_back(iTau);
    }
  }
  return tmpCand;
}
int tautau_analyzer::getZCand()
{
  if (!is_MC)
    return -1;
  for (int iMC = 0; iMC < nMC; iMC++) // Loop over mc
  {
    if (fabs(mcPID->at(iMC)) == 23 && mcStatus->at(iMC) == 62)
      return iMC;
  }
  return -1;
}
int tautau_analyzer::get_t_Cand()
{
  if (!is_MC)
    return -1;
  for (int iMC = 0; iMC < nMC; iMC++) // Loop over mc
  {
    if (mcPID->at(iMC) == 6 && mcStatus->at(iMC) == 62)
      return iMC;
  }
  return -1;
}
int tautau_analyzer::get_tbar_Cand()
{
  if (!is_MC)
    return -1;
  for (int iMC = 0; iMC < nMC; iMC++) // Loop over mc
  {
    if (mcPID->at(iMC) == -6 && mcStatus->at(iMC) == 62)
      return iMC;
  }
  return -1;
}
std::vector<int> tautau_analyzer::getJetCand()
{
  std::vector<int> tmpCand;
  tmpCand.clear();
  for (int iJet = 0; iJet < nJet; iJet++) // Loop over jets
  {
    bool kinematic30 = false;
    bool foundNoisyJets = false;
    bool kinematic50 = false;
    bool passLoosePUID = false;
    bool jet_id = false;
    bool drPassed = false;
    if (jetPt->at(iJet) > 30 && abs(jetEta->at(iJet)) < 4.7 && (jetID->at(iJet) >> 0 & 1) == 1
        //&& jetPUFullID->at(iJet)>>1&1==1
    )
      kinematic30 = true;
    if (jetPt->at(iJet) < 50 && abs(jetEta->at(iJet)) > 2.65 && abs(jetEta->at(iJet)) < 3.139
        //&& (jetID->at(iJet)>>0&1)==1
    )
      foundNoisyJets = true;

    if (jetPt->at(iJet) < 50)
    {
      if (jetPUFullID->at(iJet) >> 1 & 1 == 1)
        passLoosePUID = true;
      else
        passLoosePUID = false;
    }
    else if (jetPt->at(iJet) > 50)
      passLoosePUID = true;

    double lepton1Phi = my_tau1P4.Phi();
    double lepton1Eta = my_tau1P4.Eta();
    double lepton2Phi = 0;
    double lepton2Eta = 0;
    lepton2Phi = my_tau2P4.Phi();
    lepton2Eta = my_tau2P4.Eta();
    double dr_jetEle = delta_R(jetPhi->at(iJet), jetEta->at(iJet), lepton1Phi, lepton1Eta);
    double dr_jetTau = delta_R(jetPhi->at(iJet), jetEta->at(iJet), lepton2Phi, lepton2Eta);
    if (dr_jetEle > 0.5 && dr_jetTau > 0.5)
      drPassed = true;

    if (kinematic30 && passLoosePUID && drPassed == true)
      tmpCand.push_back(iJet);
  }
  return tmpCand;
}


bool tautau_analyzer::thirdLeptonVeto()
{
  std::vector<int> tmpCand;
  tmpCand.clear();
  int thirdLepIndex = -1;
  bool thirdLepVeto = true;
  for (int iEle = 0; iEle < nEle; iEle++)
  {
    bool kinematic = false;
    if ((*elePt)[iEle] > 10.0 && fabs((*eleEta)[iEle]) < 2.5 && (*eleD0)[iEle] < 0.045 && (*eleDz)[iEle] < 0.2 && eleMissHits->at(iEle) <= 1 && eleConvVeto->at(iEle) == 1)
      kinematic = true;
    bool electronId = false;
    if (eleIDbit->at(iEle) >> 8 & 1 == 1)
      electronId = true;
    bool relative_iso = false;
    float relEleIso = (elePFChIso->at(iEle) + max(elePFNeuIso->at(iEle) + elePFPhoIso->at(iEle) - 0.5 * elePFPUIso->at(iEle), 0.0)) / (elePt->at(iEle));
    if (relEleIso < 0.3)
      relative_iso = true;
    if (electronId == true && kinematic == true && relative_iso == true)
    {
      tmpCand.push_back(iEle);
    }
  }
  double deltaRm1 = 0;
  double deltaRm2 = 0;
  bool found_3rdmu = false;
  if (tmpCand.size() > 0)
  {
    TLorentzVector tmpele;
    tmpele.SetPtEtaPhiE(elePt->at(tmpCand[0]), eleEta->at(tmpCand[0]),
                       elePhi->at(tmpCand[0]), eleE->at(tmpCand[0]));
    deltaRm1 = my_tau1P4.DeltaR(tmpele);
    deltaRm2 = my_tau2P4.DeltaR(tmpele);
    if (deltaRm1 > 0.5 && deltaRm2 > 0.5)
    {
      return false;
    }
  }
  
  return true;
}

double tautau_analyzer::delta_R(float phi1, float eta1, float phi2, float eta2)
{
  double deltaeta = abs(eta1 - eta2);
  double deltaphi = DeltaPhi(phi1, phi2);
  double deltar = sqrt(deltaeta * deltaeta + deltaphi * deltaphi);
  return deltar;
}

double tautau_analyzer::DeltaPhi(double phi1, double phi2)
// Gives the (minimum) separation in phi between the specified phi values
// Must return a positive value
{
  double pi = TMath::Pi();
  double dphi = phi1 - phi2;
  if (dphi > pi)
    dphi = 2.0 * pi - dphi;
  if (dphi <= -1 * pi)
    dphi = 2.0 * pi + dphi;
  return fabs(dphi);
}

float tautau_analyzer::TMass_F(float LepPt, float LepPhi, float met, float metPhi)
{
  return sqrt(2.0 * LepPt * met * (1.0 - cos(DeltaPhi(LepPhi, metPhi))));
  // return sqrt(pow(LepPt + met, 2) - pow(LepPt* cos(LepPhi) + met * cos(metPhi), 2) - pow(LepPt * sin(LepPhi) + met * sin(metPhi), 2));
}

float tautau_analyzer::TotTMass_F(TLorentzVector a, TLorentzVector b, TLorentzVector met)
{
  float totalTMass = (a + b + met).M();
  return totalTMass;
}

float tautau_analyzer::VisMass_F(TLorentzVector a, TLorentzVector b)
{
  float visibleMass = (a + b).M();
  return visibleMass;
}

float tautau_analyzer::pTvecsum_F(float pt1, float pt2, float phi1, float phi2)
{
  float pt_vecSum = sqrt(pow(pt1 * cos(phi1) + pt2 * cos(phi2), 2) + pow(pt1 * sin(phi1) + pt2 * sin(phi2), 2));
  return pt_vecSum;
}
float tautau_analyzer::pTvecsum_F(TLorentzVector a, TLorentzVector b, TLorentzVector met)
{
  float pt_vecSum = (a + b + met).Pt();
  return pt_vecSum;
}
vector<int> tautau_analyzer::bJet_medium()
{
  std::vector<int> tmpJetCand;
  tmpJetCand.clear();
  bool veto = true;
  bool foundBjet = false;
  double lepton1Phi = my_tau1P4.Phi();
  double lepton1Eta = my_tau1P4.Eta();
  double lepton2Phi = my_tau2P4.Phi();
  double lepton2Eta = my_tau2P4.Eta();
  double dr_jetEle = 0.0;
  double dr_jetTau = 0.0;

  for (int iJets = 0; iJets < nJet; iJets++)
  {
    bool particles_separated = false;
    bool kinematic = false;
    bool passLoosePUID = false;
    dr_jetEle = delta_R(jetPhi->at(iJets), jetEta->at(iJets), lepton1Phi, lepton1Eta);
    dr_jetTau = delta_R(jetPhi->at(iJets), jetEta->at(iJets), lepton2Phi, lepton2Eta);
    if (dr_jetEle > 0.5 && dr_jetTau > 0.5)
      particles_separated = true;
    if (jetPt->at(iJets) > 25 && abs(jetEta->at(iJets)) < 2.4 && jetID->at(iJets) >> 0 & 1 == 1 && (jetDeepCSVTags_b->at(iJets) + jetDeepCSVTags_bb->at(iJets)) > 0.4941)
      kinematic = true;
    if (jetPt->at(iJets) < 50)
    {
      if (jetPUFullID->at(iJets) >> 1 & 1 == 1)
        passLoosePUID = true;
      else
        passLoosePUID = false;
    }
    else if (jetPt->at(iJets) > 50)
      passLoosePUID = true;

    if (particles_separated && kinematic)
      tmpJetCand.push_back(iJets);
  }
  return tmpJetCand;
}

vector<int> tautau_analyzer::bJet_loose()
{
  std::vector<int> tmpJetCand;
  tmpJetCand.clear();
  bool veto = true;
  bool foundBjet = false;
  double lepton1Phi = my_tau1P4.Phi();
  double lepton1Eta = my_tau1P4.Eta();
  double lepton2Phi = my_tau2P4.Phi();
  double lepton2Eta = my_tau2P4.Eta();
  double dr_jetEle = 0.0;
  double dr_jetTau = 0.0;

  for (int iJets = 0; iJets < nJet; iJets++)
  {
    bool kinematic = false;
    bool passLoosePUID = false;
    bool particles_separated = false;
    dr_jetEle = delta_R(jetPhi->at(iJets), jetEta->at(iJets), lepton1Phi, lepton1Eta);
    dr_jetTau = delta_R(jetPhi->at(iJets), jetEta->at(iJets), lepton2Phi, lepton2Eta);
    if (dr_jetEle > 0.5 && dr_jetTau > 0.5)
      particles_separated = true;

    if (jetPt->at(iJets) > 25 && abs(jetEta->at(iJets)) < 2.4 && jetID->at(iJets) >> 0 & 1 == 1 && (jetDeepCSVTags_b->at(iJets) + jetDeepCSVTags_bb->at(iJets)) > 0.1522)
      kinematic = true;
    if (jetPt->at(iJets) < 50)
    {
      if (jetPUFullID->at(iJets) >> 1 & 1 == 1)
        passLoosePUID = true;
      else
        passLoosePUID = false;
    }
    else if (jetPt->at(iJets) > 50)
      passLoosePUID = true;

    if (particles_separated && kinematic)
      tmpJetCand.push_back(iJets);
  }
  return tmpJetCand;
}

bool passBjetVeto_medium(int eleIndex, int tauIndex)
{
  return true;
}
bool passBjetVeto_loose(int eleIndex, int tauIndex)
{
  return true;
}

bool passBjetVeto(int eleIndex, int tauIndex)
{
  return passBjetVeto_medium(eleIndex, tauIndex) && passBjetVeto_loose(eleIndex, tauIndex);
}
bool tautau_analyzer::passDiMuonVeto(int muIndex)
{
  std::vector<int> tmpCand;
  tmpCand.clear();
  bool veto = true;
  bool awayFromEverything = true;
  for (int iMu = 0; iMu < nMu; iMu++)
  {
    bool kinematic = false;
    if (muPt->at(iMu) > 15 && fabs(muEta->at(iMu)) < 2.4 && fabs(muD0->at(iMu)) < 0.045 && fabs(muDz->at(iMu)) < 0.2)
      kinematic = true;
    bool muonId = false;
    if (muIDbit->at(iMu) >> 6 & 1 == 1)
      muonId = true; // pf muon iso veryloose
    bool relative_iso = false;
    float relMuIso = (muPFChIso->at(iMu) + max(muPFNeuIso->at(iMu) + muPFPhoIso->at(iMu) - 0.5 * muPFPUIso->at(iMu), 0.0)) / (muPt->at(iMu));
    if (relMuIso < 0.3)
      relative_iso = true;
    if (kinematic && muonId && relative_iso)
    {
      tmpCand.push_back(iMu);
    }
  }
  std::vector<int> iMuPlus;
  iMuPlus.clear();
  std::vector<int> iMuMinus;
  iMuMinus.clear();
  for (int i = 0; i < tmpCand.size(); i++)
  {
    if (muCharge->at(tmpCand[i]) < 0)
      iMuMinus.push_back(tmpCand[i]);
    if (muCharge->at(tmpCand[i]) > 0)
      iMuPlus.push_back(tmpCand[i]);
  }
  if (iMuPlus.size() > 0 && iMuMinus.size() > 0)
  {
    double deltaR = delta_R(muPhi->at(iMuMinus[0]), muEta->at(iMuMinus[0]), muPhi->at(iMuPlus[0]), muEta->at(iMuPlus[0]));
    if (deltaR > 0.15 && muCharge->at(iMuPlus[0]) * muCharge->at(iMuMinus[0]) < 0)
    {
      return false;
    }
  }
  return true;
}

bool tautau_analyzer::eVetoZTTp001dxyz(int muIndex, int tauIndex)
{
  std::vector<int> tmpCand;
  tmpCand.clear();
  std::vector<int> output;
  output.clear();
  bool awayFromEverything = true;
  int tmpEleIndex = -1;
  // Loop over electrons
  for (int iEle = 0; iEle < nEle; iEle++)
  {
    bool kinematic = false;
    if (elePt->at(iEle) > 10 && fabs(eleEta->at(iEle)) < 2.5 && fabs(eleD0->at(iEle)) < 0.045 && fabs(eleDz->at(iEle)) < 0.2 && eleConvVeto->at(iEle) == 1 && eleConvVeto->at(iEle) == 1)
      kinematic = true;
    bool electronId = false;
    if (eleIDbit->at(iEle) >> 8 & 1 == 1)
      electronId = true; // cut based electron id veto
    bool relative_iso = false;
    float relEleIso = (elePFChIso->at(iEle) + max(elePFNeuIso->at(iEle) + elePFPhoIso->at(iEle) - 0.5 * elePFPUIso->at(iEle), 0.0)) / (elePt->at(iEle));
    if (relEleIso < 0.3)
      relative_iso = true;
    if (kinematic && electronId && relative_iso)
    {
      tmpCand.push_back(iEle);
    }
  }
  if (tmpCand.size() > 0)
  {
    for (int i = 0; i < tmpCand.size(); i++)
    {
      double deltaR_et = delta_R(tau_Phi->at(tauIndex), tau_Eta->at(tauIndex), elePhi->at(tmpCand[i]), eleEta->at(tmpCand[i]));
      double deltaR_ee = delta_R(muPhi->at(muIndex), muEta->at(muIndex), elePhi->at(tmpCand[i]), eleEta->at(tmpCand[i]));
      if (!(deltaR_et > 0.0001 && deltaR_ee > 0.0001))
        output.push_back(i);
    }
  }
  if (output.size() > 0)
    return false;
  else
    return true;
}
bool tautau_analyzer::mVetoZTTp001dxyz(int muIndex, int tauIndex)
{
  std::vector<int> tmpCand;
  tmpCand.clear();
  std::vector<int> output;
  output.clear();
  bool awayFromEverything = true;
  int tmpTau1Index = -1;
  // Loop over muons
  for (int iMu = 0; iMu < nMu; iMu++)
  {
    // if (iMu==muIndex)continue;
    bool kinematic = false;
    if ((*muPt)[iMu] > 10.0 && fabs((*muEta)[iMu]) < 2.4 && (*muD0)[iMu] < 0.045 && (*muDz)[iMu] < 0.2)
      kinematic = true;
    bool muonId = false;
    if (muIDbit->at(iMu) >> 8 & 1 == 1)
      muonId = true;
    bool relative_iso = false;
    float relMuIso = (muPFChIso->at(iMu) + max(muPFNeuIso->at(iMu) + muPFPhoIso->at(iMu) - 0.5 * muPFPUIso->at(iMu), 0.0)) / (muPt->at(iMu));
    if (relMuIso < 0.3)
      relative_iso = true;
    if (muonId == true && kinematic == true && relative_iso == true)
    {
      tmpCand.push_back(iMu);
    }
  }
  double deltaRm1 = 0.0;
  double deltaRm2 = 0.0;
  if (tmpCand.size() > 0)
  {
    for (int i = 0; i < tmpCand.size(); i++)
    {
      deltaRm1 = delta_R(muPhi->at(muIndex), muEta->at(muIndex), muPhi->at(tmpCand[0]), muEta->at(tmpCand[0]));
      deltaRm2 = delta_R(tau_Phi->at(tauIndex), tau_Eta->at(tauIndex), muPhi->at(tmpCand[0]), muEta->at(tmpCand[0]));
      if (!(deltaRm1 > 0.0001 && deltaRm2 > 0.0001))
        output.push_back(i);
    }
  }
  if (output.size() > 1)
    return false;
  else
    return true;
}
int tautau_analyzer::myGenMaching(double recotau_eta, double recotau_phi)
{
  if (is_MC == false)
    return 0;

  // double recotau_eta = tau_Eta->at(tauIndex);
  // double recotau_phi = tau_Phi->at(tauIndex);
  double closestEle = 999;
  double closestMu = 999;
  double closestETau = 999;
  double closestMTau = 999;
  double closestHTau = 999;
  double closestDR = 999;
  double genLeptonEta = 0;
  double genLeptonPhi = 0;
  bool prompt_ele = false;
  bool tau_ele = false;
  bool tau_mu = false;
  bool tau_tauh = false;
  bool prompt_mu = false;
  for (int imc = 0; imc < nMC; imc++)
  {
    genLeptonEta = mcEta->at(imc);
    genLeptonPhi = mcPhi->at(imc);
    double mc_tau_dr = dR(recotau_eta, recotau_phi, genLeptonEta, genLeptonPhi);
    if (mc_tau_dr < closestDR)
      closestDR = mc_tau_dr;
  }

  for (int imc = 0; imc < nMC; imc++)
  {
    genLeptonEta = mcEta->at(imc);
    genLeptonPhi = mcPhi->at(imc);
    double dr_tau_lepton = dR(recotau_eta, recotau_phi, genLeptonEta, genLeptonPhi);
    // prompt_ele=false; prompt_mu=false; tau_ele=false; tau_mu=false; tau_tauh=false;

    ///// prompt electrons
    if (mcPt->at(imc) > 8 && abs(mcPID->at(imc)) == 11 && mcStatusFlag->at(imc) >> 1 & 1 == 1)
    {
      // dr_tau_lepton= dR(recotau_eta, recotau_phi, genLeptonEta, genLeptonPhi);
      if (dr_tau_lepton < 0.2 && closestEle > dr_tau_lepton)
      {
        closestEle = dr_tau_lepton;
        prompt_ele = true;
      }
    }
    ///// prompt muons
    if (mcPt->at(imc) > 8 && abs(mcPID->at(imc)) == 13 && mcStatusFlag->at(imc) >> 1 & 1 == 1)
    {
      // dr_tau_lepton= dR(recotau_eta, recotau_phi, genLeptonEta, genLeptonPhi);
      if (dr_tau_lepton < 0.2 && closestMu > dr_tau_lepton)
      {
        closestMu = dr_tau_lepton;
        prompt_mu = true;
      }
    }
    ///// tau -> electrons
    if (mcPt->at(imc) > 8 && abs(mcPID->at(imc)) == 11 && mcStatusFlag->at(imc) >> 5 & 1 == 1)
    {
      // dr_tau_lepton= dR(recotau_eta, recotau_phi, genLeptonEta, genLeptonPhi);
      if (dr_tau_lepton < 0.2 && closestETau > dr_tau_lepton)
      {
        closestETau = dr_tau_lepton;
        tau_ele = true;
      }
    }
    ///// tau -> muons
    if (mcPt->at(imc) > 8 && abs(mcPID->at(imc)) == 13 && mcStatusFlag->at(imc) >> 5 & 1 == 1)
    {
      // dr_tau_lepton= dR(recotau_eta, recotau_phi, genLeptonEta, genLeptonPhi);
      if (dr_tau_lepton < 0.2 && closestMTau > dr_tau_lepton)
      {
        closestMTau = dr_tau_lepton;
        tau_mu = true;
      }
    }
    ///// tau -> tau hadronic
    if (mcPt->at(imc) > 15 && abs(mcPID->at(imc)) != 13 && abs(mcPID->at(imc)) != 11)
    {
      dr_tau_lepton = dR(recotau_eta, recotau_phi, genLeptonEta, genLeptonPhi);
      if (dr_tau_lepton < 0.2 && closestHTau > dr_tau_lepton)
      {
        closestHTau = dr_tau_lepton;
        tau_tauh = true;
      }
    }
  }
  double closestLTau = min(closestETau, closestMTau);
  if (closestHTau < closestLTau)
    closestLTau = closestHTau;
  // closestDR = min(closestLTau, min(closestEle, closestMu) );
  int genMatch = 0;
  // cout<<"closestDR: "<<closestDR<<" closestEle:"<<closestEle<<" closestMu:"<<closestMu<<" closestETau:"<<closestETau<<" closestMTau:"<<closestMTau<<" closestHTau:"<<closestHTau<<endl;

  if ((prompt_ele || prompt_mu))
  {
    if (closestEle < 0.2 && prompt_ele)
      // return 1;
      genMatch = 1;
    else if (closestMu < 0.2 && prompt_mu)
      // return 2;
      genMatch = 2;
  }
  else if (closestDR <= closestLTau)
  {
    if (closestETau < 0.2 && closestETau < min(closestMTau, closestHTau) && tau_ele) // return 3;
      genMatch = 3;
    else if (closestMTau < 0.2 && closestMTau < min(closestETau, closestHTau) && tau_mu) // return 4;
      genMatch = 4;
    else if (closestHTau < 0.2 && closestHTau < min(closestETau, closestMTau) && tau_tauh) // return 5;
      genMatch = 5;
  }
  else
    genMatch = 6;

  return genMatch;
}
int tautau_analyzer::myGenMaching1(int muIndex)
{
  if (is_MC == false)
    return 0;
  double recotau_eta = muEta->at(muIndex);
  double recotau_phi = muPhi->at(muIndex);
  double closestEle = 999;
  double closestMu = 999;
  double closestETau = 999;
  double closestMTau = 999;
  double closestHTau = 999;
  double closestDR = 999;
  double genLeptonEta = 0;
  double genLeptonPhi = 0;
  bool prompt_ele = false;
  bool tau_ele = false;
  bool tau_mu = false;
  bool tau_tauh = false;
  bool prompt_mu = false;
  for (int imc = 0; imc < nMC; imc++)
  {
    genLeptonEta = mcEta->at(imc);
    genLeptonPhi = mcPhi->at(imc);
    double mc_tau_dr = dR(recotau_eta, recotau_phi, genLeptonEta, genLeptonPhi);
    if (mc_tau_dr < closestDR)
      closestDR = mc_tau_dr;
  }

  for (int imc = 0; imc < nMC; imc++)
  {
    genLeptonEta = mcEta->at(imc);
    genLeptonPhi = mcPhi->at(imc);
    double dr_tau_lepton = dR(recotau_eta, recotau_phi, genLeptonEta, genLeptonPhi);
    // prompt_ele=false; prompt_mu=false; tau_ele=false; tau_mu=false; tau_tauh=false;

    ///// prompt electrons
    if (mcPt->at(imc) > 8 && abs(mcPID->at(imc)) == 11 && mcStatusFlag->at(imc) >> 1 & 1 == 1)
    {
      // dr_tau_lepton= dR(recotau_eta, recotau_phi, genLeptonEta, genLeptonPhi);
      if (dr_tau_lepton < 0.2 && closestEle > dr_tau_lepton)
      {
        closestEle = dr_tau_lepton;
        prompt_ele = true;
      }
    }
    ///// prompt muons
    if (mcPt->at(imc) > 8 && abs(mcPID->at(imc)) == 13 && mcStatusFlag->at(imc) >> 1 & 1 == 1)
    {
      // dr_tau_lepton= dR(recotau_eta, recotau_phi, genLeptonEta, genLeptonPhi);
      if (dr_tau_lepton < 0.2 && closestMu > dr_tau_lepton)
      {
        closestMu = dr_tau_lepton;
        prompt_mu = true;
      }
    }
    ///// tau -> electrons
    if (mcPt->at(imc) > 8 && abs(mcPID->at(imc)) == 11 && mcStatusFlag->at(imc) >> 5 & 1 == 1)
    {
      // dr_tau_lepton= dR(recotau_eta, recotau_phi, genLeptonEta, genLeptonPhi);
      if (dr_tau_lepton < 0.2 && closestETau > dr_tau_lepton)
      {
        closestETau = dr_tau_lepton;
        tau_ele = true;
      }
    }
    ///// tau -> muons
    if (mcPt->at(imc) > 8 && abs(mcPID->at(imc)) == 13 && mcStatusFlag->at(imc) >> 5 & 1 == 1)
    {
      // dr_tau_lepton= dR(recotau_eta, recotau_phi, genLeptonEta, genLeptonPhi);
      if (dr_tau_lepton < 0.2 && closestMTau > dr_tau_lepton)
      {
        closestMTau = dr_tau_lepton;
        tau_mu = true;
      }
    }
    ///// tau -> tau hadronic
    if (mcPt->at(imc) > 15 && abs(mcPID->at(imc)) != 13 && abs(mcPID->at(imc)) != 11)
    {
      dr_tau_lepton = dR(recotau_eta, recotau_phi, genLeptonEta, genLeptonPhi);
      if (dr_tau_lepton < 0.2 && closestHTau > dr_tau_lepton)
      {
        closestHTau = dr_tau_lepton;
        tau_tauh = true;
      }
    }
  }
  double closestLTau = min(closestETau, closestMTau);
  if (closestHTau < closestLTau)
    closestLTau = closestHTau;
  // closestDR = min(closestLTau, min(closestEle, closestMu) );
  int genMatch = 0;
  // cout<<"closestDR: "<<closestDR<<" closestEle:"<<closestEle<<" closestMu:"<<closestMu<<" closestETau:"<<closestETau<<" closestMTau:"<<closestMTau<<" closestHTau:"<<closestHTau<<endl;

  if ((prompt_ele || prompt_mu))
  {
    if (closestEle < 0.2 && prompt_ele)
      // return 1;
      genMatch = 1;
    else if (closestMu < 0.2 && prompt_mu)
      // return 2;
      genMatch = 2;
  }
  else if (closestDR <= closestLTau)
  {
    if (closestETau < 0.2 && closestETau < min(closestMTau, closestHTau) && tau_ele) // return 3;
      genMatch = 3;
    else if (closestMTau < 0.2 && closestMTau < min(closestETau, closestHTau) && tau_mu) // return 4;
      genMatch = 4;
    else if (closestHTau < 0.2 && closestHTau < min(closestETau, closestMTau) && tau_tauh) // return 5;
      genMatch = 5;
  }
  else
    genMatch = 6;

  return genMatch;
}

int tautau_analyzer::getGenMu()
{
  std::vector<int> tmpCand;
  tmpCand.clear();
  // int count1=0; int count2=0;
  for (int imc = 0; imc < nMC; imc++)
  {
    if ((mcStatus->at(imc) == 23 || mcStatus->at(imc) == 33) && fabs(mcPID->at(imc)) == 13)
      tmpCand.push_back(imc);
  }
  if (tmpCand.size() > 0)
  {
    // cout<<"gen mu found "<<tmpCand[0]<<endl;
    return tmpCand[0];
  }
  return -99;
}

float tautau_analyzer::exponential(float x, float a, float b, float c)
{
  return a * TMath::Exp(-b * x) + c;
}
double tautau_analyzer::exponential(double pT)
{
  // return TMath::Exp(0.088 - 0.00087*pT + 0.00000092*pow(pT,2) ) ;
  return TMath::Exp(0.0615 - 0.0005 * pT);
}

double tautau_analyzer::getScaleFactors(double tau1pt, double tau2pt, double tau1eta, double tau2eta, int tau1dm, int tauGenMatch, bool isFakebkg)
{

  
  double mht_x, mht_y;
  mht_x = mht_y = 0;

  for ( int ij = 0; ij < nJet; ij++){
    mht_x = mht_x + jetPt->at(ij)*cos(jetPhi->at(ij));
    mht_y = mht_y + jetPt->at(ij)*sin(jetPhi->at(ij));
  }          
  double mht_scalar = sqrt(mht_x*mht_x + mht_y*mht_y);
  double met_trg_sf = get_BinContent(h_mettrg_sf, my_metP4.Pt(), mht_scalar);
  if(met_trg_sf > 2.0)
    met_trg_sf = 1.0;
  double rv_sf=1.0;
  double sf_tauTrg = 1.0; double sf_tauTrg_vvvloose=1.0;
  double sf_htt_tau1=1.0;   double sf_htt_tau2=1.0;
  double sf_tau1idSF_m = 1.0; double sf_tau2idSF_m = 1.0;
  double sf_tau1idSF_vvvl = 1.0; double sf_tau2idSF_vvvl = 1.0;
  double sf_fakeEle = 1.0; double sf_fakeMu = 1.0;
  double sf_fakeEleES = 1.0; double sf_fakeMuES = 1.0;
  double sf_taufesSF = 1.0;
  double sf_fakeEleMu = 1.0;
  
  if(  my_genmatching_l1>=5 )
    {
      sf_tau1idSF_m = 0.9;
    }
  if(  my_genmatching_l2>=5 )
    {
      sf_tau2idSF_m = 0.9;
    }
  
  double higgsPt = (my_tau1P4+my_tau2P4).Pt();
  double higgPt_weight=1.0;
  if (my_njets==0)
    higgPt_weight = gr_NNLOPSratio_pt_mcatnlo_0jet->Eval(min(higgsPt,125.0));
  else if (my_njets==1)
    higgPt_weight = gr_NNLOPSratio_pt_mcatnlo_1jet->Eval(min(higgsPt,625.0));
  else if (my_njets==2)
    higgPt_weight = gr_NNLOPSratio_pt_mcatnlo_2jet->Eval(min(higgsPt,800.0));
  else if (my_njets>=3)
    higgPt_weight = gr_NNLOPSratio_pt_mcatnlo_3jet->Eval(min(higgsPt,925.0));
  else
    higgPt_weight = 1.0;
 
  //if ( isFakebkg ) higgPt_weight = 1.0;
  //if (higgPt_weight>1.0 && found_DYjet_sample ) higgPt_weight = 1.0;
  //if (my_metP4.Pt()>110)  higgPt_weight = 1.0;
  //if (isFakebkg && found_DYjet_sample ) higgPt_weight = 1.0;

  //
  // sf_tauTrg = TriggerSF_med.get_sf(tau1DecayMode, tau1pt) * TriggerSF_med.get_sf(tau2DecayMode, tau2pt);
  //
  sf_fakeEleMu = eleMuSF(my_genmatching_l1, my_tau1P4.Eta()) * eleMuSF(my_genmatching_l2, my_tau2P4.Eta());

  double tau1PtCheck=my_tau1P4.Pt();
  if(tau1pt > 450 ) tau1PtCheck = 450;
  else if ( tau1pt < 20 )  tau1PtCheck = 20;
  double tau2PtCheck=my_tau2P4.Pt();
  if(tau2pt > 450 ) tau2PtCheck = 450;
  else if ( tau2pt < 20 )  tau2PtCheck = 20;

  ///// btag efficiency
  //double weight_btagSF = btag_sf;
  //cout<<"btag_sf : "<<weight_btagSF<<endl;
  // sf_tauTrg = tauTrgsf_m->getSF(my_tau1P4.Pt(), tau1DecayMode,0)*tauTrgsf_m->getSF(my_tau2P4.Pt(), tau2DecayMode,0);
  // sf_tauTrg_vvvloose= tauTrgsf_vl->getSF(my_tau1P4.Pt(), tau1DecayMode,0);
  //cout<<"tautrg_sf : "<< tautrgsf <<endl;
  //// tau trigger, id scale factors from RooWorkspace
  w->var("t_pt")->setVal(my_tau1P4.Pt());
  w->var("t_eta")->setVal(my_tau1P4.Eta());
  w->var("t_phi")->setVal(my_tau1P4.Phi());
  w->var("t_dm")->setVal(tau1DecayMode);
  double t1_deeptauid = w->function("t_deeptauid_dm_medium")->getVal();
  double t1_trg_pog = w->function("t_trg_pog_deeptau_medium_mutau_ratio")->getVal();
  sf_htt_tau1 = t1_deeptauid;
  
  w->var("t_pt")->setVal(my_tau2P4.Pt());
  w->var("t_eta")->setVal(my_tau2P4.Eta());
  w->var("t_phi")->setVal(my_tau2P4.Phi());
  w->var("t_dm")->setVal(tau2DecayMode);
  double t2_deeptauid = w->function("t_deeptauid_dm_medium")->getVal();
  double t2_trg_pog = w->function("t_trg_pog_deeptau_medium_mutau_ratio")->getVal();
  sf_htt_tau2 = t2_deeptauid;
  
  double top_pt_weight=1.0;
  if(found_TTbar_sample){
    if( t_index >-1 && tbar_index > -1 ){
      top_pt_weight = sqrt( exponential(mcPt->at(t_index)) * exponential(mcPt->at(tbar_index)) );
      //cout<<"top_pt_weight = "<<top_pt_weight<<endl;
    } 
  }
  
  //double zptmass_weight = get_zptmass_weight();
  
  // rv_sf = sf_tau1idSF_m * sf_tau2idSF_m * sf_tauTrg * sf_fakeEleMu * t1_trg_pog * t2_trg_pog * higgPt_weight; 
  
  // if(isFakebkg)
  //   rv_sf = sf_tau1idSF_vvvl * TriggerSF_vvvl.get_sf(tau1DecayMode, tau1pt) * sf_tau2idSF_m * TriggerSF_med.get_sf(tau2DecayMode, tau2pt) * sf_fakeEleMu * higgPt_weight;
  if(met_trg_sf < 0.8 || met_trg_sf > 2)
    met_trg_sf = 1.0;
  rv_sf = met_trg_sf * sf_tau1idSF_m * sf_tau2idSF_m * higgPt_weight;   

  if(rv_sf>0)
    return rv_sf;
  else
    return 1.0;

}

bool tautau_analyzer::TriggerSelection(TLorentzVector muP4, TLorentzVector tauP4)
{

  if (muP4.Pt() > 21.0 && muP4.Pt() < 25.0 && tauP4.Pt() > 32.0 && fabs(muP4.Eta()) < 2.1 && fabs(tauP4.Eta()) < 2.1)
  {
    if (HLTTau >> 0 & 1 == 1)
      return true;
    else
      return false;
  }
  else if (muP4.Pt() > 25.0 && fabs(muP4.Eta()) < 2.1 && tauP4.Pt() > 30.0 && fabs(tauP4.Eta()) < 2.3)
  {
    if ((HLTEleMuX >> 21 & 1 == 1 && muP4.Pt() > 28.0)    // HLT_IsoMu27_v
        || (HLTEleMuX >> 60 & 1 == 1 && muP4.Pt() > 25.0) // HLT_IsoMu24_v
    )
      return true;
  }
  
  return false;
}

bool tautau_analyzer::MatchTriggerFilter(int muIndex, int tauIndex)
{
  // std::vector<int> tmpJetCand;
  // tmpJetCand.clear();
  // bool passFilter = true;
  // bool muTriggerFilterMatch=false;
  // int nMuTriggerFilterMatch=0;
  // bool tauTriggerFilterMatch=false;
  // int nTauTriggerFilterMatch=0;
  // for(int ifilter=33;ifilter<56;ifilter++)
  //   {
  //     if(muFiredTrgs->at(muIndex)>>ifilter&1==1)
  // 	{
  // 	  muTriggerFilterMatch=true;
  // 	  nMuTriggerFilterMatch++;
  // 	}
  //   }
  // for(int ifilter=0;ifilter<18;ifilter++)
  //   {
  //     if(tauFiredTrgs->at(tauIndex)>>ifilter&1==1)
  // 	{
  // 	  tauTriggerFilterMatch=true;
  // 	  nTauTriggerFilterMatch++;
  // 	}
  //   }
  // if( (HLTEleMuX>>21&1 == 1 && nMuTriggerFilterMatch==23 )
  //     || (HLTEleMuX>>60&1 == 1 && nMuTriggerFilterMatch==23 )
  //     || (HLTTau>>0&1 ==1  && nMuTriggerFilterMatch==23 )
  //     )
  //   passFilter=true;

  // return passFilter;
  return true;
}

double tautau_analyzer::getFR(int tauIndex)
{
  double frWeight = 1.0;
  // double tau_FR = 1.0;
  // double tauPt=0.0;
  // if( tau_Pt->at(tauIndex) < 120 )
  //   tauPt=tau_Pt->at(tauIndex);
  // else
  //   tauPt=119.0;
  // if ( tau_DecayMode->at(tauIndex)==0 )
  //   {
  //     tau_FR = h_tauFR_0->Eval(tauPt);
  //     frWeight = tau_FR/(1-tau_FR);
  //   }

  // if ( tau_DecayMode->at(tauIndex)==1 )
  //   {
  //     tau_FR = h_tauFR_1->Eval(tauPt);
  //     frWeight = tau_FR/(1-tau_FR);
  //   }

  // if ( tau_DecayMode->at(tauIndex)==10 )
  //   {
  //     tau_FR = h_tauFR_10->Eval(tauPt);
  //     frWeight = tau_FR/(1-tau_FR);
  //   }
  // if ( tau_DecayMode->at(tauIndex)==11 )
  //   {
  //     tau_FR = h_tauFR_11->Eval(tauPt);
  //     frWeight = tau_FR/(1-tau_FR);
  //   }
  return frWeight;
}
void tautau_analyzer::fillUncPlots(string histNumber, int muIndex, int tauIndex, bool isFakeBkg, float event_weight, int shift)
{
  //////////////////////  fill unccertainity plots ////////////////////////
  if (check_unc)
    cout << "entry # : " << eventNumber << "          Shift value = " << shift << endl;
  printP4values("entering fillUncPlots");
  string hNumber = histNumber;

  ///////// jet-tau fakes unc
  if (isFakeBkg && selected_systematic == "jetFakes")
  {
    jetFakeUnc(histNumber, muIndex, tauIndex, isFakeBkg, event_weight);
  }
  if (!is_MC)
    return;
  if (isFakeBkg)
    return;

  ///// energy scale systematics
  ////////// tau es unc
  tauESunc(histNumber, muIndex, tauIndex, true, event_weight);
  /////// muon es
  muonES(histNumber, Tau1Index, Tau2Index, true, event_weight);
  ////// JES
  JESUnc(histNumber, Tau1Index, Tau2Index, true, event_weight);
  ////// JER
  JERUnc(histNumber, Tau1Index, Tau2Index, true, event_weight);
  ////// met sys
  metSysUnc(histNumber, Tau1Index, Tau2Index, true, event_weight);
  metClusteredUnc(histNumber, Tau1Index, Tau2Index, true, event_weight);

  ///// scaling systematics
  /////// tauh ID unc
  tauIDunc(histNumber, muIndex, tauIndex, true, event_weight);
  /////// trigger unc
  tauTRGunc(histNumber, muIndex, tauIndex, true, event_weight);
  leptonTRGunc(histNumber, muIndex, tauIndex, true, event_weight);
  /////// prefiring unc
  // prefiringweight , prefiringweightup, prefiringweightdown // only for 2017
  prefiringUnc(histNumber, Tau1Index, Tau2Index, true, event_weight);
  /////// muon -> tau es
  muonMissID(histNumber, Tau1Index, Tau2Index, true, event_weight);
  //// dy_shape
  dyShape(histNumber, Tau1Index, Tau2Index, true, event_weight);
  //// ttbar shape
  ttbarShape(histNumber, Tau1Index, Tau2Index, true, event_weight);
}

void tautau_analyzer::jetFakeUnc(string histNumber, int muIndex, int tauIndex, bool isFakeBkg, float event_weight)
{

  string uncs = unc_shift;
  string jetFakesUnc[3] = { "ff", "lpt_corr", "mvis_corr"} ;
  string uncNames[3] = {"CMS_rawFF_tt_qcd_2018", "CMS_FF_closure_tau2pt_tt_qcd", "CMS_FF_closure_tt_qcd_osss"};
  double mt=TMass_F(my_tau2P4.Pt(),my_tau2P4.Phi()
  		    ,my_metP4.Pt(), my_metP4.Phi());
  double mvis=(my_tau1P4+ my_tau2P4).M();
    
  double FF_nominal = FF_weights_withlpt.get_ff( my_tau1P4.Pt(), mt, mvis
  						 , 0 , my_tau2P4.Pt(), my_metP4.Pt()
  						 , my_njets, 0
  						 , 0, 0 , 0
  						 , TString(" "));
  
  for(int i = 0; i < 3; i++) { 
    double FF_unc = FF_weights_withlpt.get_ff( my_tau1P4.Pt(), mt, mvis
  					       , 0 , my_tau2P4.Pt(), my_metP4.Pt()
  					       , my_njets, 0
  					       , 0, 0 , 0
  					       , TString(jetFakesUnc[i]+"_"+uncs));
    //cout<<jetFakesUnc[i] <<" "<< " FF_unc = "<< FF_unc <<endl;
    string histName = histNumber +"_"+ uncNames[i]+"_"+uncs;
    double weight = event_weight * FF_unc / FF_nominal;
    if ( event_weight==0 || FF_nominal==0|| FF_unc==0)
      weight = 0;
    fillHist(histName, Tau1Index, Tau2Index, true, weight);
  }
}
void tautau_analyzer::JESUnc(string histNumber, int muIndex, int tauIndex, bool isFakeBkg, float event_weight)
{
  if (selected_systematic != "JES") // ensure this is applied only for tau ES systematic
    return;
  /* cout<<"filling JES event "<<eventNumber<<"  unc_shift="<<unc_shift<<" sys="<<selected_systematic */
  /*     <<"  met ="<<my_metP4.Pt() */
  /*     <<"  taupt="<<my_tau2P4.Pt() */
  /*     <<"  elept="<<my_tau1P4.Pt() */
  /*     <<"\n"<<endl; */

  if (unc_shift == "up")
  {
    fillHist(histNumber + "_CMS_JES_up", Tau1Index, Tau2Index, true, event_weight);
  }
  else if (unc_shift == "down")
  {
    fillHist(histNumber + "_CMS_JES_down", Tau1Index, Tau2Index, true, event_weight);
  }
}
void tautau_analyzer::JERUnc(string histNumber, int muIndex, int tauIndex, bool isFakeBkg, float event_weight)
{

  if (selected_systematic != "JER") // ensure this is applied only for tau ES systematic
    return;
  /* cout<<"filling JER event "<<eventNumber<<"  unc_shift="<<unc_shift<<" sys="<<selected_systematic */
  /*     <<"  met ="<<my_metP4.Pt() */
  /*     <<"  taupt="<<my_tau2P4.Pt() */
  /*     <<"  elept="<<my_tau1P4.Pt() */
  /*     <<"\n"<<endl; */

  if (unc_shift == "up")
  {
    fillHist(histNumber + "_CMS_JER_up", Tau1Index, Tau2Index, true, event_weight);
  }
  else if (unc_shift == "down")
  {
    fillHist(histNumber + "_CMS_JER_down", Tau1Index, Tau2Index, true, event_weight);
  }
}
void tautau_analyzer::tauESunc(string histNumber, int muIndex, int tauIndex, bool isFakeBkg, float event_weight)
{
  if (selected_systematic != "tauES") // ensure this is applied only for tau ES systematic
    return;

  int taudm = tau_DecayMode->at(tauIndex);
  string dmName = "";
  if (check_unc)
    cout << "filling tauES unc err = " << endl;
  for (int i = 0; i < 4; i++)
  {
    dmName = tauDM_map[i].first;
    string histName = histNumber + "_CMS_scale_t_" + dmName + "_2018";
    if (tauDM_map[i].second == taudm)
    {
      if (unc_shift == "up")
        fillHist(histName + "_up", Tau1Index, Tau2Index, true, event_weight);

      else if (unc_shift == "down")
        fillHist(histName + "_down", Tau1Index, Tau2Index, true, event_weight);
    }
    else
    {
      if (unc_shift == "up")
        fillHist_nominal(histName + "_up", event_weight);

      else if (unc_shift == "down")
        fillHist_nominal(histName + "_down", event_weight);
    }
  }
}

void tautau_analyzer::tauTRGunc(string histNumber, int muIndex, int tauIndex, bool isFakeBkg, float event_weight)
{
  if (selected_systematic != "tauTRGunc")
    return;

  int taudm = tau_DecayMode->at(tauIndex);
  double tauPtCheck = min(450.0, max(20.0, my_tau2P4.Pt()));
  string uncName = "";
  float trg = 1.0;
  float err = 0;
  float weight = 1.0;
  
  for (int i = 0; i < 4; i++)
  {
    string histName = histNumber + "_CMS_scale_tautrg_" + tauDM_map[i].first + "_2018";
    if (tauDM_map[i].second != taudm)
      err = 0;
    if (unc_shift == "up")
    {
      weight = event_weight * (1 + err);
      fillHist(histName + "_up", Tau1Index, Tau2Index, true, weight);
    }
    else if (unc_shift == "down")
    {
      weight = event_weight * (1 - err);
      fillHist(histName + "_down", Tau1Index, Tau2Index, true, weight);
    }
  }
}

double tautau_analyzer::eleMuSF(int genmatch, double taueta)
{
  double sf_fakeLepton = 1.0;
  if(  genmatch==1 || genmatch==3 )
    sf_fakeLepton = get_BinContent( h_tauFakeEleSF, abs(taueta)) ;
  if(  genmatch==2 || genmatch==4 )
    sf_fakeLepton = get_BinContent( h_tauFakeMuSF, abs(taueta)) ;
  
  if(sf_fakeLepton<0 || sf_fakeLepton>2)
    sf_fakeLepton = 1.0;
  
  //cout<<"genmatch="<< genmatch <<"  taueta="<<abs(taueta)<<"  "<<sf_fakeLepton<<endl;
  return sf_fakeLepton;
}

void tautau_analyzer::leptonTRGunc(string histNumber, int muIndex, int tauIndex, bool isFakeBkg, float event_weight)
{
  if (selected_systematic != "leptonTRGunc")
    return;

  string uncName = "";
  string mutrg[2] = {"CMS_mutautrg_2018", "CMS_singlemutrg_2018"};
  float weight = 1.0;
  w->var("m_pt")->setVal(my_tau1P4.Pt());
  w->var("m_eta")->setVal(my_tau1P4.Eta());
  w->var("t_pt")->setVal(my_tau2P4.Pt());
  w->var("t_mvadm")->setVal(tau_DecayMode->at(tauIndex));
  double m_tracking = w->function("m_trk_ratio")->getVal();
  double m_IDiso = w->function("m_idiso_ic_ratio")->getVal();
  double mu_singletrg = w->function("m_trg_ic_ratio")->getVal();
  double mu_crosstrg = w->function("m_trg_20_ic_ratio")->getVal();

  /// fill cross trg
  {
    uncName = "CMS_mutautrg_2018";
    double err = 0.0;
    double trg = 1.0;
    if (my_tau1P4.Pt() < 25.0 && my_tau2P4.Pt() > 32.0)
    {
      trg = mu_crosstrg;
      err = 0.02;
    }
    if (unc_shift == "up")
    {
      weight = event_weight * (1 + err);
      fillHist(histNumber + "_" + uncName + "_up", Tau1Index, Tau2Index, true, weight);
    }
    else if (unc_shift == "down")
    {
      weight = event_weight * (1 - err);
      fillHist(histNumber + "_" + uncName + "_down", Tau1Index, Tau2Index, true, weight);
    }
  }
  {
    uncName = "CMS_singlemutrg_2018";
    double err = 0.0;
    double trg = 1.0;
    if (my_tau1P4.Pt() > 25.0)
    {
      trg = mu_singletrg;
      err = 0.02;
    }
    if (unc_shift == "up")
    {
      weight = event_weight * (1 + err);
      fillHist(histNumber + "_" + uncName + "_up", Tau1Index, Tau2Index, true, weight);
    }
    else if (unc_shift == "down")
    {
      weight = event_weight * (1 - err);
      fillHist(histNumber + "_" + uncName + "_down", Tau1Index, Tau2Index, true, weight);
    }
  }
}

void tautau_analyzer::electronMissID(string histNumber, int eleIndex, int tauIndex, bool isFakeBkg, float event_weight)
{

  if (selected_systematic != "electronMissID")
    return;

  /* if( !(my_genmatching_l2==1 || my_genmatching_l2==3 || my_genmatching_l1==1 || my_genmatching_l1==3) ) */
  /*   return; */

  string regions[2] = {"barrel", "endcap"};
  string taudm = "";
  string region = "";
  double sf_fes = getTauFES(tauIndex, "");
  double sf_fes_up = getTauFES(tauIndex, "up");
  double sf_fes_down = getTauFES(tauIndex, "down");
  if (abs(my_tau2P4.Eta()) < 1.5)
    region = "barrel";
  else
    region = "endcap";

  for (int i = 0; i < 2; i++)
  {
    taudm = tauDM_map[i].first;
    for (int r = 0; r < 2; r++)
    {
      float weight_up = sf_fes_up / sf_fes;
      float weight_down = sf_fes_down / sf_fes;
      double err = abs(1 - weight_up);
      if (tauDM_map[i].second != tau_DecayMode->at(tauIndex))
      {
        weight_up = 1.0;
        weight_down = 1.0;
        err = 1.0;
      }
      if (region != regions[r])
      {
        weight_up = 1.0;
        weight_down = 1.0;
        err = 1.0;
      }
      if (!(my_genmatching_l2 == 1 || my_genmatching_l2 == 3 || my_genmatching_l1 == 1 || my_genmatching_l1 == 3))
      {
        weight_up = 1.0;
        weight_down = 1.0;
        err = 1.0;
      }
      string histName = histNumber + "_CMS_scale_efaket_" + taudm + "_" + regions[r] + "_2018";
      if (unc_shift == "up")
        fillHist(histName + "_up", Tau1Index, Tau2Index, true, event_weight * (1 + err));
      else if (unc_shift == "down")
        fillHist(histName + "_down", Tau1Index, Tau2Index, true, event_weight * (1 - err));
    }
  }
}
void tautau_analyzer::electronES(string histNumber, int eleIndex, int tauIndex, bool isFakeBkg, float event_weight)
{

  if (selected_systematic != "electronES") // ensure this is applied only for tau ES systematic
    return;

  string histName = histNumber + "_CMS_scale_e_Scale_2018";

  if (unc_shift == "up")
    fillHist(histName + "_up", Tau1Index, Tau2Index, true, event_weight);
  else if (unc_shift == "down")
    fillHist(histName + "_down", Tau1Index, Tau2Index, true, event_weight);
}
void tautau_analyzer::muonES(string histNumber, int eleIndex, int tauIndex, bool isFakeBkg, float event_weight)
{
  if (selected_systematic != "muonES")
    return;

  /* string regions[3] = {"etalt1p2", "eta1p2to2p1", "etam2p1to2p4" }; */
  /* bool applySys[3] = {0, 0, 0}; */

  /* if (abs(my_tau2P4.Eta()) < 1.2) */
  /*   applySys[0] = 1; */
  /* else if (abs(my_tau2P4.Eta()) > 1.2  && abs(my_tau2P4.Eta()) < 2.1) */
  /*   applySys[1] = 1; */
  /* else */
  /*   applySys[2] = 1; */

  /* for(int i=0; i<3; i++){ */
  /*   string histName = histNumber + "_CMS_scale_m_" +regions[i] +"_2018"; */
  /*   if(applySys[i] == 0) err = 0; */
  /*   if (unc_shift == "up") */
  /*     fillHist(histName+"_up", Tau1Index, Tau2Index, true, event_weight); */
  /*   else if (unc_shift == "down") */
  /*     fillHist(histName+"_down", Tau1Index, Tau2Index, true, event_weight); */
  /* } */
}
void tautau_analyzer::muonMissID(string histNumber, int eleIndex, int tauIndex, bool isFakeBkg, float event_weight)
{
  if (selected_systematic != "muonMissID")
    return;

  string region = "";
  string taudm = "";
  float err = 0.01;
  double weight = 1.0;

  for (int i = 0; i < 2; i++)
  {
    string histName = histNumber + "_CMS_scale_mfaket_" + tauDM_map[i].first + "_2018";
    if (tauDM_map[i].second != tau_DecayMode->at(tauIndex))
      err = 0;
    if (!(my_genmatching_l2 == 2 || my_genmatching_l2 == 4 || my_genmatching_l1 == 2 || my_genmatching_l1 == 4))
      err = 0;
    if (unc_shift == "up")
    {
      weight = event_weight * (1 + err);
      fillHist(histName + "_up", Tau1Index, Tau2Index, true, weight);
    }
    else if (unc_shift == "down")
    {
      weight = event_weight * (1 - err);
      fillHist(histName + "_down", Tau1Index, Tau2Index, true, weight);
    }
  }
}

void tautau_analyzer::tauIDunc(string histNumber, int eleIndex, int tauIndex, bool isFakeBkg, float event_weight)
{
  if (selected_systematic != "tauIDunc")
    return;

  double sf = tauSFTool.getSFvsPT(my_tau2P4.Pt(), my_genmatching_l2);
  double sf_up = tauSFTool.getSFvsPT(my_tau2P4.Pt(), my_genmatching_l2, "Up");
  double sf_down = tauSFTool.getSFvsPT(my_tau2P4.Pt(), my_genmatching_l2, "Down");

  string regions[3] = {"CMS_tauideff_pt30to35_2018", "CMS_tauideff_pt35to40_2018", "CMS_tauideff_ptgt40_2018"};
  bool applySys[3] = {0, 0, 0};

  if (my_tau2P4.Pt() >= 30 && my_tau2P4.Pt() < 35)
    applySys[0] = 1;
  else if (my_tau2P4.Pt() >= 35 && my_tau2P4.Pt() < 40)
    applySys[1] = 1;
  else if (my_tau2P4.Pt() >= 40)
    applySys[2] = 1;
  // cout<<"tauIDunc()    sf_up= "<<sf_up<< "   sf="<<sf<<"  sf_down="<<sf_down<<endl;
  for (int i = 0; i < 3; i++)
  {
    double weight_up = sf_up / sf;
    double weight_down = sf_down / sf;
    if (applySys[i] == 0)
    {
      weight_up = 1;
      weight_down = 1;
    }
    if (my_genmatching_l2 < 5)
    {
      weight_up = 1;
      weight_down = 1;
    }
    if (unc_shift == "up")
      fillHist(histNumber + "_" + regions[i] + "_up", Tau1Index, Tau2Index, true, event_weight * weight_up);
    else if (unc_shift == "down")
      fillHist(histNumber + "_" + regions[i] + "_down", Tau1Index, Tau2Index, true, event_weight * weight_down);
  }
}
void tautau_analyzer::dyShape(string histNumber, int muIndex, int tauIndex, bool isFakeBkg, float event_weight)
{
  if (selected_systematic != "dyShape")
    return;
  double zptweight = zptmass_weight;
  double weight_up = (zptweight + 0.10 * abs(zptweight - 1)) / zptweight;
  double weight_dn = (zptweight - 0.10 * abs(zptweight - 1)) / zptweight;

  if (unc_shift == "up")
    fillHist(histNumber + "_CMS_htt_dyShape_up", Tau1Index, Tau2Index, true, event_weight * weight_up);
  else if (unc_shift == "down")
    fillHist(histNumber + "_CMS_htt_dyShape_down", Tau1Index, Tau2Index, true, event_weight * weight_dn);
}
void tautau_analyzer::ttbarShape(string histNumber, int muIndex, int tauIndex, bool isFakeBkg, float event_weight)
{
  if (selected_systematic != "ttbarShape")
    return;
  double top_pt_weight = 1.0;
  if (found_TTbar_sample)
  {
    // int t_index = get_t_Cand(); int tbar_index = get_tbar_Cand();
    if (t_index > -1 && tbar_index > -1)
    {
      top_pt_weight = sqrt(TMath::Exp(0.0615 - 0.0005 * mcPt->at(t_index)) * TMath::Exp(0.0615 - 0.0005 * mcPt->at(tbar_index)));
    }
  }
  if (unc_shift == "up")
    fillHist(histNumber + "_CMS_htt_ttbarShape_up", Tau1Index, Tau2Index, true, event_weight * (2 * (top_pt_weight - 1) + 1));
  else if (unc_shift == "down")
    fillHist(histNumber + "_CMS_htt_ttbarShape_down", Tau1Index, Tau2Index, true, event_weight / top_pt_weight);
}
void tautau_analyzer::prefiringUnc(string histNumber, int muIndex, int tauIndex, bool isFakeBkg, float event_weight)
{
  if (selected_systematic != "prefiringUnc")
    return;
  /////// prefiring unc
  if (unc_shift == "up")
    fillHist(histNumber + "_CMS_Prefiring_up", Tau1Index, Tau2Index, true, event_weight * prefiringweightup / prefiringweight);
  else if (unc_shift == "down")
    fillHist(histNumber + "_CMS_Prefiring_down", Tau1Index, Tau2Index, true, event_weight * prefiringweightdown / prefiringweight);
}

void tautau_analyzer::metSysUnc(string histNumber, int muIndex, int tauIndex, bool isFakeBkg, float event_weight)
{

  string njetName = "";
  if (selected_systematic == "metresponse" && unc_shift == "up")
    fillHist(histNumber + "_CMS_htt_boson_scale_met_" + njetName + "Jet_2018_up", Tau1Index, Tau2Index, true, event_weight);
  else if (selected_systematic == "metresolution" && unc_shift == "up")
    fillHist(histNumber + "_CMS_htt_boson_reso_met_" + njetName + "Jet_2018_up", Tau1Index, Tau2Index, true, event_weight);

  else if (selected_systematic == "metresponse" && unc_shift == "down")
    fillHist(histNumber + "_CMS_htt_boson_scale_met_" + njetName + "Jet_2018_down", Tau1Index, Tau2Index, true, event_weight);
  else if (selected_systematic == "metresolution" && unc_shift == "down")
    fillHist(histNumber + "_CMS_htt_boson_reso_met_" + njetName + "Jet_2018_down", Tau1Index, Tau2Index, true, event_weight);
}

void tautau_analyzer::metClusteredUnc(string histNumber, int muIndex, int tauIndex, bool isFakeBkg, float event_weight)
{

  if (selected_systematic == "metunclustered" && unc_shift == "up")
    fillHist(histNumber + "_CMS_scale_met_unclustered_2018_up", Tau1Index, Tau2Index, true, event_weight);
  if (selected_systematic == "metunclustered" && unc_shift == "down")
    fillHist(histNumber + "_CMS_scale_met_unclustered_2018_down", Tau1Index, Tau2Index, true, event_weight);
}

void tautau_analyzer::makeTestPlot(string histNumber, int eleIndex, int ele2Index, int tauIndex, float event_weight)
{
  // string hNumber = histNumber;
  // std::vector<int> tmpCand; tmpCand.clear();
  // for(int iEle=0;iEle<nEle;iEle++)
  //   {
  //     tmpCand.push_back(iEle);
  //   }
  // plotFill("elePt_"+hNumber,  elePt->at(tmpCand[0]) , 38 , 24 , 100,  event_weight);
  // cout<<"     elePt_"<<hNumber<<" = "<< elePt->at(tmpCand[0])<<endl;
}

TLorentzVector tautau_analyzer::MetRecoilCorrections(int muIndex, int tauIndex, TLorentzVector mymet)
{
  //// met recoil correction
  TLorentzVector BosonP4, nuP4, nuP4tmp;
  TLorentzVector nu1P4, gentau1P4;
  TLorentzVector nu2P4, gentau2P4;
  TLorentzVector visGenP4;
  for (int i = 0; i < nMC; i++)
  {
    if (mcPID->at(i) == 23)
      BosonP4.SetPtEtaPhiE(mcPt->at(i), mcEta->at(i), mcPhi->at(i), mcE->at(i));
  }
  // visGenP4=BosonP4;
  if (BosonP4.Pt() == 0)
  {
    for (int i = 0; i < nMC; i++)
    {
      if (mcPID->at(i) == 15)
        gentau1P4.SetPtEtaPhiE(mcPt->at(i), mcEta->at(i), mcPhi->at(i), mcE->at(i));
      if (mcPID->at(i) == -15)
        gentau2P4.SetPtEtaPhiE(mcPt->at(i), mcEta->at(i), mcPhi->at(i), mcE->at(i));
    }
    BosonP4 = gentau1P4 + gentau2P4;
  }
  visGenP4 = BosonP4;
  for (int i = 0; i < nMC; i++)
  {
    if (abs(mcPID->at(i)) == 16 || abs(mcPID->at(i)) == 14 || abs(mcPID->at(i)) == 12)
    {
      nuP4tmp.SetPtEtaPhiE(mcPt->at(i), mcEta->at(i), mcPhi->at(i), mcE->at(i));
      visGenP4 = visGenP4 - nuP4tmp;
    }
  }
  // apply recoil corrections on event-by-event basis (Type I PF MET)
  float pfmet = mymet.Pt();
  float pfmetPhi = mymet.Phi();
  float pfmetcorr_ex = pfmet * cos(pfmetPhi);
  float pfmetcorr_ey = pfmet * sin(pfmetPhi);
  /* std::vector<int> jetCand;       jetCand.clear(); */
  /* jetCand=getJetCand(muIndex, tauIndex); */

  recoilPFMetCorrector.CorrectByMeanResolution(pfmet * cos(pfmetPhi), // uncorrected type I pf met px (float)
                                               pfmet * sin(pfmetPhi), // uncorrected type I pf met py (float)
                                               BosonP4.Px(),          // generator Z/W/Higgs px (float)
                                               BosonP4.Py(),          // generator Z/W/Higgs py (float)
                                               visGenP4.Px(),         // generator visible Z/W/Higgs px (float)
                                               visGenP4.Py(),         // generator visible Z/W/Higgs py (float)
                                               my_njets,              // number of jets (hadronic jet multiplicity) (int)
                                               pfmetcorr_ex,          // corrected type I pf met px (float)
                                               pfmetcorr_ey           // corrected type I pf met py (float)
  );

  mymet.SetPxPyPzE(pfmetcorr_ex, pfmetcorr_ey, 0, sqrt(pfmetcorr_ex * pfmetcorr_ex + pfmetcorr_ey * pfmetcorr_ey));
  return mymet;
}

TLorentzVector tautau_analyzer::applyTauESCorrections(TLorentzVector tauP4, int tauIndex, int shift)
{
  if (is_MC == false)
    return tauP4;
  TLorentzVector tauP4Corr = tauP4;
  int tauGenmatching = my_genmatching_l2;

  if (tauGenmatching >= 5 && tau_DecayMode->at(tauIndex) == 0)
    tauP4Corr = tauP4Corr * 1.007;
  else if (tauGenmatching >= 5 && tau_DecayMode->at(tauIndex) == 1)
    tauP4Corr = tauP4Corr * 0.998;
  else if (tauGenmatching >= 5 && tau_DecayMode->at(tauIndex) == 10)
    tauP4Corr = tauP4Corr * 1.001;
  if ((tauGenmatching == 1 || tauGenmatching == 3) && tau_DecayMode->at(tauIndex) == 0)
    tauP4Corr = tauP4Corr * 0.982;
  else if ((tauGenmatching == 1 || tauGenmatching == 3) && tau_DecayMode->at(tauIndex) == 1)
    tauP4Corr = tauP4Corr * 1.018;
  if ((tauGenmatching == 2 || tauGenmatching == 4) && tau_DecayMode->at(tauIndex) == 0)
    tauP4Corr = tauP4Corr * 0.998;
  else if ((tauGenmatching == 2 || tauGenmatching == 4) && tau_DecayMode->at(tauIndex) == 1)
    tauP4Corr = tauP4Corr * 0.992;
  if (selected_systematic != "tauES")
    return tauP4Corr;

  float pt_low = 34;
  float pt_high = 170;
  int taudm = tau_DecayMode->at(tauIndex);

  float tes = get_BinContent(h_tauesSF, taudm);
  float err = 0;
  if (tauP4Corr.Pt() >= pt_high)
  {
    err = get_BinError(h_tauesSF_highpt, taudm);
  }
  else if (tauP4Corr.Pt() > pt_low)
  {
    float err_high = get_BinError(h_tauesSF_highpt, taudm);
    float err_low = get_BinError(h_tauesSF, taudm);
    err = err_low + (err_high - err_low) / (pt_high - pt_low) * (tauP4Corr.Pt() - pt_low);
  }
  else
  {
    err = get_BinError(h_tauesSF, taudm);
  }
  if (shift > 0)
    tauP4Corr = tauP4Corr * (1 + err);
  else if (shift < 0)
    tauP4Corr = tauP4Corr * (1 - err);
  return tauP4Corr;
}

TLorentzVector tautau_analyzer::applyEleESCorrections(TLorentzVector eleP4, int eleIndex, int shift)
{
  TLorentzVector eleP4Corr = eleP4;

  eleP4Corr = eleP4 * (eleCalibE->at(eleIndex) / eleP4.E());
  float err = eleEnergySigma->at(eleIndex);
  if (shift > 0)
    eleP4Corr = eleP4Corr * (1 + err);
  else if (shift < 0)
    eleP4Corr = eleP4Corr * (1 - err);

  return eleP4Corr;
}

int tautau_analyzer::if_DY_Genmatching(int muIndex, int tauIndex)
{
  // if(!is_MC)
  //   return 1;
  if (found_DYjet_sample == false)
    return 1;
  else if (found_DYjet_sample == true)
  {
    if (my_genmatching_l2 < 5 && my_genmatching_l1 < 5) // dy -> ll genmatched
      return 2;
    if (my_genmatching_l2 >= 5 && my_genmatching_l1 < 5) // dy -> ltau genmatched
      return 3;
  }
  return 0;
}

int tautau_analyzer::eventCategory(int muIndex, int tauIndex, double higgsPt)
{
  int category = 0;
  /* std::vector<int> jetCand;       jetCand.clear(); */
  /* jetCand=getJetCand(muIndex, tauIndex); */
  int njets = jetCand.size();
  double mjj = 0;
  TLorentzVector jet1P4, jet2P4;
  if (njets >= 2)
  {
    jet1P4.SetPtEtaPhiE(jetPt->at(jetCand[0]), jetEta->at(jetCand[0]), jetPhi->at(jetCand[0]), jetE->at(jetCand[0]));
    jet2P4.SetPtEtaPhiE(jetPt->at(jetCand[1]), jetEta->at(jetCand[1]), jetPhi->at(jetCand[1]), jetE->at(jetCand[1]));
    mjj = (jet1P4 + jet2P4).M();
  }
  ///////category selection
  if (njets == 0)
  {
    if (higgsPt < 10)
      return category = 1;
    else if (higgsPt > 10)
      return category = 2;
  }
  if (njets >= 2 && mjj > 350)
  {
    if (higgsPt < 200)
      return category = 5;
    else if (higgsPt > 200)
      return category = 6;
  }
  if (njets == 1)
    return category = 3;
  if (njets >= 2 && mjj < 350)
    return category = 4;

  return 0;
}
double tautau_analyzer::getTauFES(int tauIndex, string shift)
{
  int binNumber = 0;
  if (tau_DecayMode->at(tauIndex) == 0)
  {
    if (abs(my_tau2P4.Eta()) < 1.5)
      binNumber = 0;
    else
      binNumber = 2;
  }
  else if (tau_DecayMode->at(tauIndex) == 1)
  {
    if (abs(my_tau2P4.Eta()) < 1.5)
      binNumber = 1;
    else
      binNumber = 3;
  }
  float yValue = h_taufesSF->GetY()[binNumber];
  if (shift == "")
    return yValue;
  else if (shift == "up")
    return yValue + h_taufesSF->GetErrorYhigh(binNumber);
  else if (shift == "down")
    return yValue - h_taufesSF->GetErrorYlow(binNumber);
  return 1.0;
}

double tautau_analyzer::get_zptmass_weight()
{
  double weight = 1.0;
  int genZCand = -1;
  if (is_MC)
    genZCand = getZCand();
  if (genZCand > -1)
  {
    w->var("m_pt")->setVal(my_tau1P4.Pt());
    w->var("m_eta")->setVal(my_tau1P4.Eta());
    w->var("z_gen_pt")->setVal(mcPt->at(genZCand));
    w->var("z_gen_mass")->setVal(mcMass->at(genZCand));
    weight = w->function("zptmass_weight_nom")->getVal();
  }
  return weight;
}
double tautau_analyzer::btag_sf_weight(int muIndex, int tauIndex)
{
  double weight = 1.0;
  vector<int> looseBjet = bJet_loose();
  vector<int> mediumBjet = bJet_medium();
  if (mediumBjet.size() > 0)
  {
    weight = btag_csv->EvalSF(0, "comb", "central", 1, jetPt->at(mediumBjet[0]), jetEta->at(mediumBjet[0]));
    return weight;
  }
  if (looseBjet.size() > 0)
  {
    weight = btag_csv->EvalSF(0, "comb", "central", 1, jetPt->at(looseBjet[0]), jetEta->at(looseBjet[0]));
    return weight;
  }
  return 1.0;
}
