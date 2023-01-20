/////etau_analyzer.C
//For use with Ntuples made from ggNtuplizer
//Required arguments: 1 is folder containing input files, 2 is output file path, 3 is maxEvents (-1 to run over all events), 4 is reportEvery
//
//To compile using rootcom to an executable named 'analyze':
//$ ./rootcom etau_analyzer analyze
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
#define etau_analyzer_cxx
#include "etau_analyzer.h"
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
#include "RooWorkspace.h"
#include "RooRealVar.h"
#include "RooFunctor.h"
#include <numeric>
#include "commonFunctions.h"
#include "fractions.C"
//#include "ApplyFF.h"
#include "object_functions.h"
#include "fill_histograms.h"
#include "selections.h"
#include "get_met_systenatics.h"
//#include "myclass.cc"

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
  std::string year  = argv[5];
  std::string outputfile  = argv[2];
  Long64_t maxEvents = atof(argv[3]);
  string sp = "0";
  cout<<"argc = "<<argc<<endl;
  if(argc>8)
    sp = string(argv[8]);
  cout<<"sp = "<<sp<<endl;
  const char* signalpara = sp.c_str();
  
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
 
  etau_analyzer t(argv[1], argv[2], isMC, SampleName, year, signalpara);
  t.Loop(maxEvents,reportEvery, SampleName );
  
  cout<<" Outpt written to "<<outputfile<<endl;
  sw.Stop();
  sw.Print();
  return 0;
}


void etau_analyzer::BookHistos(const char* file1, const char* file2, string year)
{
  // TFile* file_in= new TFile(file1, "READ");
  // fileName = new TFile(file2, "RECREATE");
  
  // //makeOutputTree(tree);
  // fileName->cd();
  // h_nEvents = (TH1F*)((TH1F*)file_in->Get("nEvents"))->Clone(TString("nEvents"));
  // TH1F* h_luminosity = new TH1F("luminosity", "luminosity", 2, 0, 2); 
  // if (year=="2016")
  //   h_luminosity->SetBinContent(1, 39500.0 );
  // else if (year=="2017")
  //   h_luminosity->SetBinContent(1, 41520.0 );
  // else if (year=="2018")
  //   h_luminosity->SetBinContent(1, 59700.0 );
  
  // file_in->Close();
  // Float_t Pt_Bins[36]={0.0, 10, 20, 30, 40, 50, 60, 70, 80, 90, 100, 110, 120, 130, 140, 150, 160, 170, 180, 190, 200, 220, 240, 260, 280, 300, 320, 340, 360, 380, 400, 450, 500, 600, 800, 1000};
  
  // Float_t MetBins[15]={0.0, 20, 40, 60, 80, 100, 120, 140, 160,180., 200, 300., 400., 600.0,800.0};
  // Float_t TrMassBins[24]={0.0, 20, 40, 60, 80, 100, 120, 140, 160,180., 200, 220, 240,260,280,300.,320,340,360,380, 400., 600.0,800.0, 1000.0};
  

}

//Fill the sequential histos at a particular spot in the sequence


void etau_analyzer::fillHistos(int histoNumber, double event_weight, int higgs_Index)
{
  
  //  h_HiggsPt[histoNumber]->Fill(mcPt->at(higgs_Index),event_weight);

}



void etau_analyzer::Loop(Long64_t maxEvents, int reportEvery, string SampleName)
{
  
  int nTotal;
  nTotal = 0;
  int report_=0;
  int report_test=0;
  double numberOfEvents = 0;
  int nInspected;
  nInspected = 0;
  double nInspected_genWeighted;  
  nInspected_genWeighted = 0.0; 
  debug=false;  
  if(debug) cout<<"******** debugging is on ******************"<<endl;
  if (fChain == 0) return;
  
  TString sample = TString(SampleName);
  
  
  //TH1F* h_cutflow_Htt=new TH1F("cutflow_Htt", "cutflow_Htt", 11, 0, 11); h_cutflow_Htt->Sumw2();
  
  Long64_t nentries = fChain->GetEntries();
  if ( is_MC==true ) std::cout<<".... MC file ..... "<<std::endl;
  else  std::cout<<".... DATA file ..... "<<std::endl;

  std::cout<<"Coming in: "<<std::endl;
  std::cout<<"nentries:"<<nentries<<std::endl;
  //Look at up to maxEvents events, or all if maxEvents == -1.
  Long64_t nentriesToCheck = nentries;
  if (maxEvents != -1LL && nentries > maxEvents)
    nentriesToCheck = maxEvents;
  nTotal = nentriesToCheck;
  Long64_t nbytes = 0, nb = 0;
   
  std::cout<<"Running over "<<nTotal<<" events."<<std::endl;

  for (Long64_t jentry=0; jentry<nentriesToCheck;jentry++)
    {
      eleCand.clear();
      tauCand.clear();
      aisrtauCand.clear();
      eleCand_nom.clear();
      tauCand_nom.clear();
      aisrtauCand_nom.clear();
      jetCand.clear();
      jetCand_nom.clear();
      
      Long64_t ientry = LoadTree(jentry);
      if (ientry < 0) break;
      nb = fChain->GetEntry(jentry);   nbytes += nb;
      double inspected_event_weight = 1.0; 
      if(is_MC)	 fabs(genWeight) > 0.0 ? inspected_event_weight *= genWeight/fabs(genWeight) : inspected_event_weight = 0.0;
      nInspected_genWeighted += inspected_event_weight;  
      nInspected += 1; 
      double event_weight=1.0;
      double weight=1.0;
      applySf = 1.0;
       
      double pileup_sf = 1.0;
      passSingleTriggerPaths=false;
      passCrossTrigger=false;
      int report_i=0;
      Ztt_selector=false;

      numberOfEvents+=weight;
      if(is_MC) weight=inspected_event_weight;
      else weight=1.0;
      if(is_MC)
	pileup_sf = h_pileup->GetBinContent(h_pileup->GetXaxis()->FindBin(puTrue->at(0)));
      weight = weight*pileup_sf;
      // if(is_MC)
      // 	weight=weight*prefiringweight;
      if( isGoodVtx==false ) continue;
      t_index = get_t_Cand(); tbar_index = get_tbar_Cand();

      
      if( (HLTEleMuX>>5&1==1)  //HLT_Ele35_WPTight_Gsf_v
	  || (HLTEleMuX>>61&1==1)   //HLT_Ele32_WPTight_Gsf_v
	  )
	passSingleTriggerPaths=true;  //
       
      if( (HLTTau>>1&1==1 && is_MC==false ) // HLT_Ele24_eta2p1_WPTight_Gsf_LooseChargedIsoPFTau30_eta2p1_CrossL1, data only
	  || (HLTTau>>16&1==1 ) //HLT_Ele24_eta2p1_WPTight_Gsf_LooseChargedIsoPFTauHPS30_eta2p1_TightID_CrossL1_v
	  )
	passCrossTrigger=true;
      
      /////
      if(debug)cout<<"entry # : "<<jentry<<endl;
      eventNumber = jentry;
      
      if(!is_MC)
	event_weight=1.0;
      else
	event_weight=weight;
      //cout<<__LINE__<<endl;
      //cout<< "zprimeBaryonic_signal "<<zprimeBaryonic_signal<<"  "<<__LINE__<<endl;
      // if (found_ZprimeBaryonic==true && std::find(signalParameters->begin(), signalParameters->end(), zprimeBaryonic_signal) == signalParameters->end()) {
      //cout<< "zprimeBaryonic_signal "<<zprimeBaryonic_signal<<"  "<<endl;
      // continue;
      // }
      if (found_ZprimeBaryonic==true )
	plotFill("nEvents_ZpB", zprimeBaryonic_signal, 50, 0, 50,  1.0);
      //cout<< "zprimeBaryonic_signal "<<zprimeBaryonic_signal<<" filling "<<endl;
      //cout<<__LINE__<<endl;
      if(metFilters==0 && ( passSingleTriggerPaths || passCrossTrigger))
	{
	  nSingleTrgPassed+=event_weight;
	  //if(check_unc)cout<<"Preparing NOMINAL"<<endl;
	  orginal_jetPt.clear();
	  for (float pt : (*jetPt)) orginal_jetPt.push_back(pt);
	  selections(event_weight, 0, "nominal"); // this is for nominal
	  //cout<<__LINE__<<endl;
	  // jet-tau fakes
	  selections(event_weight,  1, "jetFakes");
	  selections(event_weight,  -1, "jetFakes");
	  if(is_MC){
	    // /// UP 
	    string shape_names[13] = {"electronES", "tauES", 
	  			      "JES","JER", 
	  			      "metresponse", "metresolution",  "metunclustered", 
	  			      "tauIDunc", "tauTRGunc", "leptonTRGunc", 
	  			      "electronMissID", 
	  			      "dyShape", "ttbarShape"};
	    for (int i = 0; i < 13 ; i++ ){
	      // if (shape_names[i] != "metunclustered")
	      // 	continue;     
	      // cout<<"shape name = "<<shape_names[i]<<endl;
	      selections(event_weight,  1, shape_names[i]);
	      selections(event_weight,  -1, shape_names[i]);
	    }
	    
	  }
	}
      report_test = nentriesToCheck/20;
      while (report_test>10)
	{
	  report_test=report_test/10;
	  report_i++;
	}
      if(nentriesToCheck>20)
	reportEvery = report_test*pow(10,report_i);
      else 
	reportEvery = 1;
      if (jentry%reportEvery == 0) 
	{
	  std::cout<<"Finished entry "<<jentry<<"/"<<(nentriesToCheck-1)<<std::endl;
	}
    }
   
  std::cout.setf( std::ios::fixed, std:: ios::floatfield );
  if((nentriesToCheck-1)%reportEvery != 0)
    std::cout<<"Finished entry "<<(nentriesToCheck-1)<<"/"<<(nentriesToCheck-1)<<std::endl;
  // sw.Stop();
  std::cout<<"All events checked."<<std::endl;
  std::cout<<"*******************************************"<<std::endl;
  std::cout<<"******************Jithin's original*************************"<<std::endl;
  std::cout<<std::setw(20) <<std::right <<"Initial entries "<<numberOfEvents<<std::endl;
  std::cout<<std::setw(20) <<std::right <<"Passing smikking "<<nPassedSkimmed<<std::endl;

  std::cout<<std::setw(20) <<std::right <<"GoodMuonPassed "<<nGoodMuonPassed<<std::setw(10) <<std::right << "   % change= "<<(nSingleTrgPassed-nGoodMuonPassed)*100/nSingleTrgPassed<<std::endl;
  std::cout<<std::setw(20) <<std::right <<"GoodTauPassed "<<nGoodTauPassed<<std::setw(10) <<std::right << "   % change= "<<(nGoodMuonPassed-nGoodTauPassed)*100/nGoodMuonPassed<<std::endl;
  //   std::cout<<std::setw(20) <<std::right <<"TauIsoPassed "<<nTauIsoPassed<<std::setw(10) <<std::right << "   % change= "<<(nGoodTauPassed-nTauIsoPassed)*100/nGoodTauPassed<<std::endl;
  //std::cout<<std::setw(20) <<std::right <<"TauDecayModePassed "<<nTauDecayModePassed<<std::setw(10) <<std::right << "   % change= "<<(nTauIsoPassed-nTauDecayModePassed)*100/nTauIsoPassed<<std::endl;

  std::cout<<std::setw(20) <<std::right <<"opp charge "<<nGoodMuTauPassed<<std::setw(10) <<std::right << "   % change= "<<(nGoodTauPassed-nGoodMuTauPassed)*100/nGoodTauPassed<<std::endl;

   
  std::cout<<std::setw(20) <<std::right <<"PassedThirdLepVeto "<<nPassedThirdLepVeto<<std::setw(10) <<std::right << "   % change= "<<(nGoodMuTauPassed-nPassedThirdLepVeto)*100/nGoodMuTauPassed<<std::endl;
  std::cout<<std::setw(20) <<std::right <<"PassedBjetVeto "<<nPassedBjetVeto<<std::setw(10) <<std::right << "   % change= "<<(nPassedThirdLepVeto-nPassedBjetVeto)*100/nPassedThirdLepVeto<<std::endl;
  std::cout<<std::setw(20) <<std::right <<"DeltaRPassed "<<nDeltaRPassed<<std::setw(10) <<std::right << "   % change= "<<(nPassedBjetVeto-nDeltaRPassed)*100/nPassedBjetVeto<<std::endl;


  std::cout<<std::setw(20) <<std::right <<"Total change :"<<(numberOfEvents-nDeltaRPassed)*100/numberOfEvents<<std::endl;
  std::cout<<"*******************************************"<<std::endl;
  std::cout<<"*******************************************"<<std::endl;
  std::cout<<std::setw(20) <<std::right <<"Number of events inspected: " << nInspected <<std::endl;
  std::cout<<std::setw(20) <<std::right << "Number of events inspected (minus negative gen. weights): " << nInspected_genWeighted << std::endl; 


  h_cutflow_n->SetBinContent(1,nInspected_genWeighted );
  h_cutflow_n->SetBinContent(2, nSingleTrgPassed);
  h_cutflow_n->SetBinContent(3, nGoodMuonPassed);
  h_cutflow_n->SetBinContent(4, nGoodTauPassed);
  h_cutflow_n->SetBinContent(5, nGoodMuTauPassed);
  h_cutflow_n->SetBinContent(6, nPassedThirdLepVeto);
  h_cutflow_n->SetBinContent(7, nPassedBjetVeto);
  h_cutflow_n->SetBinContent(8, nDeltaRPassed);
   
  h_cutflow_n_fr->SetBinContent(1,nInspected_genWeighted );
  h_cutflow_n_fr->SetBinContent(2, nSingleTrgPassed);
  h_cutflow_n_fr->SetBinContent(3, nGoodMuonPassed_fr);
  h_cutflow_n_fr->SetBinContent(4, nGoodTauPassed_fr);
  h_cutflow_n_fr->SetBinContent(5, nGoodMuTauPassed_fr);
  h_cutflow_n_fr->SetBinContent(6, nPassedThirdLepVeto_fr);
  h_cutflow_n_fr->SetBinContent(7, nPassedBjetVeto_fr);
  h_cutflow_n_fr->SetBinContent(8, nDeltaRPassed_fr);
   
  /// dy Z->ll
  h_cutflow_n_dyll->SetBinContent(1,nInspected_genWeighted );
  h_cutflow_n_dyll->SetBinContent(2, nSingleTrgPassed);
  h_cutflow_n_dyll->SetBinContent(3, nGoodMuonPassed_dyll);
  h_cutflow_n_dyll->SetBinContent(4, nGoodTauPassed_dyll);
  h_cutflow_n_dyll->SetBinContent(5, nGoodMuTauPassed_dyll);
  h_cutflow_n_dyll->SetBinContent(6, nPassedThirdLepVeto_dyll);
  h_cutflow_n_dyll->SetBinContent(7, nPassedBjetVeto_dyll);
  h_cutflow_n_dyll->SetBinContent(8, nDeltaRPassed_dyll);
   
  ///
  //h_met_corr->Write();
  
  for(int xi=1; xi<=3; xi++){
    for(int yi=1; yi<=6; yi++){
      vector v = myMap[std::make_pair(xi, yi)];
      auto const a = average(v);
      cout<<" xi = "<<xi<<" yi = "<<yi<<" average = "<< a <<" |"<<endl;
    }
  }
  cout<<"events_with_jetptg50 = "<< events_with_jetptg50 <<endl;
  cout<<" events_total = "<< events_total <<endl;
  // fileName->cd();
  // map<string, TH1F*>::const_iterator iMap1 = myMap1->begin();
  // map<string, TH1F*>::const_iterator jMap1 = myMap1->end();
  // for (; iMap1 != jMap1; ++iMap1)
  //   nplot1(iMap1->first)->Write();
}
void etau_analyzer::printP4values(string when=""){
  if(check_unc==false)
    return;
  printTabSeparated("entry # : ", eventNumber, "before/after = ", when, "\n",
		    "Shift ", unc_shift, "\n",
		    "electron pt", my_eleP4.Pt(),
		    "electron eta", my_eleP4.Eta(), "\n",
		    "tau pt", my_tauP4.Pt(),
		    "tau eta", my_tauP4.Eta(), "\n",
		    "MET", my_metP4.Pt(), "\n"
		    );
  
}
float etau_analyzer::average(std::vector<double> const& v){
  if(v.empty()){
    return 0;
  }
  auto const count = static_cast<double>(v.size());
  return std::accumulate(v.begin(), v.end(), 0.0) / count;
}
