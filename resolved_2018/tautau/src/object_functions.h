
std::vector<int> tautau_analyzer::getTauCand_noID(double tauPtCut, double tauEtaCut, int shift){
  std::vector<int> tmpCand;
  tmpCand.clear();
  TLorentzVector dau2;
  //Loop over taus      
  for(int iTau=0;iTau<nTau;iTau++)
    {
      dau2.SetPtEtaPhiE(tau_Pt->at(iTau),tau_Eta->at(iTau)
			,tau_Phi->at(iTau), tau_Energy->at(iTau)
			);
      //if(is_MC)
      //	dau2 = applyTauESCorrections(dau2, iTau, shift);
      bool kinematic = false;
      bool tauId = false;
      bool decayModeCut = false;
      bool tauIsolation = false;
      bool mutau_separation=false;
      bool newDecayModeFinding=false;
      bool tau_reject=false;
      bool trigger = false;
      if( dau2.Pt() > tauPtCut 
	  && fabs( dau2.Eta() )< tauEtaCut 
	  && tau_LeadChargedHadron_dz->at(iTau) < 0.2
	  && fabs(tau_Charge->at(iTau))==1
	  )kinematic = true;
      //if( tau_byVVVLooseDeepTau2017v2p1VSjet->at(iTau)==1 ) tauIsolation=true;
      if( tau_DecayMode->at(iTau)==0 || tau_DecayMode->at(iTau)==1 || tau_DecayMode->at(iTau)==10 || tau_DecayMode->at(iTau)==11 ) decayModeCut=true;
      if( tau_byVVVLooseDeepTau2017v2p1VSe->at(iTau)==1 && tau_byVLooseDeepTau2017v2p1VSmu->at(iTau)==1)tau_reject=true;
      if( tau_IDbits->at(iTau)>>1&1==1 ) newDecayModeFinding=true;
      
      if( kinematic==true    
	  && decayModeCut==true   
	  && tau_reject==true   
	  && newDecayModeFinding==true
	  //&& tauIsolation==true
	  )
	{
	  tmpCand.push_back(iTau);
    	}                                     
    }
  return tmpCand;
    
}

void tautau_analyzer::assignTauIndices(vector<int> tauIndices , int& tau1 , int& tau2 ){
  if( tauIndices.size()<2 )
    {
      tau1=-1; tau2=-1; return;
    }
  else 
    {
      for(int ai=0; ai<tauIndices.size(); ai++)
	{
	  for(int i=0; i<tauIndices.size(); i++)
	    {
	      if( (tauIndices[ai] != tauIndices[i])
		  && tau_Pt->at(tauIndices[ai]) > 55
		  && tau_byVVVLooseDeepTau2017v2p1VSjet->at(tauIndices[ai])==1 
		  && !(tau_byMediumDeepTau2017v2p1VSjet->at(tauIndices[ai])==1)
		  && tau_byMediumDeepTau2017v2p1VSjet->at(tauIndices[i])==1
		  && tau_Pt->at(tauIndices[ai]) > tau_Pt->at(tauIndices[i])
		  )
		{
		  tau1 = tauIndices[ai]; tau2 = tauIndices[i];
		  return;
		}
	    }
	}
    }
  return;
}

std::vector<int> tautau_analyzer::getTauCand(double tauPtCut, double tauEtaCut, int shift){
  std::vector<int> tmpCand;
  tmpCand.clear();
  TLorentzVector dau2;
  //Loop over taus      
  for(int iTau=0;iTau<nTau;iTau++)
    {
      dau2.SetPtEtaPhiE(tau_Pt->at(iTau),tau_Eta->at(iTau)
			,tau_Phi->at(iTau), tau_Energy->at(iTau)
			);
      //if(is_MC)
      //	dau2 = applyTauESCorrections(dau2, iTau, shift);
      bool kinematic = false;
      bool tauId = false;
      bool decayModeCut = false;
      bool tauIsolation = false;
      bool mutau_separation=false;
      bool newDecayModeFinding=false;
      bool tau_reject=false;
      bool trigger = false;
      if( dau2.Pt() > tauPtCut 
	  && fabs( dau2.Eta() )< tauEtaCut 
	  && tau_LeadChargedHadron_dz->at(iTau) < 0.2
	  && fabs(tau_Charge->at(iTau))==1
	  )kinematic = true;
      if( tau_byMediumDeepTau2017v2p1VSjet->at(iTau)==1 ) tauIsolation=true; 
      if( tau_DecayMode->at(iTau)==0 || tau_DecayMode->at(iTau)==1 || tau_DecayMode->at(iTau)==10 || tau_DecayMode->at(iTau)==11 ) decayModeCut=true;
      if( tau_byVVVLooseDeepTau2017v2p1VSe->at(iTau)==1 && tau_byVLooseDeepTau2017v2p1VSmu->at(iTau)==1)tau_reject=true;
      if( tau_IDbits->at(iTau)>>1&1==1 ) newDecayModeFinding=true;

      if( kinematic==true    
	  && decayModeCut==true   
	  && tauIsolation==true 
	  && tau_reject==true   
	  && newDecayModeFinding==true
	  )
	{
	  tmpCand.push_back(iTau);
    	}
    }
  //std::vector<int> res; res.clear();
  std::vector<std::pair<float, int>> iso_map;
  for(int i=0; i<tmpCand.size(); i++){ 
    iso_map.push_back({ abs(tau_byIsolationMVArun2017v2DBoldDMwLTraw2017->at(tmpCand[i])) , tmpCand[i] });
  }
  std::sort(iso_map.rbegin(), iso_map.rend());
  // for debugging
  //cout<<endl;
  // for(int i=0; i<iso_map.size(); i++)
  //   std::cout << iso_map[i].second << " " << iso_map[i].first << " " ;
  tmpCand.clear();
  for(int i=0; i<iso_map.size(); i++)
    tmpCand.push_back( iso_map[i].second );
  return tmpCand;
  
}
std::vector<int> tautau_analyzer::getAISRTauCand(double tauPtCut, double tauEtaCut, int shift){
  std::vector<int> tmpCand;  tmpCand.clear();
  TLorentzVector dau2;
  
  for(int iTau=0;iTau<nTau;iTau++) //Loop over taus
    {
      dau2.SetPtEtaPhiE(tau_Pt->at(iTau),tau_Eta->at(iTau)
                        ,tau_Phi->at(iTau), tau_Energy->at(iTau)
                        );
      //if(is_MC)
      //dau2  = applyTauESCorrections(dau2, iTau, shift);
      bool kinematic = false;
      bool tauId = false;
      bool decayModeCut = false;
      bool tauIsolation = false;
      bool mutau_separation=false;
      bool newDecayModeFinding=false;
      bool tau_reject=false;
      bool trigger = false;
      if( dau2.Pt() > tauPtCut
          && fabs( dau2.Eta() )< tauEtaCut
          && tau_LeadChargedHadron_dz->at(iTau) < 0.2
          && fabs(tau_Charge->at(iTau))==1
          )kinematic = true;
      if(  tau_byVVVLooseDeepTau2017v2p1VSjet->at(iTau)==1 && !(tau_byMediumDeepTau2017v2p1VSjet->at(iTau)==1) ) tauIsolation=true;
      if( tau_DecayMode->at(iTau)==0 || tau_DecayMode->at(iTau)==1 || tau_DecayMode->at(iTau)==10 || tau_DecayMode->at(iTau)==11 ) decayModeCut=true;
      if( tau_byVVVLooseDeepTau2017v2p1VSe->at(iTau)==1 && tau_byVLooseDeepTau2017v2p1VSmu->at(iTau)==1)tau_reject=true;
      if( tau_IDbits->at(iTau)>>1&1==1 ) newDecayModeFinding=true;
      if( kinematic==true    
	  && decayModeCut==true   
	  && tauIsolation==true 
	  && tau_reject==true   
	  && newDecayModeFinding==true
	  )
	{
	  tmpCand.push_back(iTau);
    	}                                                           
    }                                                                                       
  return tmpCand;  
}
int tautau_analyzer::getZCand()
{
  if(!is_MC)
    return -1;
  for(int iMC=0;iMC<nMC;iMC++) //Loop over mc
    {
      if(fabs(mcPID->at(iMC))==23 && mcStatus->at(iMC)==62)
	return iMC;
    }
  return -1;
}
int tautau_analyzer::get_t_Cand()
{
  if(!is_MC)
    return -1;
  for(int iMC=0;iMC<nMC;iMC++) //Loop over mc
    {
      if(mcPID->at(iMC)==6 && mcStatus->at(iMC)==62)
	return iMC;
    }
  return -1;
}
int tautau_analyzer::get_tbar_Cand()
{
  if(!is_MC)
    return -1;
  for(int iMC=0;iMC<nMC;iMC++) //Loop over mc
    {
      if(mcPID->at(iMC)==-6 && mcStatus->at(iMC)==62)
        return iMC;
    }
  return -1;
}
std::vector<int> tautau_analyzer::getJetCand(int tau1Index, int tau2Index){
  std::vector<int> tmpCand;  tmpCand.clear();
  for(int iJet=0;iJet<nJet;iJet++) //Loop over jets
    {
      bool kinematic30 = false; bool foundNoisyJets=false;
      bool kinematic50 = false; bool passLoosePUID=false;
      bool jet_id = false; bool drPassed=false;
      if( jetPt->at(iJet) > 30
          && abs(jetEta->at(iJet))<4.7
          && (jetID->at(iJet)>>0&1)==1
          //&& jetPUFullID->at(iJet)>>1&1==1
          ) kinematic30=true;
      /* if(jetPt->at(iJet) < 50 */
      /*    && abs(jetEta->at(iJet))>2.65 */
      /*    && abs(jetEta->at(iJet))<3.139 */
      /*    //&& (jetID->at(iJet)>>0&1)==1 */
      /*    ) foundNoisyJets=true; */

      if( jetPt->at(iJet) < 50 )
        {
          if(jetPUFullID->at(iJet)>>1&1==1 )
            passLoosePUID=true;
          else
            passLoosePUID=false;
        }
      else if (jetPt->at(iJet) > 50 )
        passLoosePUID=true;
      
      double lepton1Phi=tau_Phi->at(tau1Index);
      double lepton1Eta= tau_Eta->at(tau1Index);
      double lepton2Phi=0;double lepton2Eta=0;
      lepton2Phi= tau_Phi->at(tau2Index); lepton2Eta=tau_Eta->at(tau2Index);
      double dr_jetEle=delta_R( jetPhi->at(iJet), jetEta->at(iJet) , lepton1Phi, lepton1Eta );
      double dr_jetTau=delta_R( jetPhi->at(iJet), jetEta->at(iJet) , lepton2Phi, lepton2Eta);
      if( dr_jetEle>0.5 && dr_jetTau>0.5 )
        drPassed=true;

      if(kinematic30 && passLoosePUID && drPassed==true)
        tmpCand.push_back(iJet);
    }
  return tmpCand;
}

int tautau_analyzer::thirdLeptonVeto(){
  std::vector<int> tmpCand;
  tmpCand.clear();
  int thirdLepIndex = -1;
  bool thirdLepVeto=true;
  for(int iMu=0; iMu < nMu;iMu++)
    {
      bool kinematic = false;
      if( (*muPt)[iMu] > 10.0  && fabs((*muEta)[iMu])< 2.4 && (*muD0)[iMu] < 0.045 && (*muDz)[iMu] < 0.2 ) kinematic = true;
      bool muonId =false;
      if( muIDbit->at(iMu)>>1&1==1) muonId =true;
      bool relative_iso = false;
      float relMuIso = ( muPFChIso->at(iMu) + max( muPFNeuIso->at(iMu) + muPFPhoIso->at(iMu) - 0.5 *muPFPUIso->at(iMu) , 0.0 )) / (muPt->at(iMu));
      if( relMuIso < 0.3 ) relative_iso = true;
      if(muonId==true && kinematic==true && relative_iso==true){
	tmpCand.push_back(iMu);
      }                   
    }          
  if(tmpCand.size() > 0){ thirdLepIndex = tmpCand[0]; thirdLepVeto=false;}
  return thirdLepIndex;
  
}
bool tautau_analyzer::thirdLeptonVeto(int tau1Index, int tau2Index){
  std::vector<int> tmpCand; 
  tmpCand.clear();
  int thirdLepIndex = -1;
  std::vector<int> tmpEleCand;
  tmpEleCand.clear();
  bool thirdLepVeto=true;
  for(int iEle=0; iEle < nEle;iEle++)
    {
      bool kinematic = false;
      if( (*elePt)[iEle] > 10.0  
	  && fabs((*eleEta)[iEle])< 2.5 
	  && (*eleD0)[iEle] < 0.045 
	  && (*eleDz)[iEle] < 0.2 
	  && eleMissHits->at(iEle) <= 1 && eleConvVeto->at(iEle)==1
	  ) kinematic = true;
      bool electronId =false;
      if( eleIDbit->at(iEle)>>8&1==1) electronId =true;
      bool relative_iso = false;
      float relEleIso = ( elePFChIso->at(iEle) + max( elePFNeuIso->at(iEle) + elePFPhoIso->at(iEle) - 0.5 *elePFPUIso->at(iEle) , 0.0 )) / (elePt->at(iEle));
      if( relEleIso < 0.3 ) relative_iso = true;
      if(electronId==true && kinematic==true && relative_iso==true){
	tmpEleCand.push_back(iEle);
      }                                                                                      
    }                                                          
  double deltaRm1=0; double deltaRm2=0;
  if(tmpEleCand.size() > 0 )
    { 
      deltaRm1 = delta_R(tau_Phi->at(tau1Index),tau_Eta->at(tau1Index), elePhi->at(tmpEleCand[0]),  eleEta->at(tmpEleCand[0]));
      deltaRm2 = delta_R(tau_Phi->at(tau1Index),tau_Eta->at(tau1Index), elePhi->at(tmpEleCand[0]),  eleEta->at(tmpEleCand[0]));
      if(deltaRm1>0.5 || deltaRm2>0.5 ){
	return false;
      }
    }
  
  for(int iMu=0; iMu < nMu;iMu++)
    {
      bool kinematic = false;
      if( (*muPt)[iMu] > 10.0  && fabs((*muEta)[iMu])< 2.4 && (*muD0)[iMu] < 0.045 && (*muDz)[iMu] < 0.2 ) kinematic = true;
      bool muonId =false;
      if( muIDbit->at(iMu)>>1&1==1) muonId =true;
      bool relative_iso = false;
      float relMuIso = ( muPFChIso->at(iMu) + max( muPFNeuIso->at(iMu) + muPFPhoIso->at(iMu) - 0.5 *muPFPUIso->at(iMu) , 0.0 )) / (muPt->at(iMu));
      if( relMuIso < 0.3 ) relative_iso = true;
      if(muonId==true && kinematic==true && relative_iso==true){
	tmpCand.push_back(iMu);
      }                   
    } 
  deltaRm1=0;  deltaRm2=0;
  if(tmpCand.size() > 0 )
    { 
      deltaRm1 = delta_R(tau_Phi->at(tau1Index),tau_Eta->at(tau1Index), muPhi->at(tmpCand[0]),  muEta->at(tmpCand[0]));
      deltaRm2 = delta_R(tau_Phi->at(tau2Index),tau_Eta->at(tau2Index), muPhi->at(tmpCand[0]),  muEta->at(tmpCand[0]));
      if(deltaRm1>0.5 || deltaRm2>0.5 ){
	return false;
      }
    }
  
  return true;
  
}
bool tautau_analyzer::thirdLeptonVeto(int eleIndex, int tauIndex, int ele2Index){
  std::vector<int> tmpCand;
  tmpCand.clear();
  int thirdLepIndex = -1;
  bool thirdLepVeto=true;
  for(int iMu=0; iMu < nMu;iMu++)
    {
      bool kinematic = false;
      if( (*muPt)[iMu] > 10.0  && fabs((*muEta)[iMu])< 2.4 && (*muD0)[iMu] < 0.045 && (*muDz)[iMu] < 0.2 ) kinematic = true;
      bool muonId =false;
      if( muIDbit->at(iMu)>>1&1==1) muonId =true;
      bool relative_iso = false;
      float relMuIso = ( muPFChIso->at(iMu) + max( muPFNeuIso->at(iMu) + muPFPhoIso->at(iMu) - 0.5 *muPFPUIso->at(iMu) , 0.0 )) / (muPt->at(iMu));
      if( relMuIso < 0.3 ) relative_iso = true;
      if(muonId==true && kinematic==true && relative_iso==true){
	tmpCand.push_back(iMu);
      }                   
    } 
  double deltaRm1=0; double deltaRm2=0; double deltaRm3=0;
  if(tmpCand.size() > 0 )
    { 
      deltaRm1 = delta_R(elePhi->at(eleIndex),eleEta->at(eleIndex), muPhi->at(tmpCand[0]),  muEta->at(tmpCand[0]));
      deltaRm2 = delta_R(tau_Phi->at(tauIndex),tau_Eta->at(tauIndex), muPhi->at(tmpCand[0]),  muEta->at(tmpCand[0]));
      deltaRm3 = delta_R(elePhi->at(ele2Index),eleEta->at(ele2Index), muPhi->at(tmpCand[0]),  muEta->at(tmpCand[0]));
      if(deltaRm1>0.5 && deltaRm2>0.5 && deltaRm3>0.5){
	return false;
      }
    }
  else
    return true;
  
}
                                                                                    

double tautau_analyzer::delta_R(float phi1, float eta1, float phi2, float eta2)
{
  double deltaeta = abs(eta1 - eta2);
  double deltaphi = DeltaPhi(phi1, phi2);
  double deltar   = sqrt(deltaeta*deltaeta + deltaphi*deltaphi);
  return deltar;
  
}



double tautau_analyzer::DeltaPhi(double phi1, double phi2)
//Gives the (minimum) separation in phi between the specified phi values
//Must return a positive value
{
  double pi = TMath::Pi();
  double dphi = phi1-phi2;
  if(dphi>pi) dphi = 2.0*pi - dphi;
  if(dphi<= -1*pi) dphi =  2.0*pi +dphi;
  return fabs(dphi);
}

float tautau_analyzer::TMass_F(float LepPt, float LepPhi , float met, float metPhi) {
  return  sqrt(2.0*LepPt*met*(1.0-cos(DeltaPhi(LepPhi, metPhi))));
  //return sqrt(pow(LepPt + met, 2) - pow(LepPt* cos(LepPhi) + met * cos(metPhi), 2) - pow(LepPt * sin(LepPhi) + met * sin(metPhi), 2));
}

float tautau_analyzer::TMasstaumet_F(TLorentzVector a, TLorentzVector b, TLorentzVector met) {
  float aPt=a.Pt(); float aPhi=a.Phi();
  float aPx=aPt*cos(aPhi); float aPy=aPt*sin(aPhi);

  float bPt=b.Pt(); float bPhi=b.Phi();
  float bPx=bPt*cos(bPhi); float bPy=bPt*sin(bPhi);

  float metPt=met.Pt(); float metPhi=met.Phi();
  float metPx=metPt*cos(metPhi); float metPy=metPt*sin(metPhi);

  float totalTMass = sqrt((( aPt + bPt + metPt )*(aPt + bPt + metPt)) - ((aPx + bPx + metPx )*(aPx + bPx + metPx)) - ((aPy + bPy + metPy)*(aPy + bPy + metPy)));
  return totalTMass;
}


float tautau_analyzer::TotTMass_F(TLorentzVector a, TLorentzVector b, TLorentzVector met) {
  float totalTMass = (a + b+ met).Mt();
  return totalTMass;
}


float tautau_analyzer::VisMass_F(TLorentzVector a, TLorentzVector b){
  float visibleMass = (a + b).M();
  return visibleMass;
}

float tautau_analyzer::pTvecsum_F(float pt1, float pt2, float phi1, float phi2) {
  float pt_vecSum = sqrt( pow(pt1*cos(phi1) + pt2*cos(phi2), 2) + pow(pt1*sin(phi1) + pt2*sin(phi2), 2));
  return pt_vecSum;
}
float tautau_analyzer::pTvecsum_F(TLorentzVector a, TLorentzVector b, TLorentzVector c) {
  float pt_vecSum = (a + b+ c).Pt();
  return pt_vecSum;
}

vector<int> tautau_analyzer::bJet_medium(int tau1Index, int tau2Index)
{
  std::vector<int> tmpJetCand;
  tmpJetCand.clear();
  bool veto = true;
  bool foundBjet = false;
  double lepton1Phi=tau_Phi->at(tau1Index);
  double lepton1Eta= tau_Eta->at(tau1Index);
  double lepton2Phi= tau_Phi->at(tau2Index); double lepton2Eta=tau_Eta->at(tau2Index);   
  double dr_jetEle=0.0; double dr_jetTau=0.0; 
  
  for(int iJets=0; iJets<nJet ; iJets++){
    bool particles_separated=false;
    bool kinematic = false;
    bool passLoosePUID=false;
    dr_jetEle =delta_R( jetPhi->at(iJets), jetEta->at(iJets) , lepton1Phi, lepton1Eta );
    dr_jetTau =delta_R( jetPhi->at(iJets), jetEta->at(iJets) , lepton2Phi, lepton2Eta);
    if( dr_jetEle>0.5 && dr_jetTau>0.5)
      particles_separated=true;
    if( jetPt->at(iJets) > 25
	&& abs(jetEta->at(iJets)) < 2.4 
	&& jetID->at(iJets)>>0&1==1 
       	&& (jetDeepCSVTags_b->at(iJets) + jetDeepCSVTags_bb->at(iJets)) > 0.4941
	)
      kinematic=true;
    if( jetPt->at(iJets)<50 )
      {
	if(jetPUFullID->at(iJets)>>1&1==1 )
	  passLoosePUID=true;
	else
	  passLoosePUID=false;
      }
    else if (jetPt->at(iJets) > 50 )
      passLoosePUID=true;
    
    if(particles_separated && kinematic )
      tmpJetCand.push_back(iJets);
  }
  return tmpJetCand;
}

vector<int> tautau_analyzer::bJet_loose(int tau1Index, int tau2Index)
{
  std::vector<int> tmpJetCand;
  tmpJetCand.clear();
  bool veto = true;
  bool foundBjet = false;
  double lepton1Phi=tau_Phi->at(tau1Index);
  double lepton1Eta= tau_Eta->at(tau1Index);
  double lepton2Phi= tau_Phi->at(tau2Index); double lepton2Eta=tau_Eta->at(tau2Index);   
  double dr_jetEle=0.0; double dr_jetTau=0.0; 
  
  for(int iJets=0; iJets<nJet ; iJets++){
    bool kinematic = false;
    bool passLoosePUID=false;
    bool particles_separated=false;
    dr_jetEle =delta_R( jetPhi->at(iJets), jetEta->at(iJets) , lepton1Phi, lepton1Eta );
    dr_jetTau =delta_R( jetPhi->at(iJets), jetEta->at(iJets) , lepton2Phi, lepton2Eta);
    if( dr_jetEle>0.5 && dr_jetTau>0.5)
      particles_separated=true;
      
    if( jetPt->at(iJets) > 25
	&& abs(jetEta->at(iJets)) < 2.4 
	&& jetID->at(iJets)>>0&1==1 
	&& (jetDeepCSVTags_b->at(iJets) + jetDeepCSVTags_bb->at(iJets)) > 0.1522 
	)
      kinematic=true;
    if( jetPt->at(iJets)<50 )
      {
        if(jetPUFullID->at(iJets)>>1&1==1 )
          passLoosePUID=true;
        else
          passLoosePUID=false;
      }
    else if (jetPt->at(iJets) > 50 )
      passLoosePUID=true;
    
    if(particles_separated && kinematic )
      tmpJetCand.push_back(iJets);
    
  }
  return tmpJetCand;
}

bool passBjetVeto_medium(int eleIndex, int tauIndex){
  return true;
}
bool passBjetVeto_loose(int eleIndex, int tauIndex){
  return true;
}

bool passBjetVeto(int eleIndex, int tauIndex){
  return passBjetVeto_medium(eleIndex,tauIndex) && passBjetVeto_loose(eleIndex,tauIndex);
  
}
bool tautau_analyzer::passDiElectronVeto(int eleIndex)
{
  std::vector<int> tmpCand; int tmpEleIndex1=-1; int tmpEleIndex2=-1;
  tmpCand.clear();
  bool veto = true;
  bool awayFromEverything=true;
  for(int iEle=0;iEle<nEle;iEle++)
    {
      bool kinematic = false;
      if( elePt->at(iEle) > 15
	  && fabs(eleEta->at(iEle))< 2.5
	  && fabs(eleD0->at(iEle)) < 0.045
	  && fabs(eleDz->at(iEle)) < 0.2
       	  ) kinematic = true;
      bool electronId =false;
      if( eleIDbit->at(iEle)>>3&1==1) electronId =true; // cut based electron id veto
      bool relative_iso = false;    
      float relEleIso = ( elePFChIso->at(iEle) + max( elePFNeuIso->at(iEle) + elePFPhoIso->at(iEle) - 0.5 *elePFPUIso->at(iEle) , 0.0 )) / (elePt->at(iEle));
      if( relEleIso < 0.3 ) relative_iso = true;
      if( kinematic && electronId && relative_iso ){
	tmpCand.push_back(iEle);
      }	
    }
  std::vector<int> iElePlus; iElePlus.clear(); 
  std::vector<int> iEleMinus; iEleMinus.clear();
  for(int i=0; i<tmpCand.size(); i++){
    if(eleCharge->at(tmpCand[i]) < 0) iEleMinus.push_back(tmpCand[i]);
    if(eleCharge->at(tmpCand[i]) > 0) iElePlus.push_back(tmpCand[i]);
  }
  if(iElePlus.size()>0 && iEleMinus.size()>0){
    double deltaR= delta_R(elePhi->at(iEleMinus[0]), eleEta->at(iEleMinus[0]), elePhi->at(iElePlus[0]), eleEta->at(iElePlus[0]));
    if (deltaR > 0.15 && eleCharge->at(iElePlus[0])*eleCharge->at(iEleMinus[0])<0) {
      return false;
    }
  }
  return true;
  
}
bool tautau_analyzer::eVetoZTTp001dxyz(int tau1Index, int tau2Index){
  std::vector<int> tmpCand;  tmpCand.clear();
  //std::vector<int> output;  output.clear();
  bool awayFromEverything = true;   int tmpEleIndex=-1;
  //Loop over electrons      
  for(int iEle=0;iEle<nEle;iEle++)
    {
      //if(iEle==eleIndex)continue;
      bool kinematic = false;
      if( elePt->at(iEle) > 10
	  && fabs(eleEta->at(iEle))< 2.5
	  && fabs(eleD0->at(iEle)) < 0.045
	  && fabs(eleDz->at(iEle)) < 0.2
	  && eleConvVeto->at(iEle)==1 && eleConvVeto->at(iEle)==1
       	  ) kinematic = true;
      bool electronId =false;
      if( eleIDbit->at(iEle)>>8&1==1) electronId =true; // cut based electron id veto
      bool relative_iso = false;    
      float relEleIso = ( elePFChIso->at(iEle) + max( elePFNeuIso->at(iEle) + elePFPhoIso->at(iEle) - 0.5 *elePFPUIso->at(iEle) , 0.0 )) / (elePt->at(iEle));
      if( relEleIso < 0.3 ) relative_iso = true;
      if( kinematic && electronId && relative_iso ){
	tmpCand.push_back(iEle);
      }	
    }
  if(tmpCand.size()>0)
    {
      double deltaR_et = delta_R(tau_Phi->at(tau1Index), tau_Eta->at(tau1Index), elePhi->at(tmpCand[0]), eleEta->at(tmpCand[0]));
      double deltaR_ee = delta_R(tau_Phi->at(tau2Index), tau_Eta->at(tau2Index), elePhi->at(tmpCand[0]), eleEta->at(tmpCand[0]));
      if(! (deltaR_et>0.0001 && deltaR_ee>0.0001))
	return false;
    }
  else 
    return true;
    
}
bool tautau_analyzer::mVetoZTTp001dxyz(int tau1Index, int tau2Index){
  std::vector<int> tmpCand;
  tmpCand.clear();
  bool awayFromEverything = true;   int tmpMuIndex=-1;
  //Loop over muons
  for(int iMu=0; iMu < nMu;iMu++)
    {
      bool kinematic = false;
      if( (*muPt)[iMu] > 10.0  && fabs((*muEta)[iMu])< 2.4 && (*muD0)[iMu] < 0.045 && (*muDz)[iMu] < 0.2 ) kinematic = true;
      bool muonId =false;
      if( muIDbit->at(iMu)>>1&1==1) muonId =true;
      bool relative_iso = false;
      float relMuIso = ( muPFChIso->at(iMu) + max( muPFNeuIso->at(iMu) + muPFPhoIso->at(iMu) - 0.5 *muPFPUIso->at(iMu) , 0.0 )) / (muPt->at(iMu));
      if( relMuIso < 0.3 ) relative_iso = true;
      if(muonId==true && kinematic==true && relative_iso==true){
	tmpCand.push_back(iMu);
      }                   
    } 
  double deltaRm1=0.0; double deltaRm2=0.0;
  if(tmpCand.size() > 0 )
    { 
      deltaRm1 = delta_R(tau_Phi->at(tau1Index), tau_Eta->at(tau1Index), muPhi->at(tmpCand[0]),  muEta->at(tmpCand[0]));
      deltaRm2 = delta_R(tau_Phi->at(tau2Index), tau_Eta->at(tau2Index), muPhi->at(tmpCand[0]),  muEta->at(tmpCand[0]));
      if(! (deltaRm1>0.0001 && deltaRm2>0.0001) )
	return false;
    }
  else
    return true;
  
}
int tautau_analyzer::myGenMaching(int tauIndex)
{
  if(is_MC==false)
    return 0;

  double recotau_eta=tau_Eta->at(tauIndex);
  double recotau_phi=tau_Phi->at(tauIndex);
  double closestEle=999;  double closestMu=999;
  double closestETau=999;  double closestMTau=999;  double closestHTau=999;  double closestDR=999;
  double genLeptonEta=0;
  double genLeptonPhi=0;
  bool prompt_ele=false;  bool tau_ele=false; bool tau_mu=false; bool tau_tauh=false;
  bool prompt_mu=false;
  for(int imc=0; imc<nMC; imc++){
    genLeptonEta=mcEta->at(imc);
    genLeptonPhi=mcPhi->at(imc);
    double mc_tau_dr= dR(recotau_eta, recotau_phi, genLeptonEta, genLeptonPhi);
    if(mc_tau_dr<closestDR)
      closestDR=mc_tau_dr;
  }


  for(int imc=0; imc<nMC; imc++){
    genLeptonEta=mcEta->at(imc);
    genLeptonPhi=mcPhi->at(imc);
    double dr_tau_lepton=dR(recotau_eta, recotau_phi, genLeptonEta, genLeptonPhi);
    //prompt_ele=false; prompt_mu=false; tau_ele=false; tau_mu=false; tau_tauh=false;
    
    ///// prompt electrons
    if(mcPt->at(imc)>8 && abs(mcPID->at(imc))==11 && mcStatusFlag->at(imc)>>1&1==1)
      {
	//dr_tau_lepton= dR(recotau_eta, recotau_phi, genLeptonEta, genLeptonPhi);
	if( dr_tau_lepton<0.2 && closestEle>dr_tau_lepton)
	  {closestEle=dr_tau_lepton; prompt_ele=true; }
	
      }
    ///// prompt muons
    if(mcPt->at(imc)>8 && abs(mcPID->at(imc))==13 && mcStatusFlag->at(imc)>>1&1==1)
      {
	//dr_tau_lepton= dR(recotau_eta, recotau_phi, genLeptonEta, genLeptonPhi);
        if( dr_tau_lepton<0.2 && closestMu>dr_tau_lepton)
          {closestMu=dr_tau_lepton; prompt_mu=true; }
      }
    ///// tau -> electrons
    if(mcPt->at(imc)>8 && abs(mcPID->at(imc))==11 && mcStatusFlag->at(imc)>>5&1==1)
      {
	//dr_tau_lepton= dR(recotau_eta, recotau_phi, genLeptonEta, genLeptonPhi);
        if( dr_tau_lepton<0.2 && closestETau>dr_tau_lepton)
          {closestETau=dr_tau_lepton;  tau_ele=true; }
      }
    ///// tau -> muons
    if(mcPt->at(imc)>8 && abs(mcPID->at(imc))==13 && mcStatusFlag->at(imc)>>5&1==1)
      {
	//dr_tau_lepton= dR(recotau_eta, recotau_phi, genLeptonEta, genLeptonPhi);
        if( dr_tau_lepton<0.2 && closestMTau>dr_tau_lepton)
          {closestMTau=dr_tau_lepton;  tau_mu=true; }
      }
    ///// tau -> tau hadronic
    if(mcPt->at(imc)>15 &&  abs(mcPID->at(imc))!=13 &&  abs(mcPID->at(imc))!=11 )
      {
	dr_tau_lepton= dR(recotau_eta, recotau_phi, genLeptonEta, genLeptonPhi);
        if( dr_tau_lepton<0.2 && closestHTau>dr_tau_lepton)
          {closestHTau=dr_tau_lepton;   tau_tauh=true; }
      } 
  }
  double closestLTau =  min(closestETau, closestMTau);
  if(closestHTau < closestLTau)
    closestLTau=closestHTau;
  //closestDR = min(closestLTau, min(closestEle, closestMu) );
  int genMatch=0;
  //cout<<"closestDR: "<<closestDR<<" closestEle:"<<closestEle<<" closestMu:"<<closestMu<<" closestETau:"<<closestETau<<" closestMTau:"<<closestMTau<<" closestHTau:"<<closestHTau<<endl;
  
  if( (prompt_ele || prompt_mu))
    {
      if(closestEle<0.2 && prompt_ele)
	//return 1;
	genMatch=1;
      else if(closestMu<0.2 && prompt_mu)				
	//return 2;
	genMatch=2;
    }
  else if(closestDR <= closestLTau)
    {
      if(closestETau<0.2 && closestETau< min(closestMTau, closestHTau) && tau_ele) //return 3;
	genMatch=3;
      else if(closestMTau<0.2 && closestMTau< min(closestETau, closestHTau) && tau_mu) //return 4;
	genMatch=4;
      else if(closestHTau<0.2 && closestHTau< min(closestETau, closestMTau) && tau_tauh) //return 5;
	genMatch=5;
    }
  else
    genMatch=6;


  return genMatch;

}
int tautau_analyzer::myGenMaching1(int eleIndex)
{
  if(is_MC==false)
    return 0;
  double recotau_eta=eleEta->at(eleIndex);
  double recotau_phi=elePhi->at(eleIndex);
  double closestEle=999;  double closestMu=999;
  double closestETau=999;  double closestMTau=999;  double closestHTau=999;  double closestDR=999;
  double genLeptonEta=0;
  double genLeptonPhi=0;
  bool prompt_ele=false;  bool tau_ele=false; bool tau_mu=false; bool tau_tauh=false;
  bool prompt_mu=false;
  for(int imc=0; imc<nMC; imc++){
    genLeptonEta=mcEta->at(imc);
    genLeptonPhi=mcPhi->at(imc);
    double mc_tau_dr= dR(recotau_eta, recotau_phi, genLeptonEta, genLeptonPhi);
    if(mc_tau_dr<closestDR)
      closestDR=mc_tau_dr;
  }


  for(int imc=0; imc<nMC; imc++){
    genLeptonEta=mcEta->at(imc);
    genLeptonPhi=mcPhi->at(imc);
    double dr_tau_lepton=dR(recotau_eta, recotau_phi, genLeptonEta, genLeptonPhi);
    //prompt_ele=false; prompt_mu=false; tau_ele=false; tau_mu=false; tau_tauh=false;
    
    ///// prompt electrons
    if(mcPt->at(imc)>8 && abs(mcPID->at(imc))==11 && mcStatusFlag->at(imc)>>1&1==1)
      {
	//dr_tau_lepton= dR(recotau_eta, recotau_phi, genLeptonEta, genLeptonPhi);
	if( dr_tau_lepton<0.2 && closestEle>dr_tau_lepton)
	  {closestEle=dr_tau_lepton; prompt_ele=true; }
	
      }
    ///// prompt muons
    if(mcPt->at(imc)>8 && abs(mcPID->at(imc))==13 && mcStatusFlag->at(imc)>>1&1==1)
      {
	//dr_tau_lepton= dR(recotau_eta, recotau_phi, genLeptonEta, genLeptonPhi);
        if( dr_tau_lepton<0.2 && closestMu>dr_tau_lepton)
          {closestMu=dr_tau_lepton; prompt_mu=true; }
      }
    ///// tau -> electrons
    if(mcPt->at(imc)>8 && abs(mcPID->at(imc))==11 && mcStatusFlag->at(imc)>>5&1==1)
      {
	//dr_tau_lepton= dR(recotau_eta, recotau_phi, genLeptonEta, genLeptonPhi);
        if( dr_tau_lepton<0.2 && closestETau>dr_tau_lepton)
          {closestETau=dr_tau_lepton;  tau_ele=true; }
      }
    ///// tau -> muons
    if(mcPt->at(imc)>8 && abs(mcPID->at(imc))==13 && mcStatusFlag->at(imc)>>5&1==1)
      {
	//dr_tau_lepton= dR(recotau_eta, recotau_phi, genLeptonEta, genLeptonPhi);
        if( dr_tau_lepton<0.2 && closestMTau>dr_tau_lepton)
          {closestMTau=dr_tau_lepton;  tau_mu=true; }
      }
    ///// tau -> tau hadronic
    if(mcPt->at(imc)>15 &&  abs(mcPID->at(imc))!=13 &&  abs(mcPID->at(imc))!=11 )
      {
	dr_tau_lepton= dR(recotau_eta, recotau_phi, genLeptonEta, genLeptonPhi);
        if( dr_tau_lepton<0.2 && closestHTau>dr_tau_lepton)
          {closestHTau=dr_tau_lepton;   tau_tauh=true; }
      } 
  }
  double closestLTau =  min(closestETau, closestMTau);
  if(closestHTau < closestLTau)
    closestLTau=closestHTau;
  //closestDR = min(closestLTau, min(closestEle, closestMu) );
  int genMatch=0;
  //cout<<"closestDR: "<<closestDR<<" closestEle:"<<closestEle<<" closestMu:"<<closestMu<<" closestETau:"<<closestETau<<" closestMTau:"<<closestMTau<<" closestHTau:"<<closestHTau<<endl;
  
  if( (prompt_ele || prompt_mu))
    {
      if(closestEle<0.2 && prompt_ele)
	//return 1;
	genMatch=1;
      else if(closestMu<0.2 && prompt_mu)				
	//return 2;
	genMatch=2;
    }
  else if(closestDR <= closestLTau)
    {
      if(closestETau<0.2 && closestETau< min(closestMTau, closestHTau) && tau_ele) //return 3;
	genMatch=3;
      else if(closestMTau<0.2 && closestMTau< min(closestETau, closestHTau) && tau_mu) //return 4;
	genMatch=4;
      else if(closestHTau<0.2 && closestHTau< min(closestETau, closestMTau) && tau_tauh) //return 5;
	genMatch=5;
    }
  else
    genMatch=6;

  
  return genMatch;

}
std::vector<int> tautau_analyzer::getGenMu(){
  std::vector<int> tmpCand;
  tmpCand.clear();
  int count1=0; int count2=0;
  for(int imc=0; imc<nMC; imc++){
    if( genMatch2->at(imc)>>2&1==1 || genMatch2->at(imc)>>4&1==1 ) {tmpCand.push_back(imc); count1++;}
    if( (genMatch2->at(imc)>>2&1==1 || genMatch2->at(imc)>>4&1==1) && fabs(mcPID->at(imc))==13 ){count2++;}
  }
  //cout<<"count1:"<<count1<<"  count2:"<<count2<<endl;
  return tmpCand; 
}
float tautau_analyzer::exponential(float x,float a,float b,float c) {
  return a * TMath::Exp(-b * x) + c;
}
double tautau_analyzer::exponential( double pT) {
  return TMath::Exp(0.088 - 0.00087*pT + 0.00000092*pow(pT,2) ) ; 
}
double tautau_analyzer::getScaleFactors(  double tau1pt, double tau2pt, double tau1eta, double tau2eta, int taudm1, int taudm2, int tau1GenMatch, int tau2GenMatch, bool isFakebkg)
{

  int tau1dm = taudm1;
  int tau2dm = taudm2;
  int my_genmatching_l1 = tau1GenMatch;   
  int my_genmatching_l2 =    tau2GenMatch;

  bool debug=false;
  double rv_sf=1.0;
  
  double sf_tau1idSF_m = 1.0; double sf_tau2idSF_m = 1.0;
  double sf_tau1idSF_vvvl = 1.0; double sf_tau2idSF_vvvl = 1.0;
  double sf_tauTrg = 1.0;
  double sf_fakeEleMu = 1.0; 
  
  if(  my_genmatching_l1>=5 )
    {
      sf_tau1idSF_m = get_BinContent( h_tauidSF_m, tau1dm) ;
      //sf_tau1idSF_m = fn_tauIDSF_m->Eval(tau1pt) ;
      sf_tau1idSF_vvvl = get_BinContent( h_tauidSF_vvvl, tau1dm);
    }
  if(  my_genmatching_l2>=5 )
    {
      sf_tau2idSF_m = get_BinContent( h_tauidSF_m, tau2dm) ;
      //sf_tau2idSF_m = fn_tauIDSF_m->Eval(tau2pt) ;
      sf_tau2idSF_vvvl = get_BinContent( h_tauidSF_vvvl, tau2dm);
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
  //if (higgPt_weight>1.0 && found_DYjet_sample) higgPt_weight = 1.0;
  

  sf_tauTrg = TriggerSF_med.get_sf(tau1dm, tau1pt) * TriggerSF_med.get_sf(tau2dm, tau2pt);
  
  sf_fakeEleMu = eleMuSF(my_genmatching_l1, tau1eta) * eleMuSF(my_genmatching_l2, tau2eta);

  //// tau trigger, id scale factors from RooWorkspace
  w->var("t_pt")->setVal(my_tau1P4.Pt());
  w->var("t_eta")->setVal(my_tau1P4.Eta());
  w->var("t_phi")->setVal(my_tau1P4.Phi());
  w->var("t_dm")->setVal(tau1dm);
  double t1_deeptauid = w->function("t_deeptauid_dm_medium")->getVal();
  double t1_deeptauid_vvvl = w->function("t_deeptauid_dm_vvvloose")->getVal();
  //  double t1_trg_pog = w->function("t_trg_pog_deeptau_medium_mutau_ratio")->getVal();
  double t1_trg_pog_m = 1.0;
  if (tau1dm == 0) double t1_trg_pog_m = w->function("t_trg_pog_deeptau_medium_mutau_dm0_ratio")->getVal();
  else if (tau1dm == 1) double t1_trg_pog_m = w->function("t_trg_pog_deeptau_medium_mutau_dm1_ratio")->getVal();
  else if (tau1dm == 10) double t1_trg_pog_m = w->function("t_trg_pog_deeptau_medium_mutau_dm10_ratio")->getVal();
  else if (tau1dm == 11) double t1_trg_pog_m = w->function("t_trg_pog_deeptau_medium_mutau_dm11_ratio")->getVal();
  w->var("t_pt")->setVal(my_tau2P4.Pt());
  w->var("t_eta")->setVal(my_tau2P4.Eta());
  w->var("t_phi")->setVal(my_tau2P4.Phi());
  w->var("t_dm")->setVal(tau2dm);
  double t2_deeptauid = w->function("t_deeptauid_dm_medium")->getVal();
  //  double t2_trg_pog = w->function("t_trg_pog_deeptau_medium_mutau_ratio")->getVal();
  double t2_trg_pog_m= 1.0;
  if (tau2dm == 0) double t2_trg_pog_m = w->function("t_trg_pog_deeptau_medium_mutau_dm0_ratio")->getVal();
  else if (tau2dm == 1) double t2_trg_pog_m = w->function("t_trg_pog_deeptau_medium_mutau_dm1_ratio")->getVal();
  else if (tau2dm == 10) double t2_trg_pog_m = w->function("t_trg_pog_deeptau_medium_mutau_dm10_ratio")->getVal();
  else if (tau2dm == 11) double t2_trg_pog_m = w->function("t_trg_pog_deeptau_medium_mutau_dm11_ratio")->getVal();

  double zpt_weight = zptmass_weight;
  if(found_DYjet_sample)
    {
      rv_sf = sf_tau1idSF_m * sf_tau2idSF_m *TriggerSF_med.get_sf(tau1dm, tau1pt) * TriggerSF_med.get_sf(tau2dm, tau2pt) * sf_fakeEleMu * zptmass_weight * t1_deeptauid * t2_deeptauid * t1_trg_pog_m * t2_trg_pog_m ;
    }
  else
    rv_sf = sf_tau1idSF_m * sf_tau2idSF_m *TriggerSF_med.get_sf(tau1dm, tau1pt) * TriggerSF_med.get_sf(tau2dm, tau2pt)  * sf_fakeEleMu * t1_deeptauid * t2_deeptauid *t1_trg_pog_m * t2_trg_pog_m ;
  
  if(isFakebkg)
    {
      if(found_DYjet_sample)
	{
	  rv_sf = sf_tau1idSF_vvvl * sf_tau2idSF_m * TriggerSF_med.get_sf(tau1dm, tau1pt) * TriggerSF_med.get_sf(tau2dm, tau2pt) * sf_fakeEleMu * zptmass_weight * t1_deeptauid_vvvl * t2_deeptauid  * t1_trg_pog_m * t2_trg_pog_m ;
	}
      else
	rv_sf =  sf_tau1idSF_vvvl * sf_tau2idSF_m * TriggerSF_med.get_sf(tau1dm, tau1pt) * TriggerSF_med.get_sf(tau2dm, tau2pt) * sf_fakeEleMu * t1_deeptauid_vvvl * t2_deeptauid  * t1_trg_pog_m * t2_trg_pog_m ;
    }
  if(found_Signal)
    rv_sf = 1;
  return rv_sf;
}


bool tautau_analyzer::TriggerSelection(TLorentzVector tau1P4, TLorentzVector tau2P4)
{
  if((HLTTau>>5&1==1 && tau1P4.Pt()>40.0 && tau2P4.Pt()>40.0)
     || (HLTTau>>6&1==1 && tau1P4.Pt()>45.0 && tau2P4.Pt()>45.0)
     || (HLTTau>>7&1==1 && tau1P4.Pt()>45.0 && tau2P4.Pt()>45.0) 
     || (HLTTau>>17&1==1 && tau1P4.Pt()>45.0 && tau2P4.Pt()>45.0) 
    )
    return true;
  else
    return false;
}
bool tautau_analyzer::MatchTriggerFilter(int eleIndex, int tauIndex)
{
  
  return true;
}

double  tautau_analyzer::getFR(int tauIndex){
  double frWeight=1.0;
  return frWeight;
}

void tautau_analyzer::fillUncPlots( string histNumber , int tau1Index, int tau2Index, bool isFakeBkg, float event_weight, int shift){
  //////////////////////  fill unccertainity plots ////////////////////////
  string hNumber = histNumber;
  if(check_unc)cout<<"entry # : "<<eventNumber<<"          Shift value = "<<shift<<endl;
  printP4values("entering fillUncPlots");

  ///////// jet-tau fakes unc
  if(isFakeBkg && selected_systematic=="jetFakes"){
    jetFakeUnc( histNumber, Tau1Index, Tau2Index, isFakeBkg, event_weight);
  }
  
  if(!is_MC) return;
  if(isFakeBkg) return;
  //  energy scale systematics
  ////////// tau es unc
  tauESunc( histNumber, Tau1Index, Tau2Index, true, event_weight);
  ////// JES
  JESUnc(histNumber, Tau1Index, Tau2Index, true, event_weight);
  ////// JER
  JERUnc(histNumber, Tau1Index, Tau2Index, true, event_weight);
  ////// met sys
  metSysUnc(histNumber, Tau1Index, Tau2Index, true, event_weight);
  metClusteredUnc(histNumber, Tau1Index, Tau2Index, true, event_weight);

  ///// scaling systematics
  /////// tauh ID unc
  tauIDunc( histNumber, Tau1Index, Tau2Index, true, event_weight);
  /////// trigger unc
  tauTRGunc( histNumber, Tau1Index, Tau2Index, true, event_weight);
  //   /////// prefiring unc
  prefiringUnc(histNumber, Tau1Index, Tau2Index, true, event_weight);
  //// dy_shape
  dyShape(histNumber, Tau1Index, Tau2Index, true, event_weight);
  //// ttbar shape
  ttbarShape(histNumber, Tau1Index, Tau2Index, true, event_weight);
  


  
}

void tautau_analyzer::jetFakeUnc( string histNumber , int tau1Index, int tau2Index, bool isFakeBkg, float event_weight){
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
    fillHist(histName, Tau1Index, Tau2Index, my_tau1P4, my_tau2P4, true, weight);
  }
}
void tautau_analyzer::JESUnc( string histNumber , int tau1Index, int tau2Index, bool isFakeBkg, float event_weight){
  // up =  1 + jetJECUnc  , down = 1 - jetJECUnc
  if(selected_systematic!="JES") // ensure this is applied only for tau ES systematic
    return;
  printP4values("entering JES");
  if(unc_shift=="up")
    {
      fillHist(histNumber+"_CMS_JES_up", Tau1Index, Tau2Index, my_tau1P4, my_tau2P4, true, event_weight);
    }
  else if(unc_shift=="down")
    {
      fillHist(histNumber+"_CMS_JES_down", Tau1Index, Tau2Index, my_tau1P4, my_tau2P4, true, event_weight);
    }      
}
void tautau_analyzer::JERUnc( string histNumber , int tau1Index, int tau2Index, bool isFakeBkg, float event_weight){
  if(selected_systematic!="JER") // ensure this is applied only for tau ES systematic
    return;
  printP4values("entering JER");
  if(unc_shift=="up")
    {
      fillHist(histNumber+"_CMS_JER_up", Tau1Index, Tau2Index, my_tau1P4, my_tau2P4, true, event_weight);
    }
  else if(unc_shift=="down")
    {
      fillHist(histNumber+"_CMS_JER_down",Tau1Index, Tau2Index, my_tau1P4, my_tau2P4, true, event_weight);
    }

}
void tautau_analyzer::tauESunc( string histNumber , int tau1Index, int tau2Index, bool isFakeBkg, float event_weight){
  if(selected_systematic=="tau1ES")
    {
      string histName = histNumber+"_CMS_scale_t1_";
      int taudm = tau_DecayMode->at(Tau1Index);
      string dmName = "";
      for(int i=0; i<4; i++){
	dmName = tauDM_map[i].first;
	if(tauDM_map[i].second == taudm){
	  if (unc_shift == "up")
	    fillHist( histName +dmName+"_up", Tau1Index, Tau2Index, my_tau1P4, my_tau2P4, true, event_weight);
	  else if (unc_shift == "down")
	    fillHist( histName +dmName+"_down", Tau1Index, Tau2Index, my_tau1P4, my_tau2P4, true, event_weight);
	}
	else{
	  if (unc_shift == "up")
	    fillHist_nominal(histName +dmName+"_up", event_weight);
	  else if (unc_shift == "down")
	    fillHist_nominal(histName +dmName+"_down", event_weight);
	}
      }
    }
  if(selected_systematic=="tau2ES")
    {
      string histName = histNumber+"_CMS_scale_t2_";
      int taudm = tau_DecayMode->at(Tau2Index);
      string dmName = "";
      for(int i=0; i<4; i++){
	dmName = tauDM_map[i].first;
	if(tauDM_map[i].second == taudm){
	  if (unc_shift == "up")
	    fillHist( histName +dmName+"_up", Tau1Index, Tau2Index, my_tau1P4, my_tau2P4, true, event_weight);
	  else if (unc_shift == "down")
	    fillHist( histName +dmName+"_down", Tau1Index, Tau2Index, my_tau1P4, my_tau2P4, true, event_weight);
	}
	else{
	  if (unc_shift == "up")
	    fillHist_nominal(histName +dmName+"_up", event_weight);
	  else if (unc_shift == "down")
	    fillHist_nominal(histName +dmName+"_down", event_weight);
	}
      }
    }
    
}

void tautau_analyzer::tauTRGunc( string histNumber , int tau1Index, int tau2Index, bool isFakeBkg, float event_weight){
  int taudm = -1;
  double tauPtCheck = 0;
  float trg = 1.0; float err = 0; float weight = 1.0;
  if(selected_systematic=="tau1TRGunc")
    {
      taudm = tau_DecayMode->at(Tau1Index);
      tauPtCheck= min(450.0, max(20.0, my_tau1P4.Pt()));
      trg =  TriggerSF_med.get_sf(taudm, tauPtCheck);
      err = TriggerSF_med.get_sf_err(taudm, tauPtCheck);
      //cout<<" tau1TRGunc  up = "<< (1+err)<< "    dn = "<< (1-err) <<endl;
      for(int i=0; i<4; i++){
	string uncName = "CMS_doubletautrg_t1_" + tauDM_map[i].first +"_2018";
	if(tauDM_map[i].second == taudm ){
	  if (unc_shift == "up")
	    fillHist(histNumber+"_"+uncName+"_up", Tau1Index, Tau2Index, my_tau1P4, my_tau2P4, true, event_weight*(1+err));
	  else if( unc_shift == "down")
	    fillHist(histNumber+"_"+uncName+"_down", Tau1Index, Tau2Index, my_tau1P4, my_tau2P4, true, event_weight*(1-err));
	}
	else{
	  if (unc_shift == "up")
            fillHist(histNumber+"_"+uncName+"_up", Tau1Index, Tau2Index, my_tau1P4, my_tau2P4, true, event_weight);
          else if( unc_shift == "down")
            fillHist(histNumber+"_"+uncName+"_down", Tau1Index, Tau2Index, my_tau1P4, my_tau2P4, true, event_weight);
	}
      }
    }
  if(selected_systematic=="tau2TRGunc")
    {
      taudm = tau_DecayMode->at(Tau2Index);
      tauPtCheck= min(450.0, max(20.0, my_tau2P4.Pt()));
      trg =  TriggerSF_med.get_sf(taudm, tauPtCheck);
      err = TriggerSF_med.get_sf_err(taudm, tauPtCheck);
      //cout<<" tau2TRGunc  up = "<< (1+err)<< "    dn = "<< (1-err) <<endl;
      for(int i=0; i<4; i++){
	string uncName = "CMS_doubletautrg_t2_" + tauDM_map[i].first +"_2018";
	if(tauDM_map[i].second == taudm ){
	if (unc_shift == "up")
	  fillHist(histNumber+"_"+uncName+"_up", Tau1Index, Tau2Index, my_tau1P4, my_tau2P4, true, event_weight*(1+err));
	else if( unc_shift == "down")
	  fillHist(histNumber+"_"+uncName+"_down", Tau1Index, Tau2Index, my_tau1P4, my_tau2P4, true, event_weight*(1-err));
	}
	else{
	  if (unc_shift == "up")
            fillHist(histNumber+"_"+uncName+"_up", Tau1Index, Tau2Index, my_tau1P4, my_tau2P4, true, event_weight);
          else if( unc_shift == "down")
            fillHist(histNumber+"_"+uncName+"_down", Tau1Index, Tau2Index, my_tau1P4, my_tau2P4, true, event_weight);
	}
      }
    }
}

void tautau_analyzer::tauIDunc( string histNumber , int tau1Index, int tau2Index, bool isFakeBkg, float event_weight){
  if(selected_systematic=="tau1IDunc")
    {
      double sf = tauSFTool.getSFvsPT(my_tau1P4.Pt(), my_genmatching_l1);
      double sf_up   = tauSFTool.getSFvsPT(my_tau1P4.Pt(), my_genmatching_l1, "Up");
      double sf_down = tauSFTool.getSFvsPT(my_tau1P4.Pt(), my_genmatching_l1, "Down");
      int taudm = tau_DecayMode->at(Tau1Index);
      printP4values("entering tau1IDunc");
      for(int i=0; i<4; i++){
	//cout<<" tau1IDunc up weight = "<<sf_up/sf << "    dn weight = "<<sf_down/sf <<endl; 
	string uncName = "CMS_tauideff_t1_" + tauDM_map[i].first+"_2018";
	if(tauDM_map[i].second == taudm && my_genmatching_l1>=5)
	  {
	    if (unc_shift == "up")
	      fillHist(histNumber+"_"+uncName+"_up", Tau1Index, Tau2Index, my_tau1P4, my_tau2P4, true, event_weight*sf_up/sf);
	    else if( unc_shift == "down")
	      fillHist(histNumber+"_"+uncName+"_down", Tau1Index, Tau2Index, my_tau1P4, my_tau2P4, true, event_weight*sf_down/sf);
	  }
	else
	  {
	    if (unc_shift == "up")
	      fillHist(histNumber+"_"+uncName+"_up", Tau1Index, Tau2Index, my_tau1P4, my_tau2P4, true, event_weight);
	    else if( unc_shift == "down")
	      fillHist(histNumber+"_"+uncName+"_down", Tau1Index, Tau2Index, my_tau1P4, my_tau2P4, true, event_weight);
	  }
      }
    }
  if (selected_systematic=="tau2IDunc")
    {
      double sf = tauSFTool.getSFvsPT(my_tau2P4.Pt(), my_genmatching_l2);
      double sf_up   = tauSFTool.getSFvsPT(my_tau2P4.Pt(), my_genmatching_l2, "Up");
      double sf_down = tauSFTool.getSFvsPT(my_tau2P4.Pt(), my_genmatching_l2, "Down");
      int taudm = tau_DecayMode->at(Tau2Index);
      printP4values("entering tau2IDunc");
      for(int i=0; i<4; i++){
	//cout<<" tau2IDunc up weight = "<<sf_up/sf << "    dn weight = "<<sf_down/sf <<endl;
	string uncName = "CMS_tauideff_t2_" + tauDM_map[i].first+"_2018";
	if(tauDM_map[i].second == taudm &&  my_genmatching_l2>=5 )
	  {
	    if (unc_shift == "up")
	      fillHist(histNumber+"_"+uncName+"_up", Tau1Index, Tau2Index, my_tau1P4, my_tau2P4, true, event_weight*sf_up/sf);
	    else if( unc_shift == "down")
	      fillHist(histNumber+"_"+uncName+"_down", Tau1Index, Tau2Index, my_tau1P4, my_tau2P4, true, event_weight*sf_down/sf);
	  }
	else
	  {
	    if (unc_shift == "up")
	      fillHist(histNumber+"_"+uncName+"_up", Tau1Index, Tau2Index, my_tau1P4, my_tau2P4, true, event_weight  );
	    else if( unc_shift == "down")
	      fillHist(histNumber+"_"+uncName+"_down", Tau1Index, Tau2Index, my_tau1P4, my_tau2P4, true, event_weight);
	  }
      }
    }
}
void tautau_analyzer::dyShape( string histNumber , int tau1Index, int tau2Index, bool isFakeBkg, float event_weight){
   if(selected_systematic!="dyShape")
    return;
   double zptweight = zptmass_weight;
   double weight_up = (zptweight+0.10*abs(zptweight-1))/zptweight;
   double weight_dn = (zptweight-0.10*abs(zptweight-1))/zptweight;
   
   if(unc_shift == "up")
     fillHist(histNumber+"_CMS_htt_dyShape_up", Tau1Index, Tau2Index, my_tau1P4, my_tau2P4, true, event_weight * weight_up);
   else if (unc_shift == "down")
     fillHist(histNumber+"_CMS_htt_dyShape_down", Tau1Index, Tau2Index, my_tau1P4, my_tau2P4, true, event_weight * weight_dn);
}
void tautau_analyzer::ttbarShape( string histNumber , int tau1Index, int tau2Index, bool isFakeBkg, float event_weight){
  if(selected_systematic!="ttbarShape")
    return;
  double top_pt_weight=1.0;
  if(found_TTbar_sample){
    //int t_index = get_t_Cand(); int tbar_index = get_tbar_Cand();
    if( t_index >-1 && tbar_index > -1 ){
      top_pt_weight = sqrt( TMath::Exp( 0.0615 - 0.0005*mcPt->at(t_index)) * TMath::Exp( 0.0615 - 0.0005*mcPt->at(tbar_index)) );
    }
  }
  if (unc_shift == "up")
    fillHist(histNumber+"_CMS_htt_ttbarShape_up", Tau1Index, Tau2Index, my_tau1P4, my_tau2P4, true, event_weight * (2*(top_pt_weight -1 ) + 1) );
  else if (unc_shift == "down")
    fillHist(histNumber+"_CMS_htt_ttbarShape_down", Tau1Index, Tau2Index, my_tau1P4, my_tau2P4, true, event_weight / top_pt_weight );
}
void tautau_analyzer::prefiringUnc(string histNumber , int muIndex, int tauIndex, bool isFakeBkg, float event_weight)
{
  if(selected_systematic!="prefiringUnc")
    return;
  /////// prefiring unc
  if (unc_shift == "up")
    fillHist(histNumber+"_CMS_Prefiring_up", Tau1Index, Tau2Index, my_tau1P4, my_tau2P4, true, event_weight*prefiringweightup/prefiringweight);
  else if (unc_shift == "down")
    fillHist(histNumber+"_CMS_Prefiring_down", Tau1Index, Tau2Index, my_tau1P4, my_tau2P4, true, event_weight*prefiringweightdown/prefiringweight);
}

void tautau_analyzer::metSysUnc( string histNumber , int tau1Index, int tau2Index, bool isFakeBkg, float event_weight){
  
  string njetName ="";
  if(selected_systematic=="metresponse" && unc_shift == "up")
    fillHist(histNumber+"_CMS_htt_boson_scale_met_"+njetName+"Jet_2018_up", Tau1Index, Tau2Index, my_tau1P4, my_tau2P4, true, event_weight );
  else if(selected_systematic=="metresolution" && unc_shift == "up")
    fillHist(histNumber+"_CMS_htt_boson_reso_met_"+njetName+"Jet_2018_up", Tau1Index, Tau2Index, my_tau1P4, my_tau2P4, true, event_weight );
  
  else if(selected_systematic=="metresponse" && unc_shift == "down")
    fillHist(histNumber+"_CMS_htt_boson_scale_met_"+njetName+"Jet_2018_down", Tau1Index, Tau2Index, my_tau1P4, my_tau2P4, true, event_weight );
  else if(selected_systematic=="metresolution" && unc_shift == "down")
    fillHist(histNumber+"_CMS_htt_boson_reso_met_"+njetName+"Jet_2018_down", Tau1Index, Tau2Index, my_tau1P4, my_tau2P4, true, event_weight );

  
}

void tautau_analyzer::metClusteredUnc( string histNumber , int tau1Index, int tau2Index, bool isFakeBkg, float event_weight){

  if(selected_systematic=="metunclustered" && unc_shift == "up")
    fillHist(histNumber+"_CMS_scale_met_unclustered_2018_up", Tau1Index, Tau2Index, my_tau1P4, my_tau2P4, true, event_weight);
  if(selected_systematic=="metunclustered" && unc_shift == "down")
    fillHist(histNumber+"_CMS_scale_met_unclustered_2018_down", Tau1Index, Tau2Index, my_tau1P4, my_tau2P4, true, event_weight);

}


float tautau_analyzer::EletriggerSF(float pt, float eta){
  float sf = 1.0;
  if(fabs(eta) >= 0.0   && fabs(eta) < 0.8)
    {
      if(pt > 40.0  && pt < 50) sf = 0.79;
      if(pt > 50.0  && pt < 60) sf = 0.82;
      if(pt > 60.0  && pt < 100) sf = 0.85;
      if(pt > 100.0  && pt < 150) sf = 0.87;
      if(pt > 150.0  && pt < 200) sf = 0.88;
      if(pt > 200) sf = 0.89;
    }
  if(fabs(eta) >= 0.8   && fabs(eta) < 1.442 ) 
    {
      if(pt > 40.0  && pt < 50) sf = 0.77;
      if(pt > 50.0  && pt < 60) sf = 0.81;
      if(pt > 60.0  && pt < 100) sf = 0.85;
      if(pt > 100.0  && pt < 150) sf = 0.87;
      if(pt > 150.0  && pt < 300) sf = 0.89;
      if(pt > 300.0) sf = 0.87;
    }
  if(fabs(eta) >= 1.442   && fabs(eta) < 1.56 ) 
    {
      if(pt > 40.0  && pt < 50) sf = 0.73;
      if(pt > 50.0  && pt < 60) sf = 0.75;
      if(pt > 60.0  && pt < 100) sf = 0.76;
      if(pt > 100.0  && pt < 150) sf = 0.72;
      if(pt > 150.0  && pt < 300) sf = 0.78;
      if(pt > 300.0) sf = 0.67;
    }
  if(fabs(eta) >= 1.56   && fabs(eta) < 2.0 ) 
    {
      if(pt > 40.0  && pt < 50) sf = 0.80;
      if(pt > 50.0  && pt < 60) sf = 0.84;
      if(pt > 60.0  && pt < 100) sf = 0.87;
      if(pt > 100.0  && pt < 150) sf = 0.88;
      if(pt > 150.0  && pt < 300) sf = 0.89;
      if(pt > 300.0) sf = 0.87;
    }
  if(fabs(eta) >= 2.0   && fabs(eta) < 2.5 ) 
    {
      if(pt > 40.0  && pt < 50) sf = 0.73;
      if(pt > 50.0  && pt < 60) sf = 0.78;
      if(pt > 60.0  && pt < 100) sf = 0.83;
      if(pt > 100.0  && pt < 150) sf = 0.86;
      if(pt > 150.0  && pt < 300) sf = 0.89;
      if(pt > 300.0) sf = 0.86;
    }
  return sf;
}
void tautau_analyzer::makeTestPlot( string histNumber , int eleIndex, int ele2Index, int tauIndex, float event_weight){
  string hNumber = histNumber;
  std::vector<int> tmpCand; tmpCand.clear();
  for(int iTau=0;iTau<nTau;iTau++)
    {
      tmpCand.push_back(iTau);
    }
  plotFill("tauPt_"+hNumber,  tau_Pt->at(tmpCand[0]) , 38 , 24 , 100,  event_weight);
  //cout<<"     elePt_"<<hNumber<<" = "<< elePt->at(tmpCand[0])<<endl;
}


TLorentzVector tautau_analyzer::MetRecoilCorrections(int tau1Index, int tau2Index, TLorentzVector mymet){
  //// met recoil correction
  TLorentzVector BosonP4, nuP4, nuP4tmp;
  TLorentzVector nu1P4, gentau1P4;
  TLorentzVector nu2P4, gentau2P4;
  TLorentzVector visGenP4;
  for(int i=0; i<nMC; i++)
    {
      if(abs(mcPID->at(i))==23)
	BosonP4.SetPtEtaPhiE(mcPt->at(i), mcEta->at(i) , mcPhi->at(i) , mcE->at(i) );
    }
  //visGenP4=BosonP4;
  if(BosonP4.Pt()==0)
    {
      for(int i=0; i<nMC; i++)
	{
	  if(mcPID->at(i)==15)
	    gentau1P4.SetPtEtaPhiE(mcPt->at(i), mcEta->at(i) , mcPhi->at(i) , mcE->at(i) );
	  if(mcPID->at(i)==-15)
	    gentau2P4.SetPtEtaPhiE(mcPt->at(i), mcEta->at(i) , mcPhi->at(i) , mcE->at(i) );
	}
      BosonP4=gentau1P4+gentau2P4;
    }
  visGenP4=BosonP4;
  for(int i=0; i<nMC; i++)
    {
      if(abs(mcPID->at(i))==16 || abs(mcPID->at(i))==14 || abs(mcPID->at(i))==12)
	{
	  nuP4tmp.SetPtEtaPhiE(mcPt->at(i), mcEta->at(i) , mcPhi->at(i) , mcE->at(i) );
	  visGenP4=visGenP4-nuP4tmp;
	}
    }
  // apply recoil corrections on event-by-event basis (Type I PF MET)
  float pfmet=mymet.Pt(); float pfmetPhi=mymet.Phi();
  float pfmetcorr_ex=pfmet*cos(pfmetPhi); float pfmetcorr_ey=pfmet*sin(pfmetPhi);
  /* std::vector<int> jetCand;       jetCand.clear(); */
  /* jetCand=getJetCand(tau1Index, tau2Index); */
  
  recoilPFMetCorrector.CorrectByMeanResolution(pfmet*cos(pfmetPhi), // uncorrected type I pf met px (float)
					       pfmet*sin(pfmetPhi), // uncorrected type I pf met py (float)
					       BosonP4.Px(), // generator Z/W/Higgs px (float)
					       BosonP4.Py(), // generator Z/W/Higgs py (float)
					       visGenP4.Px(), // generator visible Z/W/Higgs px (float)
					       visGenP4.Py(), // generator visible Z/W/Higgs py (float)
					       my_njets,  // number of jets (hadronic jet multiplicity) (int)
					       pfmetcorr_ex, // corrected type I pf met px (float)
					       pfmetcorr_ey  // corrected type I pf met py (float)
					       );
  

  mymet.SetPxPyPzE(pfmetcorr_ex,pfmetcorr_ey,0,sqrt(pfmetcorr_ex*pfmetcorr_ex + pfmetcorr_ey*pfmetcorr_ey));
  return mymet;
}
TLorentzVector tautau_analyzer::applyTauESCorrections(TLorentzVector tauP4, int tauIndex, int shift)
{
  if(is_MC==false) return tauP4;
  int genmatch = myGenMaching(tauIndex);
  int taudm = tau_DecayMode->at(tauIndex);

  //  if (genmatch>=5) tauP4 = tauP4 * get_BinContent( h_tauesSF, taudm);
  //else if ( (genmatch==1 || genmatch==3) && taudm==0 )    tauP4 = tauP4*1.003;
  //else if ( (genmatch==1 || genmatch==3) && tau2dm==1)    tauP4 = tauP4*1.036;

  TLorentzVector tauP4Corr;
  if ( genmatch>=5 ) tauP4Corr = tauP4 * get_BinContent( h_tauesSF, taudm);
  else if ( (genmatch==1 || genmatch==3) && taudm==0)    tauP4Corr = tauP4*0.968;
  else if ( (genmatch==1 || genmatch==3) && taudm==1)    tauP4Corr = tauP4*1.026;
  else if ( (genmatch==2 || genmatch==3) && taudm==0)    tauP4Corr = tauP4*0.998;
  else if ( (genmatch==2 || genmatch==3) && taudm==1)    tauP4Corr = tauP4*0.9990;
  return tauP4;
}

TLorentzVector tautau_analyzer::applyTau1ESCorrections(TLorentzVector tauP4, int tauIndex, int shift)
{
  if(is_MC==false) return tauP4;
  int genmatch = myGenMaching(tauIndex);
  int taudm = tau_DecayMode->at(tauIndex);
  TLorentzVector tauP4Corr;
  if ( genmatch>=5 ) tauP4Corr = tauP4 * get_BinContent( h_tauesSF, taudm);
  /*else if ( (genmatch==1 || genmatch==3) && taudm==0)    tauP4Corr = tauP4*0.968;
  else if ( (genmatch==1 || genmatch==3) && taudm==1)    tauP4Corr = tauP4*1.026;
  else if ( (genmatch==2 || genmatch==3) && taudm==0)    tauP4Corr = tauP4*0.998;
  else if ( (genmatch==2 || genmatch==3) && taudm==1)    tauP4Corr = tauP4*0.9990;
  */
  else if ( (genmatch==1 || genmatch==3) && taudm==0 )    tauP4Corr = tauP4*1.003;
  else if ( (genmatch==1 || genmatch==3) && taudm==1)    tauP4Corr = tauP4*1.036;

  if (selected_systematic != "tau1ES")
    return tauP4Corr;

  float pt_low  = 34;
  float pt_high = 170;

  float tes = get_BinContent(h_tauesSF, taudm); float err = 0;
  if(tauP4Corr.Pt() >= pt_high){
    err = get_BinError(h_tauesSF_highpt, taudm);
  }
  else if (tauP4Corr.Pt() > pt_low ){
    float err_high = get_BinError(h_tauesSF_highpt, taudm);
    float err_low  = get_BinError(h_tauesSF, taudm);
    err = err_low + ((err_high-err_low)/(pt_high - pt_low))*(tauP4Corr.Pt() - pt_low);
  }
  else {
    err =get_BinError(h_tauesSF, taudm);
  }
  if (shift > 0)
    tauP4Corr = tauP4Corr * (1 + err);
  else if (shift < 0)
    tauP4Corr = tauP4Corr * (1 - err);
  return tauP4Corr;
}

TLorentzVector tautau_analyzer::applyTau2ESCorrections(TLorentzVector tauP4, int tauIndex, int shift)
{
  if(is_MC==false) return tauP4;
  int genmatch = myGenMaching(tauIndex);
  int taudm = tau_DecayMode->at(tauIndex);
  TLorentzVector tauP4Corr;
  if (genmatch>=5) tauP4Corr = tauP4 * get_BinContent( h_tauesSF, taudm);
  /* else if ( (genmatch==1 || genmatch==3) && taudm==0 )    tauP4Corr = tauP4*0.968;
  else if ( (genmatch==1 || genmatch==3) && taudm==1)    tauP4Corr = tauP4*1.026;
  else if ( (genmatch==2 || genmatch==3) && taudm==0)    tauP4Corr = tauP4*0.998;
  else if ( (genmatch==2 || genmatch==3) && taudm==1)    tauP4Corr = tauP4*0.9990;
  */
  else if ( (genmatch==1 || genmatch==3) && taudm==0 )    tauP4Corr = tauP4*1.003;
  else if ( (genmatch==1 || genmatch==3) && taudm==1)    tauP4Corr = tauP4*1.036;

  if (selected_systematic != "tau2ES")
    return tauP4Corr;

  float pt_low  = 34;
  float pt_high = 170;

  float tes = get_BinContent(h_tauesSF, taudm); float err = 0;
  if(tauP4Corr.Pt() >= pt_high){
    err = get_BinError(h_tauesSF_highpt, taudm);
  }
  else if (tauP4Corr.Pt() > pt_low ){
    float err_high = get_BinError(h_tauesSF_highpt, taudm);
    float err_low  = get_BinError(h_tauesSF, taudm);
    err = err_low + ((err_high-err_low)/(pt_high - pt_low))*(tauP4Corr.Pt() - pt_low);
  }
  else {
    err =get_BinError(h_tauesSF, taudm);
  }
  if (shift > 0)
    tauP4Corr = tauP4Corr * (1 + err);
  else if (shift < 0)
    tauP4Corr = tauP4Corr * (1 - err);
  return tauP4Corr;
}

/*
TLorentzVector tautau_analyzer::applyTauESCorrections(TLorentzVector tauP4, int tauIndex, int shift)
{
  if(is_MC==false) return tauP4;
  int genmatch = myGenMaching(tauIndex);
  int taudm = tau_DecayMode->at(tauIndex);

  if (genmatch>=5) tauP4 = tauP4 * get_BinContent( h_tauesSF, taudm);
  else if ( (genmatch==1 || genmatch==3) && taudm==0 )    tauP4 = tauP4*1.003;
  else if ( (genmatch==1 || genmatch==3) && tau2dm==1)    tauP4 = tauP4*1.036;

  return tauP4;
}

TLorentzVector tautau_analyzer::applyTau1ESCorrections(TLorentzVector tauP4, int tauIndex, int shift)
{
  if(is_MC==false) return tauP4;
  int genmatch = myGenMaching(tauIndex);
  int taudm = tau_DecayMode->at(tauIndex);
  TLorentzVector tauP4Corr;
  if ( genmatch>=5 ) tauP4Corr = tauP4 * get_BinContent( h_tauesSF, taudm);
  else if ( (genmatch==1 || genmatch==3) && taudm==0)    tauP4Corr = tauP4*1.003;
  else if ( (genmatch==1 || genmatch==3) && taudm==1)    tauP4Corr = tauP4*1.036;

  
  if (selected_systematic != "tau1ES")
    return tauP4Corr;

  float pt_low  = 34;
  float pt_high = 170;

  float tes = get_BinContent(h_tauesSF, taudm); float err = 0;
  if(tauP4Corr.Pt() >= pt_high){
    err = get_BinError(h_tauesSF_highpt, taudm);
  }
  else if (tauP4Corr.Pt() > pt_low ){
    float err_high = get_BinError(h_tauesSF_highpt, taudm);
    float err_low  = get_BinError(h_tauesSF, taudm);
    err = err_low + ((err_high-err_low)/(pt_high - pt_low))*(tauP4Corr.Pt() - pt_low);
  }
  else {
    err =get_BinError(h_tauesSF, taudm);
  }
  if (shift > 0)
    tauP4Corr = tauP4Corr * (1 + err);
  else if (shift < 0)
    tauP4Corr = tauP4Corr * (1 - err);
  return tauP4Corr;
}

TLorentzVector tautau_analyzer::applyTau2ESCorrections(TLorentzVector tauP4, int tauIndex, int shift)
{
  if(is_MC==false) return tauP4;
  int genmatch = myGenMaching(tauIndex);
  int taudm = tau_DecayMode->at(tauIndex);
  TLorentzVector tauP4Corr;
  if (genmatch>=5) tauP4Corr = tauP4 * get_BinContent( h_tauesSF, taudm);
  else if ( (genmatch==1 || genmatch==3) && taudm==0 )    tauP4Corr = tauP4*1.003;
  else if ( (genmatch==1 || genmatch==3) && taudm==1)    tauP4Corr = tauP4*1.036;

  if (selected_systematic != "tau2ES")
    return tauP4Corr;

  float pt_low  = 34;
  float pt_high = 170;

  float tes = get_BinContent(h_tauesSF, taudm); float err = 0;
  if(tauP4Corr.Pt() >= pt_high){
    err = get_BinError(h_tauesSF_highpt, taudm);
  }
  else if (tauP4Corr.Pt() > pt_low ){
    float err_high = get_BinError(h_tauesSF_highpt, taudm);
    float err_low  = get_BinError(h_tauesSF, taudm);
    err = err_low + ((err_high-err_low)/(pt_high - pt_low))*(tauP4Corr.Pt() - pt_low);
  }
  else {
    err =get_BinError(h_tauesSF, taudm);
  }
  if (shift > 0)
    tauP4Corr = tauP4Corr * (1 + err);
  else if (shift < 0)
    tauP4Corr = tauP4Corr * (1 - err);
  return tauP4Corr;
}

*/


int tautau_analyzer::if_DY_Genmatching(int eleIndex, int tauIndex){
  // if(!is_MC)
  //   return 1;
  if( found_DYjet_sample==false )
    return 1;
  else if(found_DYjet_sample==true){
    if(  myGenMaching(tauIndex)<5 &&  myGenMaching1(eleIndex)<5 ) // dy -> ll genmatched
      return 2;
    if (  myGenMaching(tauIndex)>=5 &&  myGenMaching1(eleIndex)>=5 ) // dy -> ltau genmatched
      return 3;
  }
  return 0;

}

int tautau_analyzer::eventCategory(int tau1Index, int tau2Index, double higgsPt){
  int category=0;
  //std::vector<int> jetCand;       jetCand.clear();
  //jetCand = getJetCand(tau1Index, tau2Index);
  int njets = jetCand.size();
  double mjj=0;
  TLorentzVector jet1P4, jet2P4;
  if(njets>=2)
    {
      jet1P4.SetPtEtaPhiE(jetPt->at(jetCand[0]), jetEta->at(jetCand[0]), jetPhi->at(jetCand[0]), jetE->at(jetCand[0]));
      jet2P4.SetPtEtaPhiE(jetPt->at(jetCand[1]), jetEta->at(jetCand[1]), jetPhi->at(jetCand[1]), jetE->at(jetCand[1]));
      mjj = (jet1P4+ jet2P4).M();
    }
  ///////category selection
  if(njets==0)
    {
      if( higgsPt<10)
        return category=1;
      else if (higgsPt>10)
        return category=2;
    }
  if(njets>=2 && mjj > 350)
    {
      if      (higgsPt<200)
        return category=5;
      else if (higgsPt>200)
        return category=6;
    }
  if(njets==1)
    return category=3;
  if(njets>=2 && mjj<350)
    return category=4;
}
double tautau_analyzer::getTauFES(int tauIndex){
  double sf_taufesSF=1.0;
  if(tau_DecayMode->at(tauIndex)==0 && abs(tau_Eta->at(tauIndex))<=1.4 ) sf_taufesSF = h_taufesSF->Eval(1);
  if(tau_DecayMode->at(tauIndex)==0 && abs(tau_Eta->at(tauIndex))>1.4 )  sf_taufesSF = h_taufesSF->Eval(3);
  if(tau_DecayMode->at(tauIndex)==1 && abs(tau_Eta->at(tauIndex))<=1.4 ) sf_taufesSF = h_taufesSF->Eval(5);
  if(tau_DecayMode->at(tauIndex)==1 && abs(tau_Eta->at(tauIndex))>1.4 )  sf_taufesSF = h_taufesSF->Eval(7);
  return sf_taufesSF;

}

double tautau_analyzer::get_zptmass_weight(){
  double weight = 1.0;
  int genZCand= -1;
  if(is_MC)
    genZCand = getZCand();
  if(genZCand>-1){
    w->var("z_gen_pt")->setVal(mcPt->at(genZCand));
    w->var("z_gen_mass")->setVal(mcMass->at(genZCand));
    weight=w->function("zptmass_weight_nom")->getVal();
    
  }
  return weight;

}
double tautau_analyzer::btag_sf_weight(int eleIndex , int tauIndex){
  // double weight = 1.0;
  // vector<int> looseBjet = bJet_loose(eleIndex , tauIndex);
  // vector<int> mediumBjet = bJet_medium(eleIndex , tauIndex);
  // if( mediumBjet.size()>0 )
  //   {
  //     weight =  btag_csv->EvalSF(0,"comb","central",1
  // 				  ,jetPt->at(mediumBjet[0])
  // 				  ,jetEta->at(mediumBjet[0])
  // 				  );
  //     return weight;
  //   }
  // if( looseBjet.size()>0  )
  //   {
  //     weight =  btag_csv->EvalSF(0,"comb","central",1
  // 				 ,jetPt->at(looseBjet[0])
  // 				 ,jetEta->at(looseBjet[0])
  // 				 );
  //     return weight;
  //   }
  return 1.0;
}
bool tautau_analyzer::compareTauIsoFunc(int &a, int &b)
{
  return abs(tau_byIsolationMVArun2017v2DBoldDMwLTraw2017->at(a)) > abs(tau_byIsolationMVArun2017v2DBoldDMwLTraw2017->at(b));
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


int tautau_analyzer::getTau1Cand_noID(double tauPtCut, double tauEtaCut, int shift){
  std::vector<int> tmpCand;
  tmpCand.clear();
  TLorentzVector dau2;
  //Loop over taus      
  for(int iTau=0;iTau<nTau;iTau++)
    {
      dau2.SetPtEtaPhiE(tau_Pt->at(iTau),tau_Eta->at(iTau)
			,tau_Phi->at(iTau), tau_Energy->at(iTau)
			);
      //      if(is_MC)
      //	dau2 = applyTau1ESCorrections(dau2, iTau, shift);
      bool kinematic = false;
      bool tauId = false;
      bool decayModeCut = false;
      bool tauIsolation = false;
      bool mutau_separation=false;
      bool newDecayModeFinding=false;
      bool tau_reject=false;
      bool trigger = false;
      if( dau2.Pt() > tauPtCut 
	  && fabs( dau2.Eta() )< tauEtaCut 
	  && tau_LeadChargedHadron_dz->at(iTau) < 0.2
	  && fabs(tau_Charge->at(iTau))==1
	  )kinematic = true;
      if( tau_byVVVLooseDeepTau2017v2p1VSjet->at(iTau)==1 ) tauIsolation=true;
      if( tau_DecayMode->at(iTau)==0 || tau_DecayMode->at(iTau)==1 || tau_DecayMode->at(iTau)==10 || tau_DecayMode->at(iTau)==11 ) decayModeCut=true;
      if( tau_byVVVLooseDeepTau2017v2p1VSe->at(iTau)==1 && tau_byVLooseDeepTau2017v2p1VSmu->at(iTau)==1)tau_reject=true;
      if( tau_IDbits->at(iTau)>>1&1==1 ) newDecayModeFinding=true;
      if( kinematic==true    
	  && decayModeCut==true   
	  && tau_reject==true   
	  && newDecayModeFinding==true
	  && tauIsolation==true
	  )
	{
	  tmpCand.push_back(iTau);
    	}                                     
    }
  if(tmpCand.size()>0)
    return tmpCand[0];
  else
    return -1;
}
int tautau_analyzer::getTau2Cand_noID(double tauPtCut, double tauEtaCut, int tau1Index, int shift){
  std::vector<int> tmpCand;
  tmpCand.clear();
  TLorentzVector dau2;
  //Loop over taus      
  for(int iTau=0;iTau<nTau;iTau++)
    {
      if(tau1Index>=0 && iTau==tau1Index) continue;
      dau2.SetPtEtaPhiE(tau_Pt->at(iTau),tau_Eta->at(iTau)
			,tau_Phi->at(iTau), tau_Energy->at(iTau)
			);
      //if(is_MC)
      //	dau2 = applyTau2ESCorrections(dau2, iTau, shift);
      bool kinematic = false;
      bool tauId = false;
      bool decayModeCut = false;
      bool tauIsolation = false;
      bool mutau_separation=false;
      bool newDecayModeFinding=false;
      bool tau_reject=false;
      bool trigger = false;
      if( dau2.Pt() > tauPtCut 
	  && fabs( dau2.Eta() )< tauEtaCut 
	  && tau_LeadChargedHadron_dz->at(iTau) < 0.2
	  && fabs(tau_Charge->at(iTau))==1
	  )kinematic = true;
      if( tau_byVVVLooseDeepTau2017v2p1VSjet->at(iTau)==1 ) tauIsolation=true;
      if( tau_DecayMode->at(iTau)==0 || tau_DecayMode->at(iTau)==1 || tau_DecayMode->at(iTau)==10 || tau_DecayMode->at(iTau)==11 ) decayModeCut=true;
      if( tau_byVVVLooseDeepTau2017v2p1VSe->at(iTau)==1 && tau_byVLooseDeepTau2017v2p1VSmu->at(iTau)==1)tau_reject=true;
      if( tau_IDbits->at(iTau)>>1&1==1 ) newDecayModeFinding=true;
      if( kinematic==true    
	  && decayModeCut==true   
	  && tau_reject==true   
	  && newDecayModeFinding==true
	  && tauIsolation==true
	  )
	{
	  tmpCand.push_back(iTau);
    	}                                     
    }
  if(tmpCand.size()>0)
    return tmpCand[0];
  else
    return -1;
}

/*
int tautau_analyzer::getTau1Cand(double tauPtCut, double tauEtaCut, int shift){
  std::vector<int> tmpCand;
  tmpCand.clear();
  TLorentzVector tmp_tau_p4, dau1;
  //Loop over taus      
  for(int iTau=0;iTau<nTau;iTau++)
    {
      tmp_tau_p4.SetPtEtaPhiE(tau_Pt->at(iTau),tau_Eta->at(iTau)
			,tau_Phi->at(iTau), tau_Energy->at(iTau)
			);
      //if(is_MC)
      //	dau1 = applyTau1ESCorrections(tmp_tau_p4, iTau, shift);
      //else
      dau1.SetPtEtaPhiE(tau_Pt->at(iTau),tau_Eta->at(iTau)
			  ,tau_Phi->at(iTau), tau_Energy->at(iTau));
      bool kinematic = false;
      bool tauId = false;
      bool decayModeCut = false;
      bool tauIsolation = false;
      bool mutau_separation=false;
      bool newDecayModeFinding=false;
      bool tau_reject=false;
      //      bool trigger = false;
      if( dau1.Pt() > tauPtCut 
	  && fabs( dau1.Eta() )< tauEtaCut 
	  && tau_LeadChargedHadron_dz->at(iTau) < 0.2
	  && fabs(tau_Charge->at(iTau))==1
	  )kinematic = true;
      if(tau_byMediumDeepTau2017v2p1VSjet->at(iTau)==1)tauIsolation=true; 
      if( tau_DecayMode->at(iTau)==0 || tau_DecayMode->at(iTau)==1 || tau_DecayMode->at(iTau)==10 || tau_DecayMode->at(iTau)==11 ) decayModeCut=true;
      if( tau_byVVVLooseDeepTau2017v2p1VSe->at(iTau)==1 && tau_byVLooseDeepTau2017v2p1VSmu->at(iTau)==1)tau_reject=true;
      if( tau_IDbits->at(iTau)>>1&1==1 ) newDecayModeFinding=true;

      if( kinematic==true    
	  && decayModeCut==true   
	  && tauIsolation==true 
	  && tau_reject==true   
	  && newDecayModeFinding==true
	  )
	{
	  tmpCand.push_back(iTau);
    	}
    }
  //std::vector<int> res; res.clear();
  /* std::vector<std::pair<float, int>> iso_map; */
  /* for(int i=0; i<tmpCand.size(); i++){  */
  /*   iso_map.push_back({ abs(tau_byIsolationMVArun2017v2DBoldDMwLTraw2017->at(tmpCand[i])) , tmpCand[i] }); */
  /* } */
  /* std::sort(iso_map.rbegin(), iso_map.rend()); */
  /* tmpCand.clear(); */
  /* for(int i=0; i<iso_map.size(); i++) */
  /*   tmpCand.push_back( iso_map[i].second ); */
/*  if(tmpCand.size()>0)
    return tmpCand[0];
  else
    return -1;
}

int tautau_analyzer::getTau2Cand(double tauPtCut, double tauEtaCut, int tau1Index, int shift){
  std::vector<int> tmpCand;
  tmpCand.clear();
  TLorentzVector tmp_taup4, dau2;
  //Loop over taus      
  for(int iTau=0;iTau<nTau;iTau++)
    {
      if(tau1Index>=0 && iTau==tau1Index) continue;
	
      tmp_taup4.SetPtEtaPhiE(tau_Pt->at(iTau),tau_Eta->at(iTau)
			,tau_Phi->at(iTau), tau_Energy->at(iTau)
			);
      //if(is_MC)
      //	dau2 = applyTau2ESCorrections(tmp_taup4, iTau, shift);
      //else
      dau2.SetPtEtaPhiE(tau_Pt->at(iTau),tau_Eta->at(iTau)
			,tau_Phi->at(iTau), tau_Energy->at(iTau)
			);
      bool kinematic = false;
      bool tauId = false;
      bool decayModeCut = false;
      bool tauIsolation = false;
      bool mutau_separation=false;
      bool newDecayModeFinding=false;
      bool tau_reject=false;
      bool trigger = false;
      if( dau2.Pt() > tauPtCut 
	  && fabs( dau2.Eta() )< tauEtaCut 
	  && tau_LeadChargedHadron_dz->at(iTau) < 0.2
	  && fabs(tau_Charge->at(iTau))==1
	  )kinematic = true;
      if(tau_byMediumDeepTau2017v2p1VSjet->at(iTau)==1)tauIsolation=true; 
      if( tau_DecayMode->at(iTau)==0 || tau_DecayMode->at(iTau)==1 || tau_DecayMode->at(iTau)==10 || tau_DecayMode->at(iTau)==11 ) decayModeCut=true;
      if( tau_byVVVLooseDeepTau2017v2p1VSe->at(iTau)==1 && tau_byVLooseDeepTau2017v2p1VSmu->at(iTau)==1)tau_reject=true;
      if( tau_IDbits->at(iTau)>>1&1==1 ) newDecayModeFinding=true;

      if( kinematic==true    
	  && decayModeCut==true   
	  && tauIsolation==true 
	  && tau_reject==true   
	  && newDecayModeFinding==true
	  )
	{
	  tmpCand.push_back(iTau);
    	}
    }
  //std::vector<int> res; res.clear();
  /* std::vector<std::pair<float, int>> iso_map; */
  /* for(int i=0; i<tmpCand.size(); i++){  */
  /*   iso_map.push_back({ abs(tau_byIsolationMVArun2017v2DBoldDMwLTraw2017->at(tmpCand[i])) , tmpCand[i] }); */
  /* } */
  /* std::sort(iso_map.rbegin(), iso_map.rend()); */
  /* tmpCand.clear(); */
  /* for(int i=0; i<iso_map.size(); i++) */
  /*   tmpCand.push_back( iso_map[i].second ); */
/*  if(tmpCand.size()>0)
    return tmpCand[0];
  else
    return -1;
}*/


int tautau_analyzer::getTau1Cand(double tauPtCut, double tauEtaCut, int shift){
  std::vector<int> tmpCand;
  tmpCand.clear();
  TLorentzVector tmp_tau_p4, dau1;
  //Loop over taus      
  for(int iTau=0;iTau<nTau;iTau++)
    {
      tmp_tau_p4.SetPtEtaPhiE(tau_Pt->at(iTau),tau_Eta->at(iTau)
			      ,tau_Phi->at(iTau), tau_Energy->at(iTau)
			      );
      //if(is_MC)
      //dau1 = applyTau1ESCorrections(tmp_tau_p4, iTau, shift);
      //else
      dau1.SetPtEtaPhiE(tau_Pt->at(iTau),tau_Eta->at(iTau)
			,tau_Phi->at(iTau), tau_Energy->at(iTau));
      bool kinematic = false;
      bool tauId = false;
      bool decayModeCut = false;
      bool tauIsolation = false;
      bool mutau_separation=false;
      bool newDecayModeFinding=false;
      bool tau_reject=false;
      //bool trigger = false;
      if( dau1.Pt() > tauPtCut 
	  && fabs( dau1.Eta() )< tauEtaCut 
	  && tau_LeadChargedHadron_dz->at(iTau) < 0.2
	  && fabs(tau_Charge->at(iTau))==1
	  )kinematic = true;
      if( tau_byMediumDeepTau2017v2p1VSjet->at(iTau)==1 ) tauIsolation=true; 
      if( tau_DecayMode->at(iTau)==0 || tau_DecayMode->at(iTau)==1 || tau_DecayMode->at(iTau)==10 || tau_DecayMode->at(iTau)==11 ) decayModeCut=true;
      if( tau_byVVVLooseDeepTau2017v2p1VSe->at(iTau)==1 && tau_byVLooseDeepTau2017v2p1VSmu->at(iTau)==1)tau_reject=true;
      if( tau_IDbits->at(iTau)>>1&1==1 ) newDecayModeFinding=true;

      if( kinematic==true    
	    && decayModeCut==true   
	    && tauIsolation==true 
	    && tau_reject==true   
	    && newDecayModeFinding==true
	  )
	{
	  tmpCand.push_back(iTau);
	}
    }
  //std::vector<int> res; res.clear();
  /* std::vector<std::pair<float, int>> iso_map; */
  /* for(int i=0; i<tmpCand.size(); i++){  */
  /*   iso_map.push_back({ abs(tau_byIsolationMVArun2017v2DBoldDMwLTraw2017->at(tmpCand[i])) , tmpCand[i] }); */
  /* } */
  /* std::sort(iso_map.rbegin(), iso_map.rend()); */
  /* tmpCand.clear(); */
  /* for(int i=0; i<iso_map.size(); i++) */
  /*   tmpCand.push_back( iso_map[i].second ); */
  if(tmpCand.size()>0)
    return tmpCand[0];
  else
    return -1;
}

int tautau_analyzer::getTau2Cand(double tauPtCut, double tauEtaCut, int tau1Index, int shift){
  std::vector<int> tmpCand;
  tmpCand.clear();
  TLorentzVector tmp_taup4, dau2;
  //Loop over taus      
  for(int iTau=0;iTau<nTau;iTau++)
    {
      if(tau1Index>=0 && iTau==tau1Index) continue;
      
      tmp_taup4.SetPtEtaPhiE(tau_Pt->at(iTau),tau_Eta->at(iTau)
			     ,tau_Phi->at(iTau), tau_Energy->at(iTau)
			     );
      //if(is_MC)
      //dau2 = applyTau2ESCorrections(tmp_taup4, iTau, shift);
      //else
      dau2.SetPtEtaPhiE(tau_Pt->at(iTau),tau_Eta->at(iTau)
			,tau_Phi->at(iTau), tau_Energy->at(iTau)
			);
      bool kinematic = false;
      bool tauId = false;
      bool decayModeCut = false;
      bool tauIsolation = false;
      bool mutau_separation=false;
      bool newDecayModeFinding=false;
      bool tau_reject=false;
      bool trigger = false;
      if( dau2.Pt() > tauPtCut 
	  && fabs( dau2.Eta() )< tauEtaCut 
	  && tau_LeadChargedHadron_dz->at(iTau) < 0.2
	  && fabs(tau_Charge->at(iTau))==1
	  )kinematic = true;
      if( tau_byMediumDeepTau2017v2p1VSjet->at(iTau)==1 ) tauIsolation=true; 
      if( tau_DecayMode->at(iTau)==0 || tau_DecayMode->at(iTau)==1 || tau_DecayMode->at(iTau)==10 || tau_DecayMode->at(iTau)==11 ) decayModeCut=true;
      if( tau_byVVVLooseDeepTau2017v2p1VSe->at(iTau)==1 && tau_byVLooseDeepTau2017v2p1VSmu->at(iTau)==1)tau_reject=true;
      if( tau_IDbits->at(iTau)>>1&1==1 ) newDecayModeFinding=true;

      if( kinematic==true    
	    && decayModeCut==true   
	  && tauIsolation==true 
	    && tau_reject==true   
	    && newDecayModeFinding==true
	  )
	{
	  tmpCand.push_back(iTau);
	}
    }
  //std::vector<int> res; res.clear();
  /* std::vector<std::pair<float, int>> iso_map; */
  /* for(int i=0; i<tmpCand.size(); i++){  */
  /*   iso_map.push_back({ abs(tau_byIsolationMVArun2017v2DBoldDMwLTraw2017->at(tmpCand[i])) , tmpCand[i] }); */
  /* } */
  /* std::sort(iso_map.rbegin(), iso_map.rend()); */
  /* tmpCand.clear(); */
  /* for(int i=0; i<iso_map.size(); i++) */
  /*   tmpCand.push_back( iso_map[i].second ); */
  if(tmpCand.size()>0)
    return tmpCand[0];
  else
    return -1;
}
