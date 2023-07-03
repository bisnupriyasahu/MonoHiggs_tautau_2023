/////skimm_signal_2017.C
//For use with Ntuples made from ggNtuplizer
//Required arguments: 1 is folder containing input files, 2 is output file path, 3 is maxEvents (-1 to run over all events), 4 is reportEvery
//
//To compile using rootcom to an executable named 'analyze':
//$ ./rootcom skimm_signal_2017 analyze
//
//To run, assuming this is compiled to an executable named 'analyze':
//$ ./analyze /hdfs/store/user/jmadhusu/LatestNtuples/ /afs/hep.wisc.edu/user/ms/CMSSW_9_4_4/src/2017_analysis/etau/output.root -1 10000
//./analyze /hdfs/store/user/jmadhusu/MonoHiggs_MC2017/ZZZ_TuneCP5_13TeV-amcatnlo-pythia8/crab_ZZZ/180603_185329/0000/ /afs/hep.wisc.edu/user/ms/CMSSW_9_4_4/src/2017_analysis/analyzer/output.root -1 10000
//Runs over every event in the folder LatestNtuples, reporting progress every 10000 events
//and storing the resulting histograms in the file output.root.
//
//To plot, for example, single photon trigger efficiency as a function of photon pt:
//$ root -l
//root[0] TFile *f = new TFile("output.root");
//root[1] TGraphAsymmErrors *efficiency = new TGraphAsymmErrors((TH1F*)f->Get("Photon_Et_300_2"),(TH1F*)f->Get("Photon_Et_300_1"));
//root[2] efficiency->Draw("AP")
//root[3] efficiency->SetTitle("Single photon trigger efficiency")
//root[4] efficiency->GetXaxis()->SetTitle("Photon p_{T}")
//root[5] efficiency->Draw("AP")
//
#define skimm_signal_2017_cxx
#include "skimm_signal_2017.h"
#include <TH2.h>
#include <TStyle.h>
#include <TCanvas.h>
#include "TH1F.h"
#include <iostream>
#include <bitset>
#include <climits>
#include <cstring>
#include "Math/Minimizer.h"
#include "Math/Factory.h"
#include "Math/Functor.h"
#include "TStopwatch.h"
#include <algorithm>
#include <vector>
#include <iterator>
#include <list>
#include <map>
#include <set>
#include "TMath.h" //M_PI is in TMath
#include "TRandom3.h"
#include <TLorentzVector.h>
#include "makeHisto.h" 

using namespace std;
using std::vector;
int main(int argc, const char* argv[])
{
  TStopwatch sw;
  sw.Start();
  
  myMap1 = new map<string, TH1F*>();
  //myMap2 = new map<string, TH2F*>();
  std::string SampleName = argv[7];
  std::string isMC  = argv[6];
  Long64_t maxEvents = atof(argv[3]);
  string sp = "0";
  cout<<"argc = "<<argc<<endl;
  if(argc>8)
    sp = string(argv[8]);
  cout<<"sp = "<<sp<<endl;
  const char* signalpara = sp.c_str();
  
  for (size_t i = 0; i < argc; i++)
  {
    cout<<"arg "<<i<<" "<< argv[i]<<endl;
  }
  
  if (maxEvents < -1LL)
    {
      std::cout<<"Please enter a valid value for maxEvents (parameter 3)."<<std::endl;
      return 1;
    }
  int reportEvery = atof(argv[4]);
  if (reportEvery < 1)
    {
      std::cout<<"Please enter a valid value for reportEvery (parameter 4) "<<std::endl;
      return 1;
    }
  //std::string SampleName = argv[5];
  
  skimm_signal_2017 t(argv[1],argv[2], isMC, SampleName, signalpara);
  t.Loop(maxEvents,reportEvery, SampleName , isMC);
  delete myMap1;
  sw.Stop();
  sw.Print();
  return 0;
}

void skimm_signal_2017::Loop(Long64_t maxEvents, int reportEvery, string SampleName, string _isMC_)
{

  
  if (fChain == 0) return;
  int nTotal;
  nTotal = 0;
  int report_=0;
  int report_test=0;
  int nInspected;
  nInspected = 0;
  float nPassedSkimmed=0;
  double nInspected_genWeighted;  
  nInspected_genWeighted = 0.0; 
  bool debug=false;  double netWeight = 1.0;
   TString sample = TString(SampleName);
   //   int param, findlopparam;
   // param = findlopparam = 0;
   bool fill_hist = false;
   bool isMC = false;
   if( _isMC_=="MC" ) { isMC=true; fill_hist=true; }
   else if ( _isMC_=="data" ) { isMC=false; fill_hist=false; }
   //bool debug=true;

   Long64_t nentries = fChain->GetEntries();
   if ( isMC==true ) std::cout<<".... MC file ..... "<<std::endl;
   //std::cout<<"Coming in: "<<std::endl;
   std::cout<<"nentries:"<<nentries<<std::endl;
   //Look at up to maxEvents events, or all if maxEvents == -1.
   Long64_t nentriesToCheck = nentries;
   if (maxEvents != -1LL && nentries > maxEvents)
     nentriesToCheck = maxEvents;
   nTotal = nentriesToCheck;
   Long64_t nbytes = 0, nb = 0;
   int signalparam;
   int signalparamvec;
   std::cout<<"Running over "<<nTotal<<" events."<<std::endl;
   
    newtree=fChain->CloneTree(0);

   cout<<"##################################################################################################################      size of param beginning:  "<<signalParameters->size()<<endl;              
   for (Long64_t jentry=0; jentry<nentriesToCheck;jentry++)
     {
       int  vecsize = nentriesToCheck/1000;
       nInspected+=1;
       Long64_t ientry = LoadTree(jentry);
       
       //       for (Long64_t ievts = 1; ievts <=  vecsize; ievts++)
       //       if (ientry%1000 != jentry/1000) continue;
       if (ientry < 0) break;
       //cout<<"ientry is : "<<ientry<<endl;
       //cout<<"jentry is : "<<jentry<<endl;

       nb = fChain->GetEntry(jentry);   nbytes += nb;
	   int report_i=0;
	   if(signalParameters->size() >= 1)
	     {
	       for (std::vector<double>::size_type i = 0; i < signalParameters->size(); i++) {
		 std::cout << "signal param ele : "<< signalParameters->at(i) << ' '<<endl;;
		 //cout<<"type of param :"<<typeid(signalParameters->at(i)).name()<<endl;
	       }
	     }

	   
	   if (found_ZprimeBaryonic==true && std::find(signalParameters->begin(), signalParameters->end(), zprimeBaryonic_signal) == signalParameters->end()) {
	     //cout<< "zprimeBaryonic_signal "<<zprimeBaryonic_signal<<"  "<<endl;                                                                    
	     continue;
	   }     

	   //std::cout<<"coming after if condition 1: "<<std::endl;	   
       if (found_ZprimeBaryonic==true )
	 plotFill("nEvents_ZpB", zprimeBaryonic_signal, 50, 0, 50,  1.0);
       //std::cout<<"coming after if condition 2 : "<<std::endl;	   
       //std::cout<<"coming before Skimminghht : "<<std::endl;
       //if(skimming_Htt()==true)
	  {
	    // std::cout<<"coming inside Skimminghht : "<<std::endl;
	    nPassedSkimmed+=1;
            //fillOutTree();                                                                                                                                                                      
           newtree->Fill();
          }

     
       
	report_test = nentriesToCheck/20;
	while (report_test>10)
	  {
	    report_test=report_test/10;
	    report_i++;
	  }
	reportEvery = report_test*pow(10,report_i);
       
	//       std::cout<<"coming after if condition 4: "<<std::endl;
       
       if (jentry%reportEvery == 0)
	 {
	   std::cout<<"Finished entry "<<jentry<<"/"<<(nentriesToCheck-1)<<std::endl;
	 }
     }

   cout<<"############################################################################################            size of param at end:  "<<signalParameters->size()<<endl;  
   //   if((nentriesToCheck-1)%reportEvery != 0)
   // std::cout<<"Finished entry "<<(nentriesToCheck-1)<<"/"<<(nentriesToCheck-1)<<std::endl;
   
   h_nEvents->SetBinContent(1, nInspected);
   cout<<"nPassedSkimmed = "<<nPassedSkimmed<<endl;
   cout<<"nEvents = "<<nInspected<<endl;
   cout<<"param is = "<<param<<endl;
   cout<<"findlopparam is = "<<findlopparam<<endl;
}

void skimm_signal_2017::BookHistos(const char* file2)
{
  fileName = new TFile(file2, "RECREATE");
  h_nEvents=new TH1F("nEvents", "nEvents", 5, 0, 5);
  //tree = new TTree("eventTree","eventTree");
  //tree->Branch("run_",&run_);
  //tree->Branch("event_",&event_); 
  //tree->Branch("lumis_",&lumis_); 
  //makeOutputTree(tree);
  fileName->cd();
  
}

//Fill the sequential histos at a particular spot in the sequence


void skimm_signal_2017::fillHistos(int histoNumber, double event_weight, int higgs_Index)
{
  
  //h_HiggsPt[histoNumber]->Fill(mcPt->at(higgs_Index),event_weight);

}




//---------------------------------------------------                                                                                                                                
// get a electron candiate based on pt eta and isolation                                                                                                                               
//----------------------------------------------------                                                                                                                               

bool skimm_signal_2017::skimming_Htt(){
  std::cout<<"coming in skimming htt function: "<<std::endl;
  int boostedtauFound = 0;
  std::cout<<"nboosted "<<nBoostedTau<<std::endl;
  for (int iTau = 0; iTau < nBoostedTau; iTau++)
  {
    std::cout<<"coming in skimming htt function: is n boosted "<<nBoostedTau<<std::endl;
    std::cout<<"boostedTauPt->at(iTau) : "<<boostedTauPt->at(iTau)<<" and boostedTauEta->at(iTau) : "<<boostedTauEta->at(iTau)<<std::endl;
    if (boostedTauPt->at(iTau) > 29.5 && fabs(boostedTauEta->at(iTau)) < 2.3 )
    {
      std::cout<<"coming in passing selections "<<nBoostedTau<<std::endl;
      boostedtauFound ++;
    }
  }
  if(boostedtauFound>0)
    return true;
  return false;
}

std::vector<int> skimm_signal_2017::skimmed_Ele(){
  std::vector<int> tmpCand;    tmpCand.clear();
  for(int iEle=0; iEle<nEle;iEle++){
    float relEleIso = ( elePFChIso->at(iEle) + max( elePFNeuIso->at(iEle) + elePFPhoIso->at(iEle) - 0.5 *elePFPUIso->at(iEle) , 0.0 )) / (elePt->at(iEle));
    if(fabs(eleDz->at(iEle)) < 0.2 && 
       fabs(eleD0->at(iEle))<0.045 && 
       elePt->at(iEle) > 24      &&
       fabs(eleEta->at(iEle))< 2.5 &&
       ( eleIDbit->at(iEle)>>8&1==1  || relEleIso<0.10)
       ) {
      tmpCand.push_back(iEle);
    }
  }

  return tmpCand; 
}

std::vector<int> skimm_signal_2017::skimmed_Tau(){
  std::vector<int> tmpCand;    tmpCand.clear();
  for(int iTau=0; iTau<nTau;iTau++){
    if( tau_Pt->at(iTau) > 19.5           &&
	fabs( tau_Eta->at(iTau))< 2.3     &&
	(tau_DecayMode->at(iTau) !=5 && tau_DecayMode->at(iTau)!=6) &&
	(tau_IDbits->at(iTau)>>2&1==1 || tau_byVLooseDeepTau2017v2p1VSmu->at(iTau)==1 ) &&
	(tau_IDbits->at(iTau)>>4&1==1 || tau_byVVVLooseDeepTau2017v2p1VSe->at(iTau)==1 )&&
	(tau_IDbits->at(iTau)>>13&1==1 || tau_byVVVLooseDeepTau2017v2p1VSjet->at(iTau)==1 )
	) {
      tmpCand.push_back(iTau);
    }
  }
  return tmpCand;
}

void skimm_signal_2017::fillOutTree(){


}



double skimm_signal_2017::dR(int ele_index, int tau_index)
{
  double deltaeta = abs(eleEta->at(ele_index) - tau_Eta->at(tau_index));
  double electronPhi = elePhi->at(ele_index);
  double tauPhi = tau_Phi->at(tau_index);

  double deltaphi = DeltaPhi( electronPhi, tauPhi);
  double deltar = sqrt(deltaeta*deltaeta + deltaphi*deltaphi);
  return deltar;
  
}
double skimm_signal_2017::dR(float l1eta, float l1phi, float l2eta, float l2phi) {
  float deta = l1eta - l2eta;
  float dphi = DeltaPhi(l1phi, l2phi);
  return sqrt(deta * deta + dphi * dphi);
}

double skimm_signal_2017::DeltaPhi(double phi1, double phi2)
//Gives the (minimum) separation in phi between the specified phi values
//Must return a positive value
{
  double pi = TMath::Pi();
  double dphi = phi1-phi2;
  if(dphi>pi) dphi = 2.0*pi - dphi;
  if(dphi<= -1*pi) dphi =  2.0*pi +dphi;
  return fabs(dphi);
}

int skimm_signal_2017::myGenMaching(int tauIndex)
{
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
