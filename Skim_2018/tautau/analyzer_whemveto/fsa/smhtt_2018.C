/////smhtt_2018.C
//For use with Ntuples made from ggNtuplizer
//Required arguments: 1 is folder containing input files, 2 is output file path, 3 is maxEvents (-1 to run over all events), 4 is reportEvery
//
//To compile using rootcom to an executable named 'analyze':
//$ ./rootcom smhtt_2018 analyze
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
#define smhtt_2018_cxx
#include "smhtt_2018.h"
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

  smhtt_2018 t(argv[1],argv[2], isMC, SampleName);
  t.Loop(maxEvents,reportEvery, SampleName , isMC);
  delete myMap1;
  sw.Stop();
  sw.Print();
  return 0;
}

void smhtt_2018::Loop(Long64_t maxEvents, int reportEvery, string SampleName, string _isMC_)
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
  int reorder = 0;
  bool debug=false;  double netWeight = 1.0;
   TString sample = TString(SampleName);
   
   bool fill_hist = false;
   bool isMC = false;
   if( _isMC_=="MC" ) { isMC=true; fill_hist=true; }
   else if ( _isMC_=="data" ) { isMC=false; fill_hist=false; }
   //bool debug=true;

   Long64_t nentries = fChain->GetEntries();
   if ( isMC==true ) std::cout<<".... MC file ..... "<<std::endl;
   std::cout<<"Coming in: "<<std::endl;
   std::cout<<"nentries:"<<nentries<<std::endl;
   //Look at up to maxEvents events, or all if maxEvents == -1.
   Long64_t nentriesToCheck = nentries;
   if (maxEvents != -1LL && nentries > maxEvents)
     nentriesToCheck = maxEvents;
   nTotal = nentriesToCheck;
   Long64_t nbytes = 0, nb = 0;
   
   std::cout<<"Running over "<<nTotal<<" events."<<std::endl;
   double  eventWeight = 1.0;

   double hlt1, hlt2, hlt3, hlt4;
   hlt1=hlt2=hlt3=hlt4=0.0;
   // double nBtag = 0;
   // double nBtag_fr = 0;
   TH1F* h_trigger=new TH1F("trigger_bins", "trigger_bins", 5, 0, 5); h_trigger->Sumw2();
   //newtree=fChain->CloneTree(0);
   double  mvis_Bins[11]={0, 50, 70, 90, 110, 130, 150, 170, 210, 250, 290};
   double  mvis_Bins_0jet[10]={50, 70, 90, 110, 130, 150, 170, 210, 250, 290};


   double tauPtCut = 40;
   for (Long64_t jentry=0; jentry<nentriesToCheck;jentry++)
     {
       nInspected+=1;
       Long64_t ientry = LoadTree(jentry);
       if (ientry < 0) break;
       nb = fChain->GetEntry(jentry);   nbytes += nb;
       int report_i=0;
       
       if(is_MC)
	 {
	   if ( Flag_goodVertices
		|| Flag_globalSuperTightHalo2016Filter
		|| Flag_HBHENoiseFilter
		|| Flag_HBHENoiseIsoFilter
		|| Flag_EcalDeadCellTriggerPrimitiveFilter
		|| Flag_badMuons
		|| Flag_BadPFMuonFilter
		|| Flag_ecalBadCalibReducedMINIAODFilter
		|| Flag_ecalBadCalibFilter
		||Flag_eeBadScFilter
		) continue;
	 }
       if(is_MC)
         {	  
	   if ( Flag_BadChargedCandidateFilter 
		|| Flag_BadPFMuonFilter ///
		|| Flag_EcalDeadCellTriggerPrimitiveFilter  ///
		|| Flag_HBHENoiseFilter /////
		|| Flag_HBHENoiseIsoFilter  ///
		|| Flag_ecalBadCalibReducedMINIAODFilter  ///
		|| Flag_badMuons 
		|| Flag_duplicateMuons 
		|| Flag_ecalBadCalibFilter 
		|| Flag_eeBadScFilter 
		|| Flag_globalSuperTightHalo2016Filter  ////
		|| Flag_goodVertices   /////
		) continue;
	 }
       bool trigger = false;
       double  applySf=1.0;
       //if( run < 317509 )
       bool trigger_doubleHPS40 = ( DoubleMediumHPSTau40Pass
				    //&& run >= 317509
				    );
       bool trigger_doubleTight35 = (DoubleTightTau35TightIDPass 
				     //&& run < 317509
				     );      
       bool trigger_doubleMedium40 = (DoubleMediumTau40TightIDPass
				      //&& run < 317509
				      );
       bool trigger_doubleTight40 = (DoubleTightTau40Pass
				     //&& run < 317509
				     );
       if(trigger_doubleHPS40)    hlt1 += 1.0;
       if(trigger_doubleTight35)  hlt2 += 1.0;
       if(trigger_doubleMedium40) hlt3 += 1.0;
       if(trigger_doubleTight40)  hlt4 += 1.0;
       
       bool trigger_doubleHPS40_match = ( DoubleMediumHPSTau40Pass
					  //&& run >= 317509
					  && t1MatchesDoubleMediumHPSTau40Path
					  && t2MatchesDoubleMediumHPSTau40Path
					  && t1MatchesDoubleMediumHPSTau40Filter
					  && t2MatchesDoubleMediumHPSTau40Filter
					  );
       bool trigger_doubleTight35_match = (DoubleTightTau35TightIDPass 
					   //&& run < 317509
					   //&& !is_MC
					   && t1MatchesDoubleTightTau35Path
					   && t2MatchesDoubleTightTau35Path
					   && t1MatchesDoubleTightTau35Filter
					   && t2MatchesDoubleTightTau35Filter
					   );      
       bool trigger_doubleMedium40_match = (DoubleMediumTau40TightIDPass
					    //&& run < 317509
					    //&& !is_MC
					    && t1MatchesDoubleMediumTau40Path
					    && t2MatchesDoubleMediumTau40Path
					    && t1MatchesDoubleMediumTau40Filter
					    && t2MatchesDoubleMediumTau40Filter
					    );
       bool trigger_doubleTight40_match = (DoubleTightTau40Pass
					   //&& run < 317509
					   //&& !is_MC
					   && t1MatchesDoubleTightTau40Path
					   && t2MatchesDoubleTightTau40Path
					   && t1MatchesDoubleTightTau40Filter
					   && t2MatchesDoubleTightTau40Filter
					   );
       
       if(!is_MC)
	 {
	   if (! ( trigger_doubleHPS40 
		   || trigger_doubleTight35 
		   || trigger_doubleMedium40 
		   || trigger_doubleTight40 ) )
	     continue;
	 }
       if(is_MC){
       	 if(! (trigger_doubleHPS40_match || trigger_doubleTight35_match || trigger_doubleMedium40_match || trigger_doubleTight40_match) ) continue;
       }
	   
       tau1P4.SetPtEtaPhiM(t1Pt, t1Eta, t1Phi, t1Mass);
       tau2P4.SetPtEtaPhiM(t2Pt, t2Eta, t2Phi, t2Mass);
       metP4.SetPtEtaPhiM(type1_pfMetEt,0,type1_pfMetPhi,0);
       bool matcht1DM = false;
       bool matcht2DM = false;
       if (t1DecayMode<=10 && t1DecayModeFinding>0.5)  matcht1DM = true;
       else if (t1DecayMode>=10 && t1DecayModeFindingNewDMs>0.5)  matcht1DM = true;
       else matcht1DM = false;
       if (t2DecayMode<=10 && t2DecayModeFinding>0.5)  matcht2DM = true;
       else if (t2DecayMode>=10 && t2DecayModeFindingNewDMs>0.5)  matcht2DM = true;
       else matcht2DM = false;
       
       if(is_MC)
	 {
	   TLorentzVector tmp_metP4 = metP4;
	   TLorentzVector totalP4 = tau1P4 + tau2P4 + metP4;
	   applyTauESCorrections(tau1P4, t1ZTTGenMatching, t1DecayMode, tau1P4);
	   applyTauESCorrections(tau2P4, t2ZTTGenMatching, t2DecayMode, tau2P4);
	   tmp_metP4 = totalP4 - tau1P4 - tau2P4 ;
	   metP4 = MetRecoilCorrections(tmp_metP4);
	 }
       if(is_MC)
       	 {  if( t1DecayModeFinding < 0.5 
		|| t2DecayModeFinding < 0.5 
		|| eVetoZTTp001dxyzR0 > 0
		|| muVetoZTTp001dxyzR0 > 0
		|| dielectronVeto > 0 
		|| dimuonVeto > 0
		) continue;  
	 }
       
       

       //if( trigger )
       {
	 //makeMyPlot("b", 0, 0, eventWeight);
	   
	   int mydm1=t1DecayMode;
	   int mydm2=t2DecayMode;
	   float gen1=t1ZTTGenMatching;
	   float gen2=t2ZTTGenMatching;
	   bool signalRegion=(t1MediumDeepTau2017v2p1VSjet>0.5);
	   bool antiisoRegion=(t1VVVLooseDeepTau2017v2p1VSjet>0.5 && t1MediumDeepTau2017v2p1VSjet<0.5);
	   float iso2=(t2MediumDeepTau2017v2p1VSjet);
	   float iso1=(t1MediumDeepTau2017v2p1VSjet);
	   
	   // if(is_MC)
	   //   if(! (t1ZTTGenMatching>=5 && t1ZTTGenMatching>=5))
	   //     continue;
	   //cout<< antiisoRegion <<" "<< byVVVLooseDeepVSjet_1 <<" "<< byMediumDeepVSjet_1 <<endl;
	   eventWeight = 1.0;
	   if(tau1P4.Pt()>tauPtCut && fabs(tau1P4.Eta())<2.1 && iso1>0.5
	      && abs(t1PVDZ)< 0.2
	      && t1VVVLooseDeepTau2017v2p1VSe>0.5 && t1VLooseDeepTau2017v2p1VSmu>0.5
	      && (mydm1!=5 && mydm1!=6)
	      && t1DecayModeFindingNewDMs>0.5
	      //&& t1DecayModeFinding > 0.5
	      ) // tau 1 selection
	     {
	       //makeMyPlot("c", 0, 0, eventWeight);
	       // selct taus
	       if(tau2P4.Pt()>tauPtCut && fabs(tau2P4.Eta())<2.1 && iso2>0.5
		  && abs(t2PVDZ)< 0.2 
		  && t2VVVLooseDeepTau2017v2p1VSe>0.5 && t2VLooseDeepTau2017v2p1VSmu>0.5
		  && (mydm2!=5 && mydm2!=6)
		  && t2DecayModeFindingNewDMs>0.5
		  //&& t2DecayModeFinding > 0.5
		  )
		 {
		   //cout<<tau1P4.Pt() <<" "<<tau2P4.Pt()<<endl;
		   //makeMyPlot("d", 0, 0, eventWeight);
		   if( t1Charge * t2Charge < 0 )
		     {
		       //makeMyPlot("e", 0, 0, eventWeight);
		       // match filers
		       //makeMyPlot("3", 0, 0, eventWeight);
		       
		       // 3rd lepton veto
		       if (eVetoZTTp001dxyzR0==0 && muVetoZTTp001dxyzR0==0)
		       //if (eVetoZTTp001dxyzR0==0 && muVetoZTTp001dxyzR0==0 
		       //	   && dielectronVeto==0 && dimuonVeto==0)
			 {
			   //makeMyPlot("g", 0, 0, eventWeight);
			   applySf=1.0;
			   if(is_MC)
			     applySf=  getScaleFactors( tau1P4.Pt(),
			   				tau2P4.Pt(),
			   				tau1P4.Eta(),
			   				tau2P4.Eta(),
			   				mydm1,
			   				t1ZTTGenMatching,
			   				false  /// this is set to true for fake bakground
			   				);
				   
			   //cout<<" sf : "<< applySf <<endl;
			   eventWeight = eventWeight * applySf;
			   if( passBjetVeto() )
			   {
			     makeMyPlot("4", 0, 0, eventWeight);
			     
			     //dr cut
			     double dr_etau=tau1P4.DeltaR(tau2P4);
			     if(dr_etau>0.5)
			       {
				 makeMyPlot("5", 0, 0, eventWeight);
				 plotFill("tau1rawiso", t1DeepTau2017v2p1VSjetraw, 20, 0, 1,  eventWeight);
				 
				 float mtt = (tau1P4 + tau2P4 + metP4).M();
				 if(mtt>50 && mtt<290)
                                   {
                                     makeMyPlot("6", 0, 0, eventWeight);
                                   }
			       }
			   }
			   
			 }
		       
		     }
		 }
	     }
	   eventWeight = 1.0; 
       
	   // //////////////// new change
	   // if(!is_MC)
	   //   {
	   //     tau1P4.SetPtEtaPhiM(t1Pt, t1Eta, t1Phi, t1Mass);
	   //     tau2P4.SetPtEtaPhiM(t2Pt, t2Eta, t2Phi, t2Mass);
	   //     metP4.SetPtEtaPhiM(type1_pfMetEt,0,type1_pfMetPhi,0);
	       
	   //     TLorentzVector tmp_metP4 = metP4;
	   //     TLorentzVector totalP4 = tau1P4 + tau2P4 + metP4;
	   //     tau1P4 = tau1P4 * get_BinContent( h_tauesSF, t1DecayMode);
	   //     tau2P4 = tau2P4 * get_BinContent( h_tauesSF, t2DecayMode);
	   //     if(t1DecayMode==0)
	   // 	 tau1P4.SetPtEtaPhiM( tau1P4.Pt(), tau1P4.Eta(), tau1P4.Phi(), 0.13957);
	   //     if(t2DecayMode==0)
           //       tau2P4.SetPtEtaPhiM( tau2P4.Pt(), tau2P4.Eta(), tau2P4.Phi(), 0.13957);
	   //     tmp_metP4 = totalP4 - tau1P4 - tau2P4 ;
	   //     metP4 = MetRecoilCorrections(tmp_metP4);
	   //     // cout<<"****************************"<<endl;
	   //     // printTabSeparated(t1Pt, t1Eta, t1Phi, t1Mass , tau1P4.Pt(), tau1P4.Eta(), tau1P4.Phi(), tau1P4.M());
           //     // printTabSeparated(t2Pt, t2Eta, t2Phi, t2Mass , tau2P4.Pt(), tau2P4.Eta(), tau2P4.Phi(), tau2P4.M());
           //     // printTabSeparated(type1_pfMetEt,0,type1_pfMetPhi,0 ,  metP4.Pt(), 0, metP4.Phi(), 0, "\n");
	   //   }
	   // ////////////////
	   if(tau1P4.Pt()>tauPtCut && fabs(tau1P4.Eta())<2.1 && antiisoRegion
	      && abs(t1PVDZ)< 0.2
	      && t1VVVLooseDeepTau2017v2p1VSe>0.5 && t1VLooseDeepTau2017v2p1VSmu>0.5
	      && (mydm1!=5 && mydm1!=6)
	      // && matcht1DM
	      && t1DecayModeFindingNewDMs>0.5
	      // && t1DecayModeFinding > 0.5
	      ) // tau 1 selection
	     {
	       //makeMyPlot("fc",0, 0, eventWeight);
	       // selct taus
	       if(tau2P4.Pt()>tauPtCut && fabs(tau2P4.Eta())<2.1 && iso2>0.5
		  && abs(t2PVDZ)< 0.2
		  && t2VVVLooseDeepTau2017v2p1VSe>0.5 && t2VLooseDeepTau2017v2p1VSmu>0.5
		  && (mydm2!=5 && mydm2!=6)
		  //&& matcht2DM
		  && t2DecayModeFindingNewDMs>0.5
		  // && t2DecayModeFinding > 0.5
		  )
		 {
		   //makeMyPlot("fd",0, 0, eventWeight);
		   // opp charge
		   if( t1Charge * t2Charge < 0 )
		     {
		       
		       double mt=TMass_F(tau2P4.Pt(),tau2P4.Phi()
					 ,metP4.Pt(), metP4.Phi());
		       double mvis=(tau1P4+ tau2P4).M();
		       
		       double newFF = 1.0;
		       newFF = FF_weights_withlpt.get_ff( tau1P4.Pt(), mt, mvis
							  , 0 , tau2P4.Pt(), metP4.Pt()
							  , jetVeto30, 0
							  , 0, 0 , 0
							  , TString(" "));
		       
		       
		       eventWeight = eventWeight * newFF; 
		       
		       // 3rd lepton veto
		       //makeMyPlot("3_fr",0, 0, eventWeight);
		       if (eVetoZTTp001dxyzR0==0 && muVetoZTTp001dxyzR0==0 )
			 //&& dielectronVeto==0 && dimuonVeto==0)
			 {
			   applySf=1.0;
			   
			   if(is_MC)
			     {
			       //if( (tau1P4 + tau2P4).M() <80 && (tau1P4 + tau2P4).M() >50 )
			       {
				 applySf=  getScaleFactors( tau1P4.Pt(),
							    tau2P4.Pt(),
							    tau1P4.Eta(),
							    tau2P4.Eta(),
							    mydm1,
							    t1ZTTGenMatching,
							    true  /// this is set to true for fake bakground
							    );
			       }
			     }
			   //cout<<" sf : "<< applySf <<endl;
			   eventWeight = eventWeight * applySf;
			   //eventWeight = eventWeight * higgsPtCorr();
			   //makeMyPlot("fg",0, 0, eventWeight);
			   if( passBjetVeto() )
			   {
			     makeMyPlot("4_fr",0, 0, eventWeight);
			     
			     //dr cut
			     double dr_etau=tau1P4.DeltaR(tau2P4);
			     if(dr_etau>0.5)
			       {
				 makeMyPlot("5_fr",0, 0, eventWeight);
				 plotFill("tau1rawiso", t1DeepTau2017v2p1VSjetraw, 20, 0, 1,  eventWeight);

				 float mtt = (tau1P4 + tau2P4 + metP4).M();
				 if(mtt>50 && mtt<290)
                                   {
                                     makeMyPlot("6_fr", 0, 0, eventWeight);
                                   }
			       }
			   }
			   
			 }
		     }
		 }
	       
	     }
       }
     
       
       report_test = nentriesToCheck/20;
       while (report_test>10)
	 {
	   report_test=report_test/10;
	   report_i++;
	 }
       reportEvery = report_test*pow(10,report_i);
       if (jentry%reportEvery == 0)
	 {
	   std::cout<<"Finished entry "<<jentry<<"/"<<(nentriesToCheck-1)<<std::endl;
	 }
     }
   cout<<"nPassedSkimmed = "<<nPassedSkimmed<<endl;
   cout<<"DoubleMediumHPSTau40Pass     "<<hlt1<<endl;
   cout<<"DoubleTightTau35TightIDPass  "<<hlt2<<endl;
   cout<<"DoubleMediumTau40TightIDPass "<<hlt3<<endl;
   cout<<"DoubleTightTau40Pass         "<<hlt4<<endl;
   h_trigger->SetBinContent(1, hlt1);
   h_trigger->SetBinContent(2, hlt2);
   h_trigger->SetBinContent(3, hlt3);
   h_trigger->SetBinContent(4, hlt4);



}

void smhtt_2018::BookHistos(const char* file1, const char* file2)
{
  TFile* file_in= new TFile(file1, "READ");
  fileName = new TFile(file2, "RECREATE");
  fileName->cd();
  //tree = new TTree("eventTree","eventTree");
  //tree->Branch("run_",&run_);
  //tree->Branch("event_",&event_); 
  //tree->Branch("lumis_",&lumis_); 
  //makeOutputTree(tree);
  h_nEvents = (TH1F*)((TH1F*)file_in->Get("nEvents"))->Clone(TString("nEvents"));
  file_in->Close();
  
  
  
}

//Fill the sequential histos at a particular spot in the sequence


void smhtt_2018::fillHistos(int histoNumber, double event_weight, int higgs_Index)
{
  
  //h_HiggsPt[histoNumber]->Fill(mcPt->at(higgs_Index),event_weight);

}

double smhtt_2018::delta_R(float phi1, float eta1, float phi2, float eta2)
{
  double deltaeta = abs(eta1 - eta2);
  double deltaphi = DeltaPhi(phi1, phi2);
  double deltar   = sqrt(deltaeta*deltaeta + deltaphi*deltaphi);
  return deltar;
  
}


float smhtt_2018::pTvecsum_F(TLorentzVector a, TLorentzVector b, TLorentzVector c) {
  float pt_vecSum = (a + b+ c).Pt();
  return pt_vecSum;
}
double smhtt_2018::DeltaPhi(double phi1, double phi2)
//Gives the (minimum) separation in phi between the specified phi values
//Must return a positive value
{
  double pi = TMath::Pi();
  double dphi = phi1-phi2;
  if(dphi>pi) dphi  -= 2.0*pi;
  if(dphi<= -1*pi) dphi +=  2.0*pi;
  return fabs(dphi);
}

float smhtt_2018::TMass_F(float LepPt, float LepPhi , float met, float metPhi) {
  //return  sqrt(2.0*LepPt*met*(1.0-cos(DeltaPhi(LepPhi, metPhi))));
  return sqrt(pow(LepPt + met, 2) - pow(LepPt* cos(LepPhi) + met * cos(metPhi), 2) - pow(LepPt * sin(LepPhi) + met * sin(metPhi), 2));
}

void smhtt_2018::makeMyPlot( string histNumber , int tau1Index, int tau2Index, float event_weight){
  string hNumber = histNumber;
  int ele_select=-1;
  std::vector<int> tmpCand; tmpCand.clear();
  if(tau1Index>-1)
    tau1Index=tau1Index;
  else
    tau1Index=0;
  if(tau2Index>-1)
    tau2Index=tau2Index;
  else
    tau2Index=0;
  plotFill("tau1Pt_"+hNumber,  tau1P4.Pt() , 30 , 40 , 180,  event_weight);
  plotFill("tau1Eta_"+hNumber, t1Eta, 22, -2.1, 2.1,  event_weight);
  plotFill("tau1Phi_"+hNumber, t1Phi, 30, -3.14, 3.14,  event_weight);

  plotFill("tau2Pt_"+hNumber,  tau2P4.Pt()  , 30 , 40 , 120,  event_weight);
  plotFill("tau2Eta_"+hNumber, t2Eta , 22, -2.1, 2.1, event_weight);
  plotFill("tau2Phi_"+hNumber, t2Phi , 30, -3.14, 3.14,  event_weight);
  
  plotFill("tau1DecayMode_"+hNumber,  t1DecayMode ,  12, 0, 12, event_weight);
  plotFill("tau2DecayMode_"+hNumber,  t2DecayMode ,  12, 0, 12, event_weight);
  int decayModeFinding_2=0;
  plotFill("decayModeFinding_"+hNumber, t1DecayModeFindingNewDMs , 4, 0, 2,  event_weight);
  //decayModeFinding_2

  plotFill("electronVeto_"+hNumber, eVetoZTTp001dxyzR0==0, 4, 0, 2,  event_weight);
  plotFill("muonVeto_"+hNumber,muVetoZTTp001dxyzR0==0, 4, 0, 2,  event_weight);

  plotFill("tau1Iso_"+hNumber, t1MediumDeepTau2017v2p1VSjet, 4, -1, 2,  event_weight);
  plotFill("tau1rawiso_"+hNumber, t1DeepTau2017v2p1VSjetraw, 20, 0, 1,  event_weight);
  //plotFill("tau1rawiso_"+hNumber, t1DeepTau2017v2p1VSjetraw, 20, 0, 1,  event_weight);
  plotFill("tau2Iso_"+hNumber, t2MediumDeepTau2017v2p1VSjet, 4, -2, 2,  event_weight);
  plotFill("tau2rawiso_"+hNumber, t2DeepTau2017v2p1VSjetraw, 20, 0, 1,  event_weight);

  plotFill("nJet_"+hNumber, jetVeto30 , 8, 0, 8,  event_weight);
  
  int triggerBin1, triggerBin2, triggerBin3, triggerBin4;
  triggerBin1=triggerBin2=triggerBin3=triggerBin4=0;
  if( DoubleMediumHPSTau35Pass )  triggerBin4=4;
  if( DoubleTightTau35TightIDPass )  triggerBin3=3;
  if( DoubleMediumTau40TightIDPass )  triggerBin2=2;
  if( DoubleTightTau40Pass )  triggerBin1=1;
  if(triggerBin1>0)
    plotFill("trigger_"+hNumber, triggerBin1 , 5, 0, 5,  event_weight);
  if(triggerBin2>0)
    plotFill("trigger_"+hNumber, triggerBin2 , 5, 0, 5,  event_weight);
  if(triggerBin3>0)
    plotFill("trigger_"+hNumber, triggerBin3 , 5, 0, 5,  event_weight);
  if(triggerBin4>0)
    plotFill("trigger_"+hNumber, triggerBin4 , 5, 0, 5,  event_weight);
  
  plotFill("mass1_"+hNumber, tau1P4.M() , 25, 0, 2.5,  event_weight);
  plotFill("mass2_"+hNumber, tau2P4.M() , 25, 0, 2.5,  event_weight);
  
  plotFill("genmatch1_"+hNumber, t1ZTTGenMatching , 7, 0, 7,  event_weight);
  plotFill("genmatch2_"+hNumber, t2ZTTGenMatching , 7, 0, 7,  event_weight);

  
  double deltaPhi = DeltaPhi(t1Phi, t2Phi);
  double deltaEta = fabs(tau1P4.Eta() - tau2P4.Eta());
  plotFill("deltaPhi_"+hNumber, deltaPhi , 30, -3.14, 3.14,  event_weight);
  plotFill("deltaEta_"+hNumber, deltaEta ,  25, -2.5, 2.5,  event_weight);
  double deltaR = tau1P4.DeltaR(tau2P4);
  plotFill("deltaR_"+hNumber, deltaR , 30, 0, 6,  event_weight);

  double vismass = (tau1P4 + tau2P4).M();
  plotFill("visMass_"+hNumber, vismass,  30, 0, 300,  event_weight);
  plotFill("visMass_70100_"+hNumber, vismass,  12, 70, 100,  event_weight);

  plotFill("t1t2Mass_"+hNumber, t1_t2_Mass,  30, 0, 300,  event_weight);
  
  if(t1DecayMode==0)
    plotFill("t1Mass_dm0_"+hNumber, tau1P4.M(),  40, 0, 2.0,  event_weight);
  if(t2DecayMode==0)
    plotFill("t2Mass_dm0_"+hNumber, tau2P4.M(),  40, 0, 2.0,  event_weight);

  plotFill("t1Mass_"+hNumber, tau1P4.M(),  40, 0, 2.0,  event_weight);
  plotFill("t2Mass_"+hNumber, tau2P4.M(),  40, 0, 2.0,  event_weight);
  double higgsPt = pTvecsum_F(tau1P4, tau2P4, metP4);
  plotFill("higgsPt_"+hNumber, higgsPt ,  30, 0, 230,  event_weight);
  plotFill("met_"+hNumber, metP4.Pt() , 30, 0, 150,  event_weight);
  plotFill("met_60_"+hNumber, metP4.Pt() , 22, 60, 200,  event_weight);
  plotFill("met_80_"+hNumber, metP4.Pt() , 8, 80, 200,  event_weight);

  plotFill("met_20200_"+hNumber, metP4.Pt() , 28, 20, 200,  event_weight);

  // plotFill("met_20200_raw_"+hNumber, raw_pfMetEt , 28, 20, 200,  event_weight);
  // plotFill("met_20200_puppi_"+hNumber, type1_pfMetEt , 28, 20, 200,  event_weight);

  plotFill("metPhi_"+hNumber, metP4.Phi() , 30, -3.14, 3.14,  event_weight);
  double mT_eleMet = TMass_F( tau1P4.Pt(),tau1P4.Phi(),metP4.Pt(), metP4.Phi()  );
  plotFill("mT_eMet_"+hNumber,  mT_eleMet , 30, 0, 150, event_weight);
  int nEvent=1;
  plotFill("nEvents_"+hNumber, nEvent , 3, 0.0, 3.0,  event_weight);
  plotFill("eventWeight_"+hNumber, event_weight , 20, 0.0 , 2.0,  1.0 );
  //cout<<"     elePt_"<<hNumber<<" = "<< elePt->at(tmpCand[0])<<endl;
  plotFill("event_"+hNumber, evt/1000000, 1000, 0.0, 1000, event_weight);
}


double smhtt_2018::getScaleFactors(  double tau1pt, double tau2pt, double tau1eta, double tau2eta, int taudm, int tau1GenMatch, bool isFakebkg)
{
  
  bool debug=false;
  double rv_sf=1.0;
  double sf_tauTrg = 1.0; double sf_tauTrg_vvvloose=1.0;
  double sf_htt_tau1=1.0;   double sf_htt_tau2=1.0;
  double sf_tau1idSF_m = 1.0; double sf_tau2idSF_m = 1.0;
  double sf_tau1idSF_vvvl = 1.0; double sf_tau2idSF_vvvl = 1.0;
  double sf_fakeEleMu = 1.0; 
  double sf_fakeEleES = 1.0; double sf_fakeMuES = 1.0;
  double sf_taufesSF = 1.0;
  
  
  if(  t1ZTTGenMatching==5 )
    {
      sf_tau1idSF_m = get_BinContent( h_tauidSF_m, t1DecayMode) ;
      //sf_tau1idSF_m = fn_tauIDSF_m->Eval(tau1pt) ;
      sf_tau1idSF_vvvl = get_BinContent( h_tauidSF_vvvl, t1DecayMode);
    }
  if(  t2ZTTGenMatching==5 )
    {
      sf_tau2idSF_m = get_BinContent( h_tauidSF_m, t2DecayMode) ;
      //sf_tau2idSF_m = fn_tauIDSF_m->Eval(tau2pt) ;
      sf_tau2idSF_vvvl = get_BinContent( h_tauidSF_vvvl, t2DecayMode);
    }
  
  
  sf_tauTrg = TriggerSF_med.get_sf(t1DecayMode, tau1pt) * TriggerSF_med.get_sf(t2DecayMode, tau2pt);
  
  sf_fakeEleMu = eleMuSF(t1ZTTGenMatching, tau1eta) * eleMuSF(t2ZTTGenMatching, tau2eta);

  //// tau trigger, id scale factors from RooWorkspace
  w->var("t_pt")->setVal(tau1P4.Pt());
  w->var("t_eta")->setVal(tau1P4.Eta());
  w->var("t_phi")->setVal(tau1P4.Phi());
  w->var("t_dm")->setVal(t1DecayMode);
  double t1_deeptauid = w->function("t_deeptauid_dm_medium")->getVal();
  double t1_trg_pog = w->function("t_trg_pog_deeptau_medium_mutau_ratio")->getVal();
  sf_htt_tau1 = t1_trg_pog;
  
  w->var("t_pt")->setVal(tau2P4.Pt());
  w->var("t_eta")->setVal(tau2P4.Eta());
  w->var("t_phi")->setVal(tau2P4.Phi());
  w->var("t_dm")->setVal(t2DecayMode);
  double t2_deeptauid = w->function("t_deeptauid_dm_medium")->getVal();
  double t2_trg_pog = w->function("t_trg_pog_deeptau_medium_mutau_ratio")->getVal();
  sf_htt_tau2 = t2_trg_pog;
 
  // double zptmass_weight = 1.0;
  // if(found_DYjet_sample)
  //   zptmass_weight= get_zptmass_weight();
  // if( (tau1P4 + tau2P4).M() <80 && (tau1P4 + tau2P4).M() >50 )
  //   {
  //     printTabSeparated(" ");
  //     printTabSeparated("input ", "tau1pt", "tau2pt", "t1DecayMode", "t2DecayMode", "isFakebkg");
  //     printTabSeparated("      ",   tau1pt,   tau2pt,  t1DecayMode,   t2DecayMode,   isFakebkg);
  //     printTabSeparated("sf_tau1idSF_m =", sf_tau1idSF_m);
  //     printTabSeparated("sf_tau2idSF_m =", sf_tau2idSF_m);
  //     printTabSeparated("sf_tauTrg = " , TriggerSF_med.get_sf(t1DecayMode, tau1pt), TriggerSF_med.get_sf(t2DecayMode, tau2pt) ) ;
  //     printTabSeparated("sf_fakeEleMu = ", eleMuSF(t1ZTTGenMatching, tau1eta) , eleMuSF(t2ZTTGenMatching, tau2eta) ) ;
  //     printTabSeparated(" htt stuff = ", t1_trg_pog, t2_trg_pog , t1_deeptauid, t2_deeptauid );
  //     printTabSeparated(" fake id ", sf_tau1idSF_vvvl );
  //     printTabSeparated(" fake trg ", TriggerSF_vvvl.get_sf(t1DecayMode, tau1pt) );
  //   }
  double higgspt_corr = higgsPtCorr();
  if (higgspt_corr>1.0 && found_DYjet_sample)
    higgspt_corr = 1.0;
  
  rv_sf = sf_tau1idSF_m * sf_tau2idSF_m * sf_tauTrg * sf_fakeEleMu * t1_trg_pog * t2_trg_pog * higgspt_corr; /// this worked diff was ~150 events
  //  rv_sf = sf_tau1idSF_m * sf_tau2idSF_m * sf_tauTrg * sf_fakeEleMu * zptmass_weight;
  
  if(isFakebkg)
    rv_sf = sf_tau1idSF_vvvl * TriggerSF_vvvl.get_sf(t1DecayMode, tau1pt) * sf_tau2idSF_m * TriggerSF_med.get_sf(t2DecayMode, tau2pt) * sf_fakeEleMu * higgspt_corr;
  //rv_sf = rv_sf * sf_tau1idSF_vvvl * TriggerSF_vvvl.get_sf(t1DecayMode, tau1pt);
  // if(rv_sf>0 )
  //   return rv_sf;
  // else
  //   return 1.0;
  
  return rv_sf;


}

double smhtt_2018::get_zptmass_weight(){
  double weight = 1.0;
  // int genZCand= -1;  
  //cout<<" "<<genpT<<" "<<genMass<<" "<<genM<<endl;
  // w->var("t_pt")->setVal(tau1P4.Pt());
  // w->var("t_eta")->setVal(tau1P4.Eta());
  // w->var("t_phi")->setVal(tau1P4.Phi());
  // w->var("t_dm")->setVal(t1DecayMode);
  w->var("z_gen_pt")->setVal(genpT);
  w->var("z_gen_mass")->setVal(genMass);
  weight=w->function("zptmass_weight_nom")->getVal();
  
  // if(genMass>80 && genMass<100)
  //cout<<" "<<genpT<<" "<<genMass<<" zptmass_weight "<<weight <<endl;
  if(weight>0.5 && weight<1.5)
    return weight;
  else
    return 1.0;
}
bool smhtt_2018::isVBF()
{
  //  atleast 2 jets , delta eta > 2.5
  // higgs(tau1+tau2+met) pt >100
  if(jetVeto30>=2)
    {
      if( abs(j1eta - j2eta) > 2.5 )
	{ 

	  if( (tau2P4 + tau1P4 + metP4).Pt() > 100 )
	    return true;
	}
    }
  return false;

}
bool smhtt_2018::isZeroJet()
{
  if(jetVeto30==0)
    return true;
  
  return false;

}
double smhtt_2018::eleMuSF(int genmatch, double taueta)
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

void smhtt_2018::applyTauESCorrections(TLorentzVector tauP4, float GenMatching, float DecayMode, TLorentzVector& tauP4Corr)
{
  
  if(is_MC)
  {
    if (GenMatching==5) tauP4Corr=tauP4*get_BinContent( h_tauesSF, DecayMode);
    // if (GenMatching>=5 && DecayMode==0) tauP4Corr=tauP4*0.987;
    // else if (GenMatching>=5 && DecayMode==1) tauP4Corr=tauP4*0.995;
    // else if (GenMatching>=5 && DecayMode==10) tauP4Corr=tauP4*0.988;
    if (  (GenMatching==1 || GenMatching==3) && DecayMode==0 ) tauP4Corr=tauP4*0.969;
    else if ( (GenMatching==1 || GenMatching==3) && DecayMode==1) tauP4Corr=tauP4*1.026;
    if (  (GenMatching==2 || GenMatching==4) && DecayMode==0 ) tauP4Corr=tauP4*0.998;
    else if ( (GenMatching==2 || GenMatching==4) && DecayMode==1) tauP4Corr=tauP4*0.990;
    
    if (DecayMode == 0 ) tauP4Corr.SetPtEtaPhiM(tauP4Corr.Pt(), tauP4Corr.Eta(), tauP4Corr.Phi(), 0.13957);
    
  }
  else
    tauP4Corr = tauP4;
}
double smhtt_2018::higgsPtCorr(){
  double higgsPt = pTvecsum_F(tau2P4, tau1P4, metP4);
  double higgPt_weight=1.0;
  if (jetVeto30==0)
    higgPt_weight = gr_NNLOPSratio_pt_mcatnlo_0jet->Eval(min(higgsPt,125.0));
  else if (jetVeto30==1)
    higgPt_weight = gr_NNLOPSratio_pt_mcatnlo_1jet->Eval(min(higgsPt,625.0));
  else if (jetVeto30==2)
    higgPt_weight = gr_NNLOPSratio_pt_mcatnlo_2jet->Eval(min(higgsPt,800.0));
  else if (jetVeto30>=3)
    higgPt_weight = gr_NNLOPSratio_pt_mcatnlo_3jet->Eval(min(higgsPt,925.0));
  else
    higgPt_weight = 1.0;
  //if (higgPt_weight>1.0) higgPt_weight = 1.0;
  
  return higgPt_weight;
}
TLorentzVector smhtt_2018::MetRecoilCorrections(TLorentzVector mymet){
  
  // TLorentzVector mymet;
  // mymet.SetPtEtaPhiM(type1_pfMetEt,0,type1_pfMetPhi,0);
  // apply recoil corrections on event-by-event basis (Type I PF MET)
  
  float pfmetcorr_ex=0; float pfmetcorr_ey=0;
  int recoil = 2;
  int recoiljets=jetVeto30+1;
  if (recoil==2) recoiljets=jetVeto30;

  recoilPFMetCorrector.CorrectByMeanResolution(
					       mymet.Px(), // uncorrected type I pf met px (float)
  					       mymet.Py(), // uncorrected type I pf met py (float)
  					       genpX, // generator Z/W/Higgs px (float)
  					       genpY, // generator Z/W/Higgs py (float)
  					       vispX, // generator visible Z/W/Higgs px (float)
  					       vispY, // generator visible Z/W/Higgs py (float)
  					       recoiljets,  // number of jets (hadronic jet multiplicity) (int)
  					       pfmetcorr_ex, // corrected type I pf met px (float)
  					       pfmetcorr_ey  // corrected type I pf met py (float)
  					       );
  

  mymet.SetPxPyPzE(pfmetcorr_ex,pfmetcorr_ey,0,sqrt(pfmetcorr_ex*pfmetcorr_ex + pfmetcorr_ey*pfmetcorr_ey));
  return mymet;
}

bool smhtt_2018::passBjetVeto(){
  
  // if( !found_TTbar_sample )
  //   return true;
  // if (found_TTbar_sample)
  //   {
      if(bjetDeepCSVVeto20Medium_2018_DR0p5 >= 1 || bjetDeepCSVVeto20Loose_2018_DR0p5 >= 2  )
	return false;
      else
	return true;
  //   }
  // return true;
}
