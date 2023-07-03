//////////////////////////////////////////////////////////
// This class has been automatically generated on
// Thu Jun 14 01:21:53 2018 by ROOT version 6.10/09
// from TTree EventTree/Event data (tag V08_00_26_03)
// found on file: /hdfs/store/user/jmadhusu/MonoHiggs_MC2017/DYJetsToLL_M-50_TuneCP5_13TeV-amcatnloFXFX-pythia8/crab_DYJetsToLL_M-50/180603_140815/0000/ggtree_mc_1.root
//////////////////////////////////////////////////////////

#ifndef smhtt_2018_h
#define smhtt_2018_h

#include <TROOT.h>
#include <TChain.h>
#include <TFile.h>
#include <iostream>
#include <fstream>
#include <iomanip>
#include <cmath>
#include <map>
#include <list>
#include <vector>
#include <bitset>
#include <TCanvas.h>
#include <TSystem.h>
#include <TPostScript.h>
#include <TH2.h>
#include <TH1.h>
#include <TH1F.h>
#include <TF1.h>
#include <TMath.h>
#include <TLegend.h>
#include <TProfile.h>
#include <TGraph.h>
#include <TRef.h>
#include <TList.h>
#include <TSystemFile.h>
#include <TSystemDirectory.h>
//#include <TDCacheFile.h>
#include <TLorentzVector.h>
#include"RooWorkspace.h"
#include "RooRealVar.h"
#include "RooFunctor.h"
#include "RecoilCorrector.cc"
// Header file for the classes stored in the TTree if any.
#include "vector"
#include "TString.h"
#include "vector"
#include "vector"
#include "vector"
#include "vector"
#include "vector"
#include "vector"
#include "applyFF_w_lpt.cc"
#include "triggerSF_ditau.cc"
#include "commonFunctions.h"

using namespace std;

class smhtt_2018 {
public :
   TTree          *fChain;   //!pointer to the analyzed TTree or TChain
   Int_t           fCurrent; //!current Tree number in a TChain
   
   //TTree *outTree=new TTree("eventTree","eventTree");
   TFile *fileName;
   TTree *tree;
   TTree *newtree;
   TH1F* h_nEvents;
   
   // Fixed size dimensions of array or collections stored in the TTree if any.
   TFile *f_pileup = new TFile("sf_files/RootFiles/pileup/PU_Central_2018.root");
   TH1F* h_pileup = (TH1F*)f_pileup->Get("pileup");
   
   
   TFile *f_tauidSF = new TFile("sf_files/TauIDSFs/data/TauID_SF_dm_DeepTau2017v2p1VSjet_2018ReReco.root");
  TH1F *h_tauidSF_m = (TH1F*)f_tauidSF->Get("Medium");
  TH1F *h_tauidSF_vvvl = (TH1F*)f_tauidSF->Get("VVVLoose");
  
  TFile *f_tauidSF_pt = new TFile("sf_files/TauIDSFs/data/TauID_SF_pt_DeepTau2017v2p1VSjet_2017ReReco.root");
  TF1 *fn_tauIDSF_m = (TF1*) f_tauidSF->Get("Medium_cent");

  TFile *f_tauesSF = new TFile("sf_files/TauIDSFs/data/TauES_dm_DeepTau2017v2p1VSjet_2018ReReco.root");
  TH1F *h_tauesSF = (TH1F*)f_tauesSF->Get("tes");
  
  TFile *f_tauFakeMuSF = new TFile("sf_files/TauIDSFs/data/TauID_SF_eta_DeepTau2017v2p1VSmu_2018ReReco.root");
  TH1F *h_tauFakeMuSF = (TH1F*)f_tauFakeMuSF->Get("VLoose");
  
  TFile *f_tauFakeEleSF = new TFile("sf_files/TauIDSFs/data/TauID_SF_eta_DeepTau2017v2p1VSe_2018ReReco.root");
  TH1F *h_tauFakeEleSF = (TH1F*)f_tauFakeEleSF->Get("VVLoose");
  
  TFile *f_taufesSF = TFile::Open("sf_files/TauIDSFs/data/TauFES_eta-dm_DeepTau2017v2p1VSe_2018ReReco.root");
  TGraph *h_taufesSF = (TGraph*) f_taufesSF->Get("fes");
  
  TFile *fw = TFile::Open("sf_files/htt_scalefactors_legacy_2018.root");
  RooWorkspace *w = (RooWorkspace*)fw->Get("w");
  TFile *f_HiggsPtReweighting = TFile::Open("sf_files/NNLOPS_reweight.root");
  TGraph *gr_NNLOPSratio_pt_mcatnlo_0jet=(TGraph*) f_HiggsPtReweighting->Get("gr_NNLOPSratio_pt_mcatnlo_0jet");
  TGraph *gr_NNLOPSratio_pt_mcatnlo_1jet=(TGraph*) f_HiggsPtReweighting->Get("gr_NNLOPSratio_pt_mcatnlo_1jet");
  TGraph *gr_NNLOPSratio_pt_mcatnlo_2jet=(TGraph*) f_HiggsPtReweighting->Get("gr_NNLOPSratio_pt_mcatnlo_2jet");
  TGraph *gr_NNLOPSratio_pt_mcatnlo_3jet=(TGraph*) f_HiggsPtReweighting->Get("gr_NNLOPSratio_pt_mcatnlo_3jet");
  // Fixed size dimensions of array or collections stored in the TTree if any.
  RecoilCorrector recoilPFMetCorrector;
  applyFF_w_lpt FF_weights_withlpt;
  triggerSF_ditau TriggerSF_med{"Medium", 0};
  triggerSF_ditau TriggerSF_vvvl{"VVVLoose", 0};
  triggerSF_ditau TriggerSF_med_vbf{"Medium", 1};
  triggerSF_ditau TriggerSF_vvvl_vbf{"VVVLoose", 1};
  
  bool found_Wjet_sample;
  bool found_DYjet_sample;
  bool found_TTbar_sample;
  
  bool is_MC;
  TLorentzVector tau1P4, tau2P4, metP4;
   // Declaration of leaf types
   Float_t         DoubleMediumHPSTau35Pass;
   Float_t         DoubleMediumHPSTau35TightIDPass;
   Float_t         DoubleMediumHPSTau40Pass;
   Float_t         DoubleMediumHPSTau40TightIDPass;
   Float_t         DoubleMediumTau35Pass;
   Float_t         DoubleMediumTau35TightIDPass;
   Float_t         DoubleMediumTau40Pass;
   Float_t         DoubleMediumTau40TightIDPass;
   Float_t         DoubleTightHPSTau35Pass;
   Float_t         DoubleTightHPSTau35TightIDPass;
   Float_t         DoubleTightHPSTau40Pass;
   Float_t         DoubleTightHPSTau40TightIDPass;
   Float_t         DoubleTightTau35Pass;
   Float_t         DoubleTightTau35TightIDPass;
   Float_t         DoubleTightTau40Pass;
   Float_t         DoubleTightTau40TightIDPass;
   Float_t         Ele24LooseHPSTau30Pass;
   Float_t         Ele24LooseHPSTau30TightIDPass;
   Float_t         Ele24LooseTau30Pass;
   Float_t         Ele24LooseTau30TightIDPass;
   Float_t         Ele27WPTightPass;
   Float_t         Ele32WPTightPass;
   Float_t         Ele35WPTightPass;
   Float_t         Ele38WPTightPass;
   Float_t         Ele40WPTightPass;
   Float_t         EmbPtWeight;
   Float_t         Flag_BadChargedCandidateFilter;
   Float_t         Flag_BadPFMuonFilter;
   Float_t         Flag_EcalDeadCellTriggerPrimitiveFilter;
   Float_t         Flag_HBHENoiseFilter;
   Float_t         Flag_HBHENoiseIsoFilter;
   Float_t         Flag_badMuons;
   Float_t         Flag_duplicateMuons;
   Float_t         Flag_ecalBadCalibFilter;
   Float_t         Flag_ecalBadCalibReducedMINIAODFilter;
   Float_t         Flag_eeBadScFilter;
   Float_t         Flag_globalSuperTightHalo2016Filter;
   Float_t         Flag_globalTightHalo2016Filter;
   Float_t         Flag_goodVertices;
   Float_t         GenWeight;
   Float_t         HTTgenfinalstate;
   Float_t         IsoMu24Pass;
   Float_t         IsoMu27Pass;
   Float_t         Mu20LooseHPSTau27Pass;
   Float_t         Mu20LooseHPSTau27TightIDPass;
   Float_t         Mu20LooseTau27Pass;
   Float_t         Mu20LooseTau27TightIDPass;
   Float_t         Mu50Pass;
   Float_t         NUP;
   Float_t         Rivet_VEta;
   Float_t         Rivet_VPt;
   Float_t         Rivet_errorCode;
   Float_t         Rivet_higgsEta;
   Float_t         Rivet_higgsPt;
   Float_t         Rivet_higgsRapidity;
   Float_t         Rivet_j1eta;
   Float_t         Rivet_j1m;
   Float_t         Rivet_j1phi;
   Float_t         Rivet_j1pt;
   Float_t         Rivet_j2eta;
   Float_t         Rivet_j2m;
   Float_t         Rivet_j2phi;
   Float_t         Rivet_j2pt;
   Float_t         Rivet_nJets25;
   Float_t         Rivet_nJets30;
   Float_t         Rivet_p4decay_VEta;
   Float_t         Rivet_p4decay_VPt;
   Float_t         Rivet_prodMode;
   Float_t         Rivet_stage0_cat;
   Float_t         Rivet_stage1_1_cat_pTjet25GeV;
   Float_t         Rivet_stage1_1_cat_pTjet30GeV;
   Float_t         Rivet_stage1_1_fine_cat_pTjet25GeV;
   Float_t         Rivet_stage1_1_fine_cat_pTjet30GeV;
   Float_t         Rivet_stage1_cat_pTjet25GeV;
   Float_t         Rivet_stage1_cat_pTjet30GeV;
   Float_t         VBFDoubleLooseHPSTau20Pass;
   Float_t         VBFDoubleLooseTau20Pass;
   Float_t         VBFDoubleMediumHPSTau20Pass;
   Float_t         VBFDoubleMediumTau20Pass;
   Float_t         VBFDoubleTightHPSTau20Pass;
   Float_t         VBFDoubleTightTau20Pass;
   Float_t         bjetDeepCSVVeto20Loose_2016_DR0p5;
   Float_t         bjetDeepCSVVeto20Loose_2017_DR0p5;
   Float_t         bjetDeepCSVVeto20Loose_2018_DR0p5;
   Float_t         bjetDeepCSVVeto20Medium_2016_DR0;
   Float_t         bjetDeepCSVVeto20Medium_2016_DR0p5;
   Float_t         bjetDeepCSVVeto20Medium_2017_DR0;
   Float_t         bjetDeepCSVVeto20Medium_2017_DR0p5;
   Float_t         bjetDeepCSVVeto20Medium_2018_DR0;
   Float_t         bjetDeepCSVVeto20Medium_2018_DR0p5;
   Float_t         bjetDeepCSVVeto20Tight_2016_DR0p5;
   Float_t         bjetDeepCSVVeto20Tight_2017_DR0p5;
   Float_t         bjetDeepCSVVeto20Tight_2018_DR0p5;
   Float_t         deepcsvb1_btagscore;
   Float_t         deepcsvb1_eta;
   Float_t         deepcsvb1_hadronflavour;
   Float_t         deepcsvb1_m;
   Float_t         deepcsvb1_phi;
   Float_t         deepcsvb1_pt;
   Float_t         deepcsvb1_pt_JERDown;
   Float_t         deepcsvb1_pt_JERUp;
   Float_t         deepcsvb1_pt_JetAbsoluteDown;
   Float_t         deepcsvb1_pt_JetAbsoluteUp;
   Float_t         deepcsvb1_pt_JetAbsoluteyearDown;
   Float_t         deepcsvb1_pt_JetAbsoluteyearUp;
   Float_t         deepcsvb1_pt_JetBBEC1Down;
   Float_t         deepcsvb1_pt_JetBBEC1Up;
   Float_t         deepcsvb1_pt_JetBBEC1yearDown;
   Float_t         deepcsvb1_pt_JetBBEC1yearUp;
   Float_t         deepcsvb1_pt_JetEC2Down;
   Float_t         deepcsvb1_pt_JetEC2Up;
   Float_t         deepcsvb1_pt_JetEC2yearDown;
   Float_t         deepcsvb1_pt_JetEC2yearUp;
   Float_t         deepcsvb1_pt_JetFlavorQCDDown;
   Float_t         deepcsvb1_pt_JetFlavorQCDUp;
   Float_t         deepcsvb1_pt_JetHFDown;
   Float_t         deepcsvb1_pt_JetHFUp;
   Float_t         deepcsvb1_pt_JetHFyearDown;
   Float_t         deepcsvb1_pt_JetHFyearUp;
   Float_t         deepcsvb1_pt_JetRelativeBalDown;
   Float_t         deepcsvb1_pt_JetRelativeBalUp;
   Float_t         deepcsvb1_pt_JetRelativeSampleDown;
   Float_t         deepcsvb1_pt_JetRelativeSampleUp;
   Float_t         deepcsvb1_pt_JetTotalDown;
   Float_t         deepcsvb1_pt_JetTotalUp;
   Float_t         deepcsvb2_btagscore;
   Float_t         deepcsvb2_eta;
   Float_t         deepcsvb2_hadronflavour;
   Float_t         deepcsvb2_m;
   Float_t         deepcsvb2_phi;
   Float_t         deepcsvb2_pt;
   Float_t         deepcsvb2_pt_JERDown;
   Float_t         deepcsvb2_pt_JERUp;
   Float_t         deepcsvb2_pt_JetAbsoluteDown;
   Float_t         deepcsvb2_pt_JetAbsoluteUp;
   Float_t         deepcsvb2_pt_JetAbsoluteyearDown;
   Float_t         deepcsvb2_pt_JetAbsoluteyearUp;
   Float_t         deepcsvb2_pt_JetBBEC1Down;
   Float_t         deepcsvb2_pt_JetBBEC1Up;
   Float_t         deepcsvb2_pt_JetBBEC1yearDown;
   Float_t         deepcsvb2_pt_JetBBEC1yearUp;
   Float_t         deepcsvb2_pt_JetEC2Down;
   Float_t         deepcsvb2_pt_JetEC2Up;
   Float_t         deepcsvb2_pt_JetEC2yearDown;
   Float_t         deepcsvb2_pt_JetEC2yearUp;
   Float_t         deepcsvb2_pt_JetFlavorQCDDown;
   Float_t         deepcsvb2_pt_JetFlavorQCDUp;
   Float_t         deepcsvb2_pt_JetHFDown;
   Float_t         deepcsvb2_pt_JetHFUp;
   Float_t         deepcsvb2_pt_JetHFyearDown;
   Float_t         deepcsvb2_pt_JetHFyearUp;
   Float_t         deepcsvb2_pt_JetRelativeBalDown;
   Float_t         deepcsvb2_pt_JetRelativeBalUp;
   Float_t         deepcsvb2_pt_JetRelativeSampleDown;
   Float_t         deepcsvb2_pt_JetRelativeSampleUp;
   Float_t         deepcsvb2_pt_JetTotalDown;
   Float_t         deepcsvb2_pt_JetTotalUp;
   Float_t         deepflavourb1_btagscore;
   Float_t         deepflavourb1_eta;
   Float_t         deepflavourb1_hadronflavour;
   Float_t         deepflavourb1_m;
   Float_t         deepflavourb1_phi;
   Float_t         deepflavourb1_pt;
   Float_t         deepflavourb2_btagscore;
   Float_t         deepflavourb2_eta;
   Float_t         deepflavourb2_hadronflavour;
   Float_t         deepflavourb2_m;
   Float_t         deepflavourb2_phi;
   Float_t         deepflavourb2_pt;
   Float_t         dielectronVeto;
   Float_t         dimuonVeto;
   Float_t         doubleE_23_12DZPass;
   Float_t         doubleE_23_12Pass;
   Float_t         doubleMuDZPass;
   Float_t         doubleMuDZminMass3p8Pass;
   Float_t         doubleMuDZminMass8Pass;
   Float_t         doubleMuPass;
   Float_t         doubleMuTkMu17TkMu8DZPass;
   Float_t         doubleMuTkMu17TkMu8Pass;
   Float_t         doubleMuTkMu8DZPass;
   Float_t         doubleMuTkMu8Pass;
   Float_t         doubleTau35Pass;
   Float_t         doubleTauCmbIso35RegPass;
   Float_t         dressedElectron_pt;
   Float_t         dressedMuon_pt;
   Float_t         eVetoZTTp001dxyzR0;
   ULong64_t       evt;
   Float_t         genEta;
   Float_t         genHTT;
   Float_t         genM;
   Float_t         genMass;
   Float_t         genMetPhi;
   Float_t         genMetPt;
   Float_t         genPhi;
   Float_t         genpT;
   Float_t         genpX;
   Float_t         genpY;
   Float_t         gentau1_eta;
   Float_t         gentau1_pt;
   Float_t         gentau2_eta;
   Float_t         gentau2_pt;
   Int_t           isdata;
   Int_t           isembed;
   Float_t         j1eta;
   Float_t         j1phi;
   Float_t         j1pt;
   Float_t         j1pt_JERDown;
   Float_t         j1pt_JERUp;
   Float_t         j1pt_JetAbsoluteDown;
   Float_t         j1pt_JetAbsoluteUp;
   Float_t         j1pt_JetAbsoluteyearDown;
   Float_t         j1pt_JetAbsoluteyearUp;
   Float_t         j1pt_JetBBEC1Down;
   Float_t         j1pt_JetBBEC1Up;
   Float_t         j1pt_JetBBEC1yearDown;
   Float_t         j1pt_JetBBEC1yearUp;
   Float_t         j1pt_JetEC2Down;
   Float_t         j1pt_JetEC2Up;
   Float_t         j1pt_JetEC2yearDown;
   Float_t         j1pt_JetEC2yearUp;
   Float_t         j1pt_JetFlavorQCDDown;
   Float_t         j1pt_JetFlavorQCDUp;
   Float_t         j1pt_JetHFDown;
   Float_t         j1pt_JetHFUp;
   Float_t         j1pt_JetHFyearDown;
   Float_t         j1pt_JetHFyearUp;
   Float_t         j1pt_JetRelativeBalDown;
   Float_t         j1pt_JetRelativeBalUp;
   Float_t         j1pt_JetRelativeSampleDown;
   Float_t         j1pt_JetRelativeSampleUp;
   Float_t         j2eta;
   Float_t         j2phi;
   Float_t         j2pt;
   Float_t         j2pt_JERDown;
   Float_t         j2pt_JERUp;
   Float_t         j2pt_JetAbsoluteDown;
   Float_t         j2pt_JetAbsoluteUp;
   Float_t         j2pt_JetAbsoluteyearDown;
   Float_t         j2pt_JetAbsoluteyearUp;
   Float_t         j2pt_JetBBEC1Down;
   Float_t         j2pt_JetBBEC1Up;
   Float_t         j2pt_JetBBEC1yearDown;
   Float_t         j2pt_JetBBEC1yearUp;
   Float_t         j2pt_JetEC2Down;
   Float_t         j2pt_JetEC2Up;
   Float_t         j2pt_JetEC2yearDown;
   Float_t         j2pt_JetEC2yearUp;
   Float_t         j2pt_JetFlavorQCDDown;
   Float_t         j2pt_JetFlavorQCDUp;
   Float_t         j2pt_JetHFDown;
   Float_t         j2pt_JetHFUp;
   Float_t         j2pt_JetHFyearDown;
   Float_t         j2pt_JetHFyearUp;
   Float_t         j2pt_JetRelativeBalDown;
   Float_t         j2pt_JetRelativeBalUp;
   Float_t         j2pt_JetRelativeSampleDown;
   Float_t         j2pt_JetRelativeSampleUp;
   Float_t         jetVeto20;
   Float_t         jetVeto30;
   Float_t         jetVeto30_JERDown;
   Float_t         jetVeto30_JERUp;
   Float_t         jetVeto30_JetAbsoluteDown;
   Float_t         jetVeto30_JetAbsoluteUp;
   Float_t         jetVeto30_JetAbsoluteyearDown;
   Float_t         jetVeto30_JetAbsoluteyearUp;
   Float_t         jetVeto30_JetBBEC1Down;
   Float_t         jetVeto30_JetBBEC1Up;
   Float_t         jetVeto30_JetBBEC1yearDown;
   Float_t         jetVeto30_JetBBEC1yearUp;
   Float_t         jetVeto30_JetEC2Down;
   Float_t         jetVeto30_JetEC2Up;
   Float_t         jetVeto30_JetEC2yearDown;
   Float_t         jetVeto30_JetEC2yearUp;
   Float_t         jetVeto30_JetEnDown;
   Float_t         jetVeto30_JetEnUp;
   Float_t         jetVeto30_JetFlavorQCDDown;
   Float_t         jetVeto30_JetFlavorQCDUp;
   Float_t         jetVeto30_JetHFDown;
   Float_t         jetVeto30_JetHFUp;
   Float_t         jetVeto30_JetHFyearDown;
   Float_t         jetVeto30_JetHFyearUp;
   Float_t         jetVeto30_JetRelativeBalDown;
   Float_t         jetVeto30_JetRelativeBalUp;
   Float_t         jetVeto30_JetRelativeSampleDown;
   Float_t         jetVeto30_JetRelativeSampleUp;
   Float_t         jetVeto30_JetTotalDown;
   Float_t         jetVeto30_JetTotalUp;
   Int_t           lumi;
   Float_t         metcov00;
   Float_t         metcov01;
   Float_t         metcov10;
   Float_t         metcov11;
   Float_t         mu12e23DZPass;
   Float_t         mu12e23Pass;
   Float_t         mu23e12DZPass;
   Float_t         mu23e12Pass;
   Float_t         mu8e23DZPass;
   Float_t         mu8e23Pass;
   Float_t         muVetoZTTp001dxyzR0;
   Float_t         nTruePU;
   Float_t         npNLO;
   Float_t         numGenJets;
   Float_t         nvtx;
   Float_t         prefiring_weight;
   Float_t         prefiring_weight_down;
   Float_t         prefiring_weight_up;
   Float_t         puppiMetEt;
   Float_t         puppiMetPhi;
   Float_t         puppiMet_shiftedPhi_JetAbsoluteDown;
   Float_t         puppiMet_shiftedPhi_JetAbsoluteUp;
   Float_t         puppiMet_shiftedPhi_JetAbsoluteyearDown;
   Float_t         puppiMet_shiftedPhi_JetAbsoluteyearUp;
   Float_t         puppiMet_shiftedPhi_JetBBEC1Down;
   Float_t         puppiMet_shiftedPhi_JetBBEC1Up;
   Float_t         puppiMet_shiftedPhi_JetBBEC1yearDown;
   Float_t         puppiMet_shiftedPhi_JetBBEC1yearUp;
   Float_t         puppiMet_shiftedPhi_JetEC2Down;
   Float_t         puppiMet_shiftedPhi_JetEC2Up;
   Float_t         puppiMet_shiftedPhi_JetEC2yearDown;
   Float_t         puppiMet_shiftedPhi_JetEC2yearUp;
   Float_t         puppiMet_shiftedPhi_JetEnDown;
   Float_t         puppiMet_shiftedPhi_JetEnUp;
   Float_t         puppiMet_shiftedPhi_JetFlavorQCDDown;
   Float_t         puppiMet_shiftedPhi_JetFlavorQCDUp;
   Float_t         puppiMet_shiftedPhi_JetHFDown;
   Float_t         puppiMet_shiftedPhi_JetHFUp;
   Float_t         puppiMet_shiftedPhi_JetHFyearDown;
   Float_t         puppiMet_shiftedPhi_JetHFyearUp;
   Float_t         puppiMet_shiftedPhi_JetRelativeBalDown;
   Float_t         puppiMet_shiftedPhi_JetRelativeBalUp;
   Float_t         puppiMet_shiftedPhi_JetRelativeSampleDown;
   Float_t         puppiMet_shiftedPhi_JetRelativeSampleUp;
   Float_t         puppiMet_shiftedPhi_JetTotalDown;
   Float_t         puppiMet_shiftedPhi_JetTotalUp;
   Float_t         puppiMet_shiftedPhi_UnclusteredEnDown;
   Float_t         puppiMet_shiftedPhi_UnclusteredEnUp;
   Float_t         puppiMet_shiftedPt_JetAbsoluteDown;
   Float_t         puppiMet_shiftedPt_JetAbsoluteUp;
   Float_t         puppiMet_shiftedPt_JetAbsoluteyearDown;
   Float_t         puppiMet_shiftedPt_JetAbsoluteyearUp;
   Float_t         puppiMet_shiftedPt_JetBBEC1Down;
   Float_t         puppiMet_shiftedPt_JetBBEC1Up;
   Float_t         puppiMet_shiftedPt_JetBBEC1yearDown;
   Float_t         puppiMet_shiftedPt_JetBBEC1yearUp;
   Float_t         puppiMet_shiftedPt_JetEC2Down;
   Float_t         puppiMet_shiftedPt_JetEC2Up;
   Float_t         puppiMet_shiftedPt_JetEC2yearDown;
   Float_t         puppiMet_shiftedPt_JetEC2yearUp;
   Float_t         puppiMet_shiftedPt_JetEnDown;
   Float_t         puppiMet_shiftedPt_JetEnUp;
   Float_t         puppiMet_shiftedPt_JetFlavorQCDDown;
   Float_t         puppiMet_shiftedPt_JetFlavorQCDUp;
   Float_t         puppiMet_shiftedPt_JetHFDown;
   Float_t         puppiMet_shiftedPt_JetHFUp;
   Float_t         puppiMet_shiftedPt_JetHFyearDown;
   Float_t         puppiMet_shiftedPt_JetHFyearUp;
   Float_t         puppiMet_shiftedPt_JetRelativeBalDown;
   Float_t         puppiMet_shiftedPt_JetRelativeBalUp;
   Float_t         puppiMet_shiftedPt_JetRelativeSampleDown;
   Float_t         puppiMet_shiftedPt_JetRelativeSampleUp;
   Float_t         puppiMet_shiftedPt_JetTotalDown;
   Float_t         puppiMet_shiftedPt_JetTotalUp;
   Float_t         puppiMet_shiftedPt_UnclusteredEnDown;
   Float_t         puppiMet_shiftedPt_UnclusteredEnUp;
   Float_t         puppimetcov00;
   Float_t         puppimetcov01;
   Float_t         puppimetcov10;
   Float_t         puppimetcov11;
   Float_t         raw_pfMetEt;
   Float_t         raw_pfMetPhi;
   Float_t         rho;
   Int_t           run;
   Float_t         singleE25eta2p1TightPass;
   Float_t         singleIsoMu22Pass;
   Float_t         singleIsoMu22eta2p1Pass;
   Float_t         singleIsoTkMu22Pass;
   Float_t         singleIsoTkMu22eta2p1Pass;
   Float_t         singleMu19eta2p1LooseTau20Pass;
   Float_t         singleMu19eta2p1LooseTau20singleL1Pass;
   Float_t         t1AgainstMuonLoose3;
   Float_t         t1AgainstMuonTight3;
   Float_t         t1ByCombinedIsolationDeltaBetaCorrRaw3Hits;
   Float_t         t1ByLooseCombinedIsolationDeltaBetaCorr3Hits;
   Float_t         t1ByMediumCombinedIsolationDeltaBetaCorr3Hits;
   Float_t         t1ByPhotonPtSumOutsideSignalCone;
   Float_t         t1ByTightCombinedIsolationDeltaBetaCorr3Hits;
   Float_t         t1Charge;
   Float_t         t1ChargedIsoPtSum;
   Float_t         t1ChargedIsoPtSumdR03;
   Float_t         t1DecayMode;
   Float_t         t1DecayModeFinding;
   Float_t         t1DecayModeFindingNewDMs;
   Float_t         t1DeepTau2017v2p1VSeraw;
   Float_t         t1DeepTau2017v2p1VSjetraw;
   Float_t         t1DeepTau2017v2p1VSmuraw;
   Float_t         t1Eta;
   Float_t         t1FootprintCorrection;
   Float_t         t1FootprintCorrectiondR03;
   Float_t         t1GenCharge;
   Float_t         t1GenDecayMode;
   Float_t         t1GenEnergy;
   Float_t         t1GenEta;
   Float_t         t1GenJetEta;
   Float_t         t1GenJetPt;
   Float_t         t1GenPdgId;
   Float_t         t1GenPhi;
   Float_t         t1GenPt;
   Float_t         t1GenStatus;
   Float_t         t1L1IsoTauMatch;
   Float_t         t1L1IsoTauPt;
   Float_t         t1LeadTrackPt;
   Float_t         t1LooseDeepTau2017v2p1VSe;
   Float_t         t1LooseDeepTau2017v2p1VSjet;
   Float_t         t1LooseDeepTau2017v2p1VSmu;
   Float_t         t1Mass;
   Float_t         t1MatchEmbeddedFilterEle24Tau30;
   Float_t         t1MatchEmbeddedFilterMu19Tau20;
   Float_t         t1MatchEmbeddedFilterMu20HPSTau27;
   Float_t         t1MatchEmbeddedFilterMu20Tau27;
   Float_t         t1MatchEmbeddedFilterTauTau;
   Float_t         t1MatchEmbeddedFilterTauTau2016;
   Float_t         t1MatchesDoubleMediumCombinedIsoTau35Path;
   Float_t         t1MatchesDoubleMediumHPSTau35Filter;
   Float_t         t1MatchesDoubleMediumHPSTau35Path;
   Float_t         t1MatchesDoubleMediumHPSTau40Filter;
   Float_t         t1MatchesDoubleMediumHPSTau40Path;
   Float_t         t1MatchesDoubleMediumIsoTau35Path;
   Float_t         t1MatchesDoubleMediumTau35Filter;
   Float_t         t1MatchesDoubleMediumTau35Path;
   Float_t         t1MatchesDoubleMediumTau40Filter;
   Float_t         t1MatchesDoubleMediumTau40Path;
   Float_t         t1MatchesDoubleTau35Filter;
   Float_t         t1MatchesDoubleTau35Path;
   Float_t         t1MatchesDoubleTauCmbIso35RegFilter;
   Float_t         t1MatchesDoubleTauCmbIso35RegPath;
   Float_t         t1MatchesDoubleTightHPSTau35Filter;
   Float_t         t1MatchesDoubleTightHPSTau35Path;
   Float_t         t1MatchesDoubleTightHPSTau40Filter;
   Float_t         t1MatchesDoubleTightHPSTau40Path;
   Float_t         t1MatchesDoubleTightTau35Filter;
   Float_t         t1MatchesDoubleTightTau35Path;
   Float_t         t1MatchesDoubleTightTau40Filter;
   Float_t         t1MatchesDoubleTightTau40Path;
   Float_t         t1MatchesEle24HPSTau30Filter;
   Float_t         t1MatchesEle24HPSTau30Path;
   Float_t         t1MatchesEle24Tau30Filter;
   Float_t         t1MatchesEle24Tau30Path;
   Float_t         t1MatchesIsoMu19Tau20Filter;
   Float_t         t1MatchesIsoMu19Tau20Path;
   Float_t         t1MatchesIsoMu19Tau20SingleL1Filter;
   Float_t         t1MatchesIsoMu19Tau20SingleL1Path;
   Float_t         t1MatchesIsoMu20HPSTau27Filter;
   Float_t         t1MatchesIsoMu20HPSTau27Path;
   Float_t         t1MatchesIsoMu20Tau27Filter;
   Float_t         t1MatchesIsoMu20Tau27Path;
   Float_t         t1MediumDeepTau2017v2p1VSe;
   Float_t         t1MediumDeepTau2017v2p1VSjet;
   Float_t         t1MediumDeepTau2017v2p1VSmu;
   Float_t         t1NChrgHadrIsolationCands;
   Float_t         t1NChrgHadrSignalCands;
   Float_t         t1NGammaSignalCands;
   Float_t         t1NNeutralHadrSignalCands;
   Float_t         t1NSignalCands;
   Float_t         t1NeutralIsoPtSum;
   Float_t         t1NeutralIsoPtSumWeight;
   Float_t         t1NeutralIsoPtSumWeightdR03;
   Float_t         t1NeutralIsoPtSumdR03;
   Float_t         t1PVDXY;
   Float_t         t1PVDZ;
   Float_t         t1Phi;
   Float_t         t1PhotonPtSumOutsideSignalCone;
   Float_t         t1PhotonPtSumOutsideSignalConedR03;
   Float_t         t1Pt;
   Float_t         t1PuCorrPtSum;
   Float_t         t1TightDeepTau2017v2p1VSe;
   Float_t         t1TightDeepTau2017v2p1VSjet;
   Float_t         t1TightDeepTau2017v2p1VSmu;
   Float_t         t1VLooseDeepTau2017v2p1VSe;
   Float_t         t1VLooseDeepTau2017v2p1VSjet;
   Float_t         t1VLooseDeepTau2017v2p1VSmu;
   Float_t         t1VTightDeepTau2017v2p1VSe;
   Float_t         t1VTightDeepTau2017v2p1VSjet;
   Float_t         t1VTightDeepTau2017v2p1VSmu;
   Float_t         t1VVLooseDeepTau2017v2p1VSe;
   Float_t         t1VVLooseDeepTau2017v2p1VSjet;
   Float_t         t1VVTightDeepTau2017v2p1VSe;
   Float_t         t1VVTightDeepTau2017v2p1VSjet;
   Float_t         t1VVTightDeepTau2017v2p1VSmu;
   Float_t         t1VVVLooseDeepTau2017v2p1VSe;
   Float_t         t1VVVLooseDeepTau2017v2p1VSjet;
   Float_t         t1ZTTGenEta;
   Float_t         t1ZTTGenMatching;
   Float_t         t1ZTTGenPhi;
   Float_t         t1ZTTGenPt;
   Float_t         t1_t2_DR;
   Float_t         t1_t2_Mass;
   Float_t         t2AgainstMuonLoose3;
   Float_t         t2AgainstMuonTight3;
   Float_t         t2ByCombinedIsolationDeltaBetaCorrRaw3Hits;
   Float_t         t2ByLooseCombinedIsolationDeltaBetaCorr3Hits;
   Float_t         t2ByMediumCombinedIsolationDeltaBetaCorr3Hits;
   Float_t         t2ByPhotonPtSumOutsideSignalCone;
   Float_t         t2ByTightCombinedIsolationDeltaBetaCorr3Hits;
   Float_t         t2Charge;
   Float_t         t2ChargedIsoPtSum;
   Float_t         t2ChargedIsoPtSumdR03;
   Float_t         t2DecayMode;
   Float_t         t2DecayModeFinding;
   Float_t         t2DecayModeFindingNewDMs;
   Float_t         t2DeepTau2017v2p1VSeraw;
   Float_t         t2DeepTau2017v2p1VSjetraw;
   Float_t         t2DeepTau2017v2p1VSmuraw;
   Float_t         t2Eta;
   Float_t         t2FootprintCorrection;
   Float_t         t2FootprintCorrectiondR03;
   Float_t         t2GenCharge;
   Float_t         t2GenDecayMode;
   Float_t         t2GenEnergy;
   Float_t         t2GenEta;
   Float_t         t2GenJetEta;
   Float_t         t2GenJetPt;
   Float_t         t2GenPdgId;
   Float_t         t2GenPhi;
   Float_t         t2GenPt;
   Float_t         t2GenStatus;
   Float_t         t2L1IsoTauMatch;
   Float_t         t2L1IsoTauPt;
   Float_t         t2LeadTrackPt;
   Float_t         t2LooseDeepTau2017v2p1VSe;
   Float_t         t2LooseDeepTau2017v2p1VSjet;
   Float_t         t2LooseDeepTau2017v2p1VSmu;
   Float_t         t2Mass;
   Float_t         t2MatchEmbeddedFilterEle24Tau30;
   Float_t         t2MatchEmbeddedFilterMu19Tau20;
   Float_t         t2MatchEmbeddedFilterMu20HPSTau27;
   Float_t         t2MatchEmbeddedFilterMu20Tau27;
   Float_t         t2MatchEmbeddedFilterTauTau;
   Float_t         t2MatchEmbeddedFilterTauTau2016;
   Float_t         t2MatchesDoubleMediumCombinedIsoTau35Path;
   Float_t         t2MatchesDoubleMediumHPSTau35Filter;
   Float_t         t2MatchesDoubleMediumHPSTau35Path;
   Float_t         t2MatchesDoubleMediumHPSTau40Filter;
   Float_t         t2MatchesDoubleMediumHPSTau40Path;
   Float_t         t2MatchesDoubleMediumIsoTau35Path;
   Float_t         t2MatchesDoubleMediumTau35Filter;
   Float_t         t2MatchesDoubleMediumTau35Path;
   Float_t         t2MatchesDoubleMediumTau40Filter;
   Float_t         t2MatchesDoubleMediumTau40Path;
   Float_t         t2MatchesDoubleTau35Filter;
   Float_t         t2MatchesDoubleTau35Path;
   Float_t         t2MatchesDoubleTauCmbIso35RegFilter;
   Float_t         t2MatchesDoubleTauCmbIso35RegPath;
   Float_t         t2MatchesDoubleTightHPSTau35Filter;
   Float_t         t2MatchesDoubleTightHPSTau35Path;
   Float_t         t2MatchesDoubleTightHPSTau40Filter;
   Float_t         t2MatchesDoubleTightHPSTau40Path;
   Float_t         t2MatchesDoubleTightTau35Filter;
   Float_t         t2MatchesDoubleTightTau35Path;
   Float_t         t2MatchesDoubleTightTau40Filter;
   Float_t         t2MatchesDoubleTightTau40Path;
   Float_t         t2MatchesEle24HPSTau30Filter;
   Float_t         t2MatchesEle24HPSTau30Path;
   Float_t         t2MatchesEle24Tau30Filter;
   Float_t         t2MatchesEle24Tau30Path;
   Float_t         t2MatchesIsoMu19Tau20Filter;
   Float_t         t2MatchesIsoMu19Tau20Path;
   Float_t         t2MatchesIsoMu19Tau20SingleL1Filter;
   Float_t         t2MatchesIsoMu19Tau20SingleL1Path;
   Float_t         t2MatchesIsoMu20HPSTau27Filter;
   Float_t         t2MatchesIsoMu20HPSTau27Path;
   Float_t         t2MatchesIsoMu20Tau27Filter;
   Float_t         t2MatchesIsoMu20Tau27Path;
   Float_t         t2MediumDeepTau2017v2p1VSe;
   Float_t         t2MediumDeepTau2017v2p1VSjet;
   Float_t         t2MediumDeepTau2017v2p1VSmu;
   Float_t         t2NChrgHadrIsolationCands;
   Float_t         t2NChrgHadrSignalCands;
   Float_t         t2NGammaSignalCands;
   Float_t         t2NNeutralHadrSignalCands;
   Float_t         t2NSignalCands;
   Float_t         t2NeutralIsoPtSum;
   Float_t         t2NeutralIsoPtSumWeight;
   Float_t         t2NeutralIsoPtSumWeightdR03;
   Float_t         t2NeutralIsoPtSumdR03;
   Float_t         t2PVDXY;
   Float_t         t2PVDZ;
   Float_t         t2Phi;
   Float_t         t2PhotonPtSumOutsideSignalCone;
   Float_t         t2PhotonPtSumOutsideSignalConedR03;
   Float_t         t2Pt;
   Float_t         t2PuCorrPtSum;
   Float_t         t2TightDeepTau2017v2p1VSe;
   Float_t         t2TightDeepTau2017v2p1VSjet;
   Float_t         t2TightDeepTau2017v2p1VSmu;
   Float_t         t2VLooseDeepTau2017v2p1VSe;
   Float_t         t2VLooseDeepTau2017v2p1VSjet;
   Float_t         t2VLooseDeepTau2017v2p1VSmu;
   Float_t         t2VTightDeepTau2017v2p1VSe;
   Float_t         t2VTightDeepTau2017v2p1VSjet;
   Float_t         t2VTightDeepTau2017v2p1VSmu;
   Float_t         t2VVLooseDeepTau2017v2p1VSe;
   Float_t         t2VVLooseDeepTau2017v2p1VSjet;
   Float_t         t2VVTightDeepTau2017v2p1VSe;
   Float_t         t2VVTightDeepTau2017v2p1VSjet;
   Float_t         t2VVTightDeepTau2017v2p1VSmu;
   Float_t         t2VVVLooseDeepTau2017v2p1VSe;
   Float_t         t2VVVLooseDeepTau2017v2p1VSjet;
   Float_t         t2ZTTGenEta;
   Float_t         t2ZTTGenMatching;
   Float_t         t2ZTTGenPhi;
   Float_t         t2ZTTGenPt;
   Float_t         topQuarkPt1;
   Float_t         topQuarkPt2;
   Float_t         tripleMu12_10_5Pass;
   Float_t         type1_pfMetEt;
   Float_t         type1_pfMetPhi;
   Float_t         type1_pfMet_shiftedPhi_JERDown;
   Float_t         type1_pfMet_shiftedPhi_JERUp;
   Float_t         type1_pfMet_shiftedPhi_JetAbsoluteDown;
   Float_t         type1_pfMet_shiftedPhi_JetAbsoluteUp;
   Float_t         type1_pfMet_shiftedPhi_JetAbsoluteyearDown;
   Float_t         type1_pfMet_shiftedPhi_JetAbsoluteyearUp;
   Float_t         type1_pfMet_shiftedPhi_JetBBEC1Down;
   Float_t         type1_pfMet_shiftedPhi_JetBBEC1Up;
   Float_t         type1_pfMet_shiftedPhi_JetBBEC1yearDown;
   Float_t         type1_pfMet_shiftedPhi_JetBBEC1yearUp;
   Float_t         type1_pfMet_shiftedPhi_JetEC2Down;
   Float_t         type1_pfMet_shiftedPhi_JetEC2Up;
   Float_t         type1_pfMet_shiftedPhi_JetEC2yearDown;
   Float_t         type1_pfMet_shiftedPhi_JetEC2yearUp;
   Float_t         type1_pfMet_shiftedPhi_JetEnDown;
   Float_t         type1_pfMet_shiftedPhi_JetEnUp;
   Float_t         type1_pfMet_shiftedPhi_JetFlavorQCDDown;
   Float_t         type1_pfMet_shiftedPhi_JetFlavorQCDUp;
   Float_t         type1_pfMet_shiftedPhi_JetHFDown;
   Float_t         type1_pfMet_shiftedPhi_JetHFUp;
   Float_t         type1_pfMet_shiftedPhi_JetHFyearDown;
   Float_t         type1_pfMet_shiftedPhi_JetHFyearUp;
   Float_t         type1_pfMet_shiftedPhi_JetRelativeBalDown;
   Float_t         type1_pfMet_shiftedPhi_JetRelativeBalUp;
   Float_t         type1_pfMet_shiftedPhi_JetRelativeSampleDown;
   Float_t         type1_pfMet_shiftedPhi_JetRelativeSampleUp;
   Float_t         type1_pfMet_shiftedPhi_JetResDown;
   Float_t         type1_pfMet_shiftedPhi_JetResUp;
   Float_t         type1_pfMet_shiftedPhi_JetTotalDown;
   Float_t         type1_pfMet_shiftedPhi_JetTotalUp;
   Float_t         type1_pfMet_shiftedPhi_UnclusteredEnDown;
   Float_t         type1_pfMet_shiftedPhi_UnclusteredEnUp;
   Float_t         type1_pfMet_shiftedPt_JERDown;
   Float_t         type1_pfMet_shiftedPt_JERUp;
   Float_t         type1_pfMet_shiftedPt_JetAbsoluteDown;
   Float_t         type1_pfMet_shiftedPt_JetAbsoluteUp;
   Float_t         type1_pfMet_shiftedPt_JetAbsoluteyearDown;
   Float_t         type1_pfMet_shiftedPt_JetAbsoluteyearUp;
   Float_t         type1_pfMet_shiftedPt_JetBBEC1Down;
   Float_t         type1_pfMet_shiftedPt_JetBBEC1Up;
   Float_t         type1_pfMet_shiftedPt_JetBBEC1yearDown;
   Float_t         type1_pfMet_shiftedPt_JetBBEC1yearUp;
   Float_t         type1_pfMet_shiftedPt_JetEC2Down;
   Float_t         type1_pfMet_shiftedPt_JetEC2Up;
   Float_t         type1_pfMet_shiftedPt_JetEC2yearDown;
   Float_t         type1_pfMet_shiftedPt_JetEC2yearUp;
   Float_t         type1_pfMet_shiftedPt_JetEnDown;
   Float_t         type1_pfMet_shiftedPt_JetEnUp;
   Float_t         type1_pfMet_shiftedPt_JetFlavorQCDDown;
   Float_t         type1_pfMet_shiftedPt_JetFlavorQCDUp;
   Float_t         type1_pfMet_shiftedPt_JetHFDown;
   Float_t         type1_pfMet_shiftedPt_JetHFUp;
   Float_t         type1_pfMet_shiftedPt_JetHFyearDown;
   Float_t         type1_pfMet_shiftedPt_JetHFyearUp;
   Float_t         type1_pfMet_shiftedPt_JetRelativeBalDown;
   Float_t         type1_pfMet_shiftedPt_JetRelativeBalUp;
   Float_t         type1_pfMet_shiftedPt_JetRelativeSampleDown;
   Float_t         type1_pfMet_shiftedPt_JetRelativeSampleUp;
   Float_t         type1_pfMet_shiftedPt_JetResDown;
   Float_t         type1_pfMet_shiftedPt_JetResUp;
   Float_t         type1_pfMet_shiftedPt_JetTotalDown;
   Float_t         type1_pfMet_shiftedPt_JetTotalUp;
   Float_t         type1_pfMet_shiftedPt_UnclusteredEnDown;
   Float_t         type1_pfMet_shiftedPt_UnclusteredEnUp;
   Float_t         vbfMass;
   Float_t         vbfMass_JERDown;
   Float_t         vbfMass_JERUp;
   Float_t         vbfMass_JetAbsoluteDown;
   Float_t         vbfMass_JetAbsoluteUp;
   Float_t         vbfMass_JetAbsoluteyearDown;
   Float_t         vbfMass_JetAbsoluteyearUp;
   Float_t         vbfMass_JetBBEC1Down;
   Float_t         vbfMass_JetBBEC1Up;
   Float_t         vbfMass_JetBBEC1yearDown;
   Float_t         vbfMass_JetBBEC1yearUp;
   Float_t         vbfMass_JetEC2Down;
   Float_t         vbfMass_JetEC2Up;
   Float_t         vbfMass_JetEC2yearDown;
   Float_t         vbfMass_JetEC2yearUp;
   Float_t         vbfMass_JetFlavorQCDDown;
   Float_t         vbfMass_JetFlavorQCDUp;
   Float_t         vbfMass_JetHFDown;
   Float_t         vbfMass_JetHFUp;
   Float_t         vbfMass_JetHFyearDown;
   Float_t         vbfMass_JetHFyearUp;
   Float_t         vbfMass_JetRelativeBalDown;
   Float_t         vbfMass_JetRelativeBalUp;
   Float_t         vbfMass_JetRelativeSampleDown;
   Float_t         vbfMass_JetRelativeSampleUp;
   Float_t         vbfMass_JetTotalDown;
   Float_t         vbfMass_JetTotalUp;
   Float_t         vispX;
   Float_t         vispY;
   Int_t           idx;

   // List of branches
   TBranch        *b_DoubleMediumHPSTau35Pass;   //!
   TBranch        *b_DoubleMediumHPSTau35TightIDPass;   //!
   TBranch        *b_DoubleMediumHPSTau40Pass;   //!
   TBranch        *b_DoubleMediumHPSTau40TightIDPass;   //!
   TBranch        *b_DoubleMediumTau35Pass;   //!
   TBranch        *b_DoubleMediumTau35TightIDPass;   //!
   TBranch        *b_DoubleMediumTau40Pass;   //!
   TBranch        *b_DoubleMediumTau40TightIDPass;   //!
   TBranch        *b_DoubleTightHPSTau35Pass;   //!
   TBranch        *b_DoubleTightHPSTau35TightIDPass;   //!
   TBranch        *b_DoubleTightHPSTau40Pass;   //!
   TBranch        *b_DoubleTightHPSTau40TightIDPass;   //!
   TBranch        *b_DoubleTightTau35Pass;   //!
   TBranch        *b_DoubleTightTau35TightIDPass;   //!
   TBranch        *b_DoubleTightTau40Pass;   //!
   TBranch        *b_DoubleTightTau40TightIDPass;   //!
   TBranch        *b_Ele24LooseHPSTau30Pass;   //!
   TBranch        *b_Ele24LooseHPSTau30TightIDPass;   //!
   TBranch        *b_Ele24LooseTau30Pass;   //!
   TBranch        *b_Ele24LooseTau30TightIDPass;   //!
   TBranch        *b_Ele27WPTightPass;   //!
   TBranch        *b_Ele32WPTightPass;   //!
   TBranch        *b_Ele35WPTightPass;   //!
   TBranch        *b_Ele38WPTightPass;   //!
   TBranch        *b_Ele40WPTightPass;   //!
   TBranch        *b_EmbPtWeight;   //!
   TBranch        *b_Flag_BadChargedCandidateFilter;   //!
   TBranch        *b_Flag_BadPFMuonFilter;   //!
   TBranch        *b_Flag_EcalDeadCellTriggerPrimitiveFilter;   //!
   TBranch        *b_Flag_HBHENoiseFilter;   //!
   TBranch        *b_Flag_HBHENoiseIsoFilter;   //!
   TBranch        *b_Flag_badMuons;   //!
   TBranch        *b_Flag_duplicateMuons;   //!
   TBranch        *b_Flag_ecalBadCalibFilter;   //!
   TBranch        *b_Flag_ecalBadCalibReducedMINIAODFilter;   //!
   TBranch        *b_Flag_eeBadScFilter;   //!
   TBranch        *b_Flag_globalSuperTightHalo2016Filter;   //!
   TBranch        *b_Flag_globalTightHalo2016Filter;   //!
   TBranch        *b_Flag_goodVertices;   //!
   TBranch        *b_GenWeight;   //!
   TBranch        *b_HTTgenfinalstate;   //!
   TBranch        *b_IsoMu24Pass;   //!
   TBranch        *b_IsoMu27Pass;   //!
   TBranch        *b_Mu20LooseHPSTau27Pass;   //!
   TBranch        *b_Mu20LooseHPSTau27TightIDPass;   //!
   TBranch        *b_Mu20LooseTau27Pass;   //!
   TBranch        *b_Mu20LooseTau27TightIDPass;   //!
   TBranch        *b_Mu50Pass;   //!
   TBranch        *b_NUP;   //!
   TBranch        *b_Rivet_VEta;   //!
   TBranch        *b_Rivet_VPt;   //!
   TBranch        *b_Rivet_errorCode;   //!
   TBranch        *b_Rivet_higgsEta;   //!
   TBranch        *b_Rivet_higgsPt;   //!
   TBranch        *b_Rivet_higgsRapidity;   //!
   TBranch        *b_Rivet_j1eta;   //!
   TBranch        *b_Rivet_j1m;   //!
   TBranch        *b_Rivet_j1phi;   //!
   TBranch        *b_Rivet_j1pt;   //!
   TBranch        *b_Rivet_j2eta;   //!
   TBranch        *b_Rivet_j2m;   //!
   TBranch        *b_Rivet_j2phi;   //!
   TBranch        *b_Rivet_j2pt;   //!
   TBranch        *b_Rivet_nJets25;   //!
   TBranch        *b_Rivet_nJets30;   //!
   TBranch        *b_Rivet_p4decay_VEta;   //!
   TBranch        *b_Rivet_p4decay_VPt;   //!
   TBranch        *b_Rivet_prodMode;   //!
   TBranch        *b_Rivet_stage0_cat;   //!
   TBranch        *b_Rivet_stage1_1_cat_pTjet25GeV;   //!
   TBranch        *b_Rivet_stage1_1_cat_pTjet30GeV;   //!
   TBranch        *b_Rivet_stage1_1_fine_cat_pTjet25GeV;   //!
   TBranch        *b_Rivet_stage1_1_fine_cat_pTjet30GeV;   //!
   TBranch        *b_Rivet_stage1_cat_pTjet25GeV;   //!
   TBranch        *b_Rivet_stage1_cat_pTjet30GeV;   //!
   TBranch        *b_VBFDoubleLooseHPSTau20Pass;   //!
   TBranch        *b_VBFDoubleLooseTau20Pass;   //!
   TBranch        *b_VBFDoubleMediumHPSTau20Pass;   //!
   TBranch        *b_VBFDoubleMediumTau20Pass;   //!
   TBranch        *b_VBFDoubleTightHPSTau20Pass;   //!
   TBranch        *b_VBFDoubleTightTau20Pass;   //!
   TBranch        *b_bjetDeepCSVVeto20Loose_2016_DR0p5;   //!
   TBranch        *b_bjetDeepCSVVeto20Loose_2017_DR0p5;   //!
   TBranch        *b_bjetDeepCSVVeto20Loose_2018_DR0p5;   //!
   TBranch        *b_bjetDeepCSVVeto20Medium_2016_DR0;   //!
   TBranch        *b_bjetDeepCSVVeto20Medium_2016_DR0p5;   //!
   TBranch        *b_bjetDeepCSVVeto20Medium_2017_DR0;   //!
   TBranch        *b_bjetDeepCSVVeto20Medium_2017_DR0p5;   //!
   TBranch        *b_bjetDeepCSVVeto20Medium_2018_DR0;   //!
   TBranch        *b_bjetDeepCSVVeto20Medium_2018_DR0p5;   //!
   TBranch        *b_bjetDeepCSVVeto20Tight_2016_DR0p5;   //!
   TBranch        *b_bjetDeepCSVVeto20Tight_2017_DR0p5;   //!
   TBranch        *b_bjetDeepCSVVeto20Tight_2018_DR0p5;   //!
   TBranch        *b_deepcsvb1_btagscore;   //!
   TBranch        *b_deepcsvb1_eta;   //!
   TBranch        *b_deepcsvb1_hadronflavour;   //!
   TBranch        *b_deepcsvb1_m;   //!
   TBranch        *b_deepcsvb1_phi;   //!
   TBranch        *b_deepcsvb1_pt;   //!
   TBranch        *b_deepcsvb1_pt_JERDown;   //!
   TBranch        *b_deepcsvb1_pt_JERUp;   //!
   TBranch        *b_deepcsvb1_pt_JetAbsoluteDown;   //!
   TBranch        *b_deepcsvb1_pt_JetAbsoluteUp;   //!
   TBranch        *b_deepcsvb1_pt_JetAbsoluteyearDown;   //!
   TBranch        *b_deepcsvb1_pt_JetAbsoluteyearUp;   //!
   TBranch        *b_deepcsvb1_pt_JetBBEC1Down;   //!
   TBranch        *b_deepcsvb1_pt_JetBBEC1Up;   //!
   TBranch        *b_deepcsvb1_pt_JetBBEC1yearDown;   //!
   TBranch        *b_deepcsvb1_pt_JetBBEC1yearUp;   //!
   TBranch        *b_deepcsvb1_pt_JetEC2Down;   //!
   TBranch        *b_deepcsvb1_pt_JetEC2Up;   //!
   TBranch        *b_deepcsvb1_pt_JetEC2yearDown;   //!
   TBranch        *b_deepcsvb1_pt_JetEC2yearUp;   //!
   TBranch        *b_deepcsvb1_pt_JetFlavorQCDDown;   //!
   TBranch        *b_deepcsvb1_pt_JetFlavorQCDUp;   //!
   TBranch        *b_deepcsvb1_pt_JetHFDown;   //!
   TBranch        *b_deepcsvb1_pt_JetHFUp;   //!
   TBranch        *b_deepcsvb1_pt_JetHFyearDown;   //!
   TBranch        *b_deepcsvb1_pt_JetHFyearUp;   //!
   TBranch        *b_deepcsvb1_pt_JetRelativeBalDown;   //!
   TBranch        *b_deepcsvb1_pt_JetRelativeBalUp;   //!
   TBranch        *b_deepcsvb1_pt_JetRelativeSampleDown;   //!
   TBranch        *b_deepcsvb1_pt_JetRelativeSampleUp;   //!
   TBranch        *b_deepcsvb1_pt_JetTotalDown;   //!
   TBranch        *b_deepcsvb1_pt_JetTotalUp;   //!
   TBranch        *b_deepcsvb2_btagscore;   //!
   TBranch        *b_deepcsvb2_eta;   //!
   TBranch        *b_deepcsvb2_hadronflavour;   //!
   TBranch        *b_deepcsvb2_m;   //!
   TBranch        *b_deepcsvb2_phi;   //!
   TBranch        *b_deepcsvb2_pt;   //!
   TBranch        *b_deepcsvb2_pt_JERDown;   //!
   TBranch        *b_deepcsvb2_pt_JERUp;   //!
   TBranch        *b_deepcsvb2_pt_JetAbsoluteDown;   //!
   TBranch        *b_deepcsvb2_pt_JetAbsoluteUp;   //!
   TBranch        *b_deepcsvb2_pt_JetAbsoluteyearDown;   //!
   TBranch        *b_deepcsvb2_pt_JetAbsoluteyearUp;   //!
   TBranch        *b_deepcsvb2_pt_JetBBEC1Down;   //!
   TBranch        *b_deepcsvb2_pt_JetBBEC1Up;   //!
   TBranch        *b_deepcsvb2_pt_JetBBEC1yearDown;   //!
   TBranch        *b_deepcsvb2_pt_JetBBEC1yearUp;   //!
   TBranch        *b_deepcsvb2_pt_JetEC2Down;   //!
   TBranch        *b_deepcsvb2_pt_JetEC2Up;   //!
   TBranch        *b_deepcsvb2_pt_JetEC2yearDown;   //!
   TBranch        *b_deepcsvb2_pt_JetEC2yearUp;   //!
   TBranch        *b_deepcsvb2_pt_JetFlavorQCDDown;   //!
   TBranch        *b_deepcsvb2_pt_JetFlavorQCDUp;   //!
   TBranch        *b_deepcsvb2_pt_JetHFDown;   //!
   TBranch        *b_deepcsvb2_pt_JetHFUp;   //!
   TBranch        *b_deepcsvb2_pt_JetHFyearDown;   //!
   TBranch        *b_deepcsvb2_pt_JetHFyearUp;   //!
   TBranch        *b_deepcsvb2_pt_JetRelativeBalDown;   //!
   TBranch        *b_deepcsvb2_pt_JetRelativeBalUp;   //!
   TBranch        *b_deepcsvb2_pt_JetRelativeSampleDown;   //!
   TBranch        *b_deepcsvb2_pt_JetRelativeSampleUp;   //!
   TBranch        *b_deepcsvb2_pt_JetTotalDown;   //!
   TBranch        *b_deepcsvb2_pt_JetTotalUp;   //!
   TBranch        *b_deepflavourb1_btagscore;   //!
   TBranch        *b_deepflavourb1_eta;   //!
   TBranch        *b_deepflavourb1_hadronflavour;   //!
   TBranch        *b_deepflavourb1_m;   //!
   TBranch        *b_deepflavourb1_phi;   //!
   TBranch        *b_deepflavourb1_pt;   //!
   TBranch        *b_deepflavourb2_btagscore;   //!
   TBranch        *b_deepflavourb2_eta;   //!
   TBranch        *b_deepflavourb2_hadronflavour;   //!
   TBranch        *b_deepflavourb2_m;   //!
   TBranch        *b_deepflavourb2_phi;   //!
   TBranch        *b_deepflavourb2_pt;   //!
   TBranch        *b_dielectronVeto;   //!
   TBranch        *b_dimuonVeto;   //!
   TBranch        *b_doubleE_23_12DZPass;   //!
   TBranch        *b_doubleE_23_12Pass;   //!
   TBranch        *b_doubleMuDZPass;   //!
   TBranch        *b_doubleMuDZminMass3p8Pass;   //!
   TBranch        *b_doubleMuDZminMass8Pass;   //!
   TBranch        *b_doubleMuPass;   //!
   TBranch        *b_doubleMuTkMu17TkMu8DZPass;   //!
   TBranch        *b_doubleMuTkMu17TkMu8Pass;   //!
   TBranch        *b_doubleMuTkMu8DZPass;   //!
   TBranch        *b_doubleMuTkMu8Pass;   //!
   TBranch        *b_doubleTau35Pass;   //!
   TBranch        *b_doubleTauCmbIso35RegPass;   //!
   TBranch        *b_dressedElectron_pt;   //!
   TBranch        *b_dressedMuon_pt;   //!
   TBranch        *b_eVetoZTTp001dxyzR0;   //!
   TBranch        *b_evt;   //!
   TBranch        *b_genEta;   //!
   TBranch        *b_genHTT;   //!
   TBranch        *b_genM;   //!
   TBranch        *b_genMass;   //!
   TBranch        *b_genMetPhi;   //!
   TBranch        *b_genMetPt;   //!
   TBranch        *b_genPhi;   //!
   TBranch        *b_genpT;   //!
   TBranch        *b_genpX;   //!
   TBranch        *b_genpY;   //!
   TBranch        *b_gentau1_eta;   //!
   TBranch        *b_gentau1_pt;   //!
   TBranch        *b_gentau2_eta;   //!
   TBranch        *b_gentau2_pt;   //!
   TBranch        *b_isdata;   //!
   TBranch        *b_isembed;   //!
   TBranch        *b_j1eta;   //!
   TBranch        *b_j1phi;   //!
   TBranch        *b_j1pt;   //!
   TBranch        *b_j1pt_JERDown;   //!
   TBranch        *b_j1pt_JERUp;   //!
   TBranch        *b_j1pt_JetAbsoluteDown;   //!
   TBranch        *b_j1pt_JetAbsoluteUp;   //!
   TBranch        *b_j1pt_JetAbsoluteyearDown;   //!
   TBranch        *b_j1pt_JetAbsoluteyearUp;   //!
   TBranch        *b_j1pt_JetBBEC1Down;   //!
   TBranch        *b_j1pt_JetBBEC1Up;   //!
   TBranch        *b_j1pt_JetBBEC1yearDown;   //!
   TBranch        *b_j1pt_JetBBEC1yearUp;   //!
   TBranch        *b_j1pt_JetEC2Down;   //!
   TBranch        *b_j1pt_JetEC2Up;   //!
   TBranch        *b_j1pt_JetEC2yearDown;   //!
   TBranch        *b_j1pt_JetEC2yearUp;   //!
   TBranch        *b_j1pt_JetFlavorQCDDown;   //!
   TBranch        *b_j1pt_JetFlavorQCDUp;   //!
   TBranch        *b_j1pt_JetHFDown;   //!
   TBranch        *b_j1pt_JetHFUp;   //!
   TBranch        *b_j1pt_JetHFyearDown;   //!
   TBranch        *b_j1pt_JetHFyearUp;   //!
   TBranch        *b_j1pt_JetRelativeBalDown;   //!
   TBranch        *b_j1pt_JetRelativeBalUp;   //!
   TBranch        *b_j1pt_JetRelativeSampleDown;   //!
   TBranch        *b_j1pt_JetRelativeSampleUp;   //!
   TBranch        *b_j2eta;   //!
   TBranch        *b_j2phi;   //!
   TBranch        *b_j2pt;   //!
   TBranch        *b_j2pt_JERDown;   //!
   TBranch        *b_j2pt_JERUp;   //!
   TBranch        *b_j2pt_JetAbsoluteDown;   //!
   TBranch        *b_j2pt_JetAbsoluteUp;   //!
   TBranch        *b_j2pt_JetAbsoluteyearDown;   //!
   TBranch        *b_j2pt_JetAbsoluteyearUp;   //!
   TBranch        *b_j2pt_JetBBEC1Down;   //!
   TBranch        *b_j2pt_JetBBEC1Up;   //!
   TBranch        *b_j2pt_JetBBEC1yearDown;   //!
   TBranch        *b_j2pt_JetBBEC1yearUp;   //!
   TBranch        *b_j2pt_JetEC2Down;   //!
   TBranch        *b_j2pt_JetEC2Up;   //!
   TBranch        *b_j2pt_JetEC2yearDown;   //!
   TBranch        *b_j2pt_JetEC2yearUp;   //!
   TBranch        *b_j2pt_JetFlavorQCDDown;   //!
   TBranch        *b_j2pt_JetFlavorQCDUp;   //!
   TBranch        *b_j2pt_JetHFDown;   //!
   TBranch        *b_j2pt_JetHFUp;   //!
   TBranch        *b_j2pt_JetHFyearDown;   //!
   TBranch        *b_j2pt_JetHFyearUp;   //!
   TBranch        *b_j2pt_JetRelativeBalDown;   //!
   TBranch        *b_j2pt_JetRelativeBalUp;   //!
   TBranch        *b_j2pt_JetRelativeSampleDown;   //!
   TBranch        *b_j2pt_JetRelativeSampleUp;   //!
   TBranch        *b_jetVeto20;   //!
   TBranch        *b_jetVeto30;   //!
   TBranch        *b_jetVeto30_JERDown;   //!
   TBranch        *b_jetVeto30_JERUp;   //!
   TBranch        *b_jetVeto30_JetAbsoluteDown;   //!
   TBranch        *b_jetVeto30_JetAbsoluteUp;   //!
   TBranch        *b_jetVeto30_JetAbsoluteyearDown;   //!
   TBranch        *b_jetVeto30_JetAbsoluteyearUp;   //!
   TBranch        *b_jetVeto30_JetBBEC1Down;   //!
   TBranch        *b_jetVeto30_JetBBEC1Up;   //!
   TBranch        *b_jetVeto30_JetBBEC1yearDown;   //!
   TBranch        *b_jetVeto30_JetBBEC1yearUp;   //!
   TBranch        *b_jetVeto30_JetEC2Down;   //!
   TBranch        *b_jetVeto30_JetEC2Up;   //!
   TBranch        *b_jetVeto30_JetEC2yearDown;   //!
   TBranch        *b_jetVeto30_JetEC2yearUp;   //!
   TBranch        *b_jetVeto30_JetEnDown;   //!
   TBranch        *b_jetVeto30_JetEnUp;   //!
   TBranch        *b_jetVeto30_JetFlavorQCDDown;   //!
   TBranch        *b_jetVeto30_JetFlavorQCDUp;   //!
   TBranch        *b_jetVeto30_JetHFDown;   //!
   TBranch        *b_jetVeto30_JetHFUp;   //!
   TBranch        *b_jetVeto30_JetHFyearDown;   //!
   TBranch        *b_jetVeto30_JetHFyearUp;   //!
   TBranch        *b_jetVeto30_JetRelativeBalDown;   //!
   TBranch        *b_jetVeto30_JetRelativeBalUp;   //!
   TBranch        *b_jetVeto30_JetRelativeSampleDown;   //!
   TBranch        *b_jetVeto30_JetRelativeSampleUp;   //!
   TBranch        *b_jetVeto30_JetTotalDown;   //!
   TBranch        *b_jetVeto30_JetTotalUp;   //!
   TBranch        *b_lumi;   //!
   TBranch        *b_metcov00;   //!
   TBranch        *b_metcov01;   //!
   TBranch        *b_metcov10;   //!
   TBranch        *b_metcov11;   //!
   TBranch        *b_mu12e23DZPass;   //!
   TBranch        *b_mu12e23Pass;   //!
   TBranch        *b_mu23e12DZPass;   //!
   TBranch        *b_mu23e12Pass;   //!
   TBranch        *b_mu8e23DZPass;   //!
   TBranch        *b_mu8e23Pass;   //!
   TBranch        *b_muVetoZTTp001dxyzR0;   //!
   TBranch        *b_nTruePU;   //!
   TBranch        *b_npNLO;   //!
   TBranch        *b_numGenJets;   //!
   TBranch        *b_nvtx;   //!
   TBranch        *b_prefiring_weight;   //!
   TBranch        *b_prefiring_weight_down;   //!
   TBranch        *b_prefiring_weight_up;   //!
   TBranch        *b_puppiMetEt;   //!
   TBranch        *b_puppiMetPhi;   //!
   TBranch        *b_puppiMet_shiftedPhi_JetAbsoluteDown;   //!
   TBranch        *b_puppiMet_shiftedPhi_JetAbsoluteUp;   //!
   TBranch        *b_puppiMet_shiftedPhi_JetAbsoluteyearDown;   //!
   TBranch        *b_puppiMet_shiftedPhi_JetAbsoluteyearUp;   //!
   TBranch        *b_puppiMet_shiftedPhi_JetBBEC1Down;   //!
   TBranch        *b_puppiMet_shiftedPhi_JetBBEC1Up;   //!
   TBranch        *b_puppiMet_shiftedPhi_JetBBEC1yearDown;   //!
   TBranch        *b_puppiMet_shiftedPhi_JetBBEC1yearUp;   //!
   TBranch        *b_puppiMet_shiftedPhi_JetEC2Down;   //!
   TBranch        *b_puppiMet_shiftedPhi_JetEC2Up;   //!
   TBranch        *b_puppiMet_shiftedPhi_JetEC2yearDown;   //!
   TBranch        *b_puppiMet_shiftedPhi_JetEC2yearUp;   //!
   TBranch        *b_puppiMet_shiftedPhi_JetEnDown;   //!
   TBranch        *b_puppiMet_shiftedPhi_JetEnUp;   //!
   TBranch        *b_puppiMet_shiftedPhi_JetFlavorQCDDown;   //!
   TBranch        *b_puppiMet_shiftedPhi_JetFlavorQCDUp;   //!
   TBranch        *b_puppiMet_shiftedPhi_JetHFDown;   //!
   TBranch        *b_puppiMet_shiftedPhi_JetHFUp;   //!
   TBranch        *b_puppiMet_shiftedPhi_JetHFyearDown;   //!
   TBranch        *b_puppiMet_shiftedPhi_JetHFyearUp;   //!
   TBranch        *b_puppiMet_shiftedPhi_JetRelativeBalDown;   //!
   TBranch        *b_puppiMet_shiftedPhi_JetRelativeBalUp;   //!
   TBranch        *b_puppiMet_shiftedPhi_JetRelativeSampleDown;   //!
   TBranch        *b_puppiMet_shiftedPhi_JetRelativeSampleUp;   //!
   TBranch        *b_puppiMet_shiftedPhi_JetTotalDown;   //!
   TBranch        *b_puppiMet_shiftedPhi_JetTotalUp;   //!
   TBranch        *b_puppiMet_shiftedPhi_UnclusteredEnDown;   //!
   TBranch        *b_puppiMet_shiftedPhi_UnclusteredEnUp;   //!
   TBranch        *b_puppiMet_shiftedPt_JetAbsoluteDown;   //!
   TBranch        *b_puppiMet_shiftedPt_JetAbsoluteUp;   //!
   TBranch        *b_puppiMet_shiftedPt_JetAbsoluteyearDown;   //!
   TBranch        *b_puppiMet_shiftedPt_JetAbsoluteyearUp;   //!
   TBranch        *b_puppiMet_shiftedPt_JetBBEC1Down;   //!
   TBranch        *b_puppiMet_shiftedPt_JetBBEC1Up;   //!
   TBranch        *b_puppiMet_shiftedPt_JetBBEC1yearDown;   //!
   TBranch        *b_puppiMet_shiftedPt_JetBBEC1yearUp;   //!
   TBranch        *b_puppiMet_shiftedPt_JetEC2Down;   //!
   TBranch        *b_puppiMet_shiftedPt_JetEC2Up;   //!
   TBranch        *b_puppiMet_shiftedPt_JetEC2yearDown;   //!
   TBranch        *b_puppiMet_shiftedPt_JetEC2yearUp;   //!
   TBranch        *b_puppiMet_shiftedPt_JetEnDown;   //!
   TBranch        *b_puppiMet_shiftedPt_JetEnUp;   //!
   TBranch        *b_puppiMet_shiftedPt_JetFlavorQCDDown;   //!
   TBranch        *b_puppiMet_shiftedPt_JetFlavorQCDUp;   //!
   TBranch        *b_puppiMet_shiftedPt_JetHFDown;   //!
   TBranch        *b_puppiMet_shiftedPt_JetHFUp;   //!
   TBranch        *b_puppiMet_shiftedPt_JetHFyearDown;   //!
   TBranch        *b_puppiMet_shiftedPt_JetHFyearUp;   //!
   TBranch        *b_puppiMet_shiftedPt_JetRelativeBalDown;   //!
   TBranch        *b_puppiMet_shiftedPt_JetRelativeBalUp;   //!
   TBranch        *b_puppiMet_shiftedPt_JetRelativeSampleDown;   //!
   TBranch        *b_puppiMet_shiftedPt_JetRelativeSampleUp;   //!
   TBranch        *b_puppiMet_shiftedPt_JetTotalDown;   //!
   TBranch        *b_puppiMet_shiftedPt_JetTotalUp;   //!
   TBranch        *b_puppiMet_shiftedPt_UnclusteredEnDown;   //!
   TBranch        *b_puppiMet_shiftedPt_UnclusteredEnUp;   //!
   TBranch        *b_puppimetcov00;   //!
   TBranch        *b_puppimetcov01;   //!
   TBranch        *b_puppimetcov10;   //!
   TBranch        *b_puppimetcov11;   //!
   TBranch        *b_raw_pfMetEt;   //!
   TBranch        *b_raw_pfMetPhi;   //!
   TBranch        *b_rho;   //!
   TBranch        *b_run;   //!
   TBranch        *b_singleE25eta2p1TightPass;   //!
   TBranch        *b_singleIsoMu22Pass;   //!
   TBranch        *b_singleIsoMu22eta2p1Pass;   //!
   TBranch        *b_singleIsoTkMu22Pass;   //!
   TBranch        *b_singleIsoTkMu22eta2p1Pass;   //!
   TBranch        *b_singleMu19eta2p1LooseTau20Pass;   //!
   TBranch        *b_singleMu19eta2p1LooseTau20singleL1Pass;   //!
   TBranch        *b_t1AgainstMuonLoose3;   //!
   TBranch        *b_t1AgainstMuonTight3;   //!
   TBranch        *b_t1ByCombinedIsolationDeltaBetaCorrRaw3Hits;   //!
   TBranch        *b_t1ByLooseCombinedIsolationDeltaBetaCorr3Hits;   //!
   TBranch        *b_t1ByMediumCombinedIsolationDeltaBetaCorr3Hits;   //!
   TBranch        *b_t1ByPhotonPtSumOutsideSignalCone;   //!
   TBranch        *b_t1ByTightCombinedIsolationDeltaBetaCorr3Hits;   //!
   TBranch        *b_t1Charge;   //!
   TBranch        *b_t1ChargedIsoPtSum;   //!
   TBranch        *b_t1ChargedIsoPtSumdR03;   //!
   TBranch        *b_t1DecayMode;   //!
   TBranch        *b_t1DecayModeFinding;   //!
   TBranch        *b_t1DecayModeFindingNewDMs;   //!
   TBranch        *b_t1DeepTau2017v2p1VSeraw;   //!
   TBranch        *b_t1DeepTau2017v2p1VSjetraw;   //!
   TBranch        *b_t1DeepTau2017v2p1VSmuraw;   //!
   TBranch        *b_t1Eta;   //!
   TBranch        *b_t1FootprintCorrection;   //!
   TBranch        *b_t1FootprintCorrectiondR03;   //!
   TBranch        *b_t1GenCharge;   //!
   TBranch        *b_t1GenDecayMode;   //!
   TBranch        *b_t1GenEnergy;   //!
   TBranch        *b_t1GenEta;   //!
   TBranch        *b_t1GenJetEta;   //!
   TBranch        *b_t1GenJetPt;   //!
   TBranch        *b_t1GenPdgId;   //!
   TBranch        *b_t1GenPhi;   //!
   TBranch        *b_t1GenPt;   //!
   TBranch        *b_t1GenStatus;   //!
   TBranch        *b_t1L1IsoTauMatch;   //!
   TBranch        *b_t1L1IsoTauPt;   //!
   TBranch        *b_t1LeadTrackPt;   //!
   TBranch        *b_t1LooseDeepTau2017v2p1VSe;   //!
   TBranch        *b_t1LooseDeepTau2017v2p1VSjet;   //!
   TBranch        *b_t1LooseDeepTau2017v2p1VSmu;   //!
   TBranch        *b_t1Mass;   //!
   TBranch        *b_t1MatchEmbeddedFilterEle24Tau30;   //!
   TBranch        *b_t1MatchEmbeddedFilterMu19Tau20;   //!
   TBranch        *b_t1MatchEmbeddedFilterMu20HPSTau27;   //!
   TBranch        *b_t1MatchEmbeddedFilterMu20Tau27;   //!
   TBranch        *b_t1MatchEmbeddedFilterTauTau;   //!
   TBranch        *b_t1MatchEmbeddedFilterTauTau2016;   //!
   TBranch        *b_t1MatchesDoubleMediumCombinedIsoTau35Path;   //!
   TBranch        *b_t1MatchesDoubleMediumHPSTau35Filter;   //!
   TBranch        *b_t1MatchesDoubleMediumHPSTau35Path;   //!
   TBranch        *b_t1MatchesDoubleMediumHPSTau40Filter;   //!
   TBranch        *b_t1MatchesDoubleMediumHPSTau40Path;   //!
   TBranch        *b_t1MatchesDoubleMediumIsoTau35Path;   //!
   TBranch        *b_t1MatchesDoubleMediumTau35Filter;   //!
   TBranch        *b_t1MatchesDoubleMediumTau35Path;   //!
   TBranch        *b_t1MatchesDoubleMediumTau40Filter;   //!
   TBranch        *b_t1MatchesDoubleMediumTau40Path;   //!
   TBranch        *b_t1MatchesDoubleTau35Filter;   //!
   TBranch        *b_t1MatchesDoubleTau35Path;   //!
   TBranch        *b_t1MatchesDoubleTauCmbIso35RegFilter;   //!
   TBranch        *b_t1MatchesDoubleTauCmbIso35RegPath;   //!
   TBranch        *b_t1MatchesDoubleTightHPSTau35Filter;   //!
   TBranch        *b_t1MatchesDoubleTightHPSTau35Path;   //!
   TBranch        *b_t1MatchesDoubleTightHPSTau40Filter;   //!
   TBranch        *b_t1MatchesDoubleTightHPSTau40Path;   //!
   TBranch        *b_t1MatchesDoubleTightTau35Filter;   //!
   TBranch        *b_t1MatchesDoubleTightTau35Path;   //!
   TBranch        *b_t1MatchesDoubleTightTau40Filter;   //!
   TBranch        *b_t1MatchesDoubleTightTau40Path;   //!
   TBranch        *b_t1MatchesEle24HPSTau30Filter;   //!
   TBranch        *b_t1MatchesEle24HPSTau30Path;   //!
   TBranch        *b_t1MatchesEle24Tau30Filter;   //!
   TBranch        *b_t1MatchesEle24Tau30Path;   //!
   TBranch        *b_t1MatchesIsoMu19Tau20Filter;   //!
   TBranch        *b_t1MatchesIsoMu19Tau20Path;   //!
   TBranch        *b_t1MatchesIsoMu19Tau20SingleL1Filter;   //!
   TBranch        *b_t1MatchesIsoMu19Tau20SingleL1Path;   //!
   TBranch        *b_t1MatchesIsoMu20HPSTau27Filter;   //!
   TBranch        *b_t1MatchesIsoMu20HPSTau27Path;   //!
   TBranch        *b_t1MatchesIsoMu20Tau27Filter;   //!
   TBranch        *b_t1MatchesIsoMu20Tau27Path;   //!
   TBranch        *b_t1MediumDeepTau2017v2p1VSe;   //!
   TBranch        *b_t1MediumDeepTau2017v2p1VSjet;   //!
   TBranch        *b_t1MediumDeepTau2017v2p1VSmu;   //!
   TBranch        *b_t1NChrgHadrIsolationCands;   //!
   TBranch        *b_t1NChrgHadrSignalCands;   //!
   TBranch        *b_t1NGammaSignalCands;   //!
   TBranch        *b_t1NNeutralHadrSignalCands;   //!
   TBranch        *b_t1NSignalCands;   //!
   TBranch        *b_t1NeutralIsoPtSum;   //!
   TBranch        *b_t1NeutralIsoPtSumWeight;   //!
   TBranch        *b_t1NeutralIsoPtSumWeightdR03;   //!
   TBranch        *b_t1NeutralIsoPtSumdR03;   //!
   TBranch        *b_t1PVDXY;   //!
   TBranch        *b_t1PVDZ;   //!
   TBranch        *b_t1Phi;   //!
   TBranch        *b_t1PhotonPtSumOutsideSignalCone;   //!
   TBranch        *b_t1PhotonPtSumOutsideSignalConedR03;   //!
   TBranch        *b_t1Pt;   //!
   TBranch        *b_t1PuCorrPtSum;   //!
   TBranch        *b_t1TightDeepTau2017v2p1VSe;   //!
   TBranch        *b_t1TightDeepTau2017v2p1VSjet;   //!
   TBranch        *b_t1TightDeepTau2017v2p1VSmu;   //!
   TBranch        *b_t1VLooseDeepTau2017v2p1VSe;   //!
   TBranch        *b_t1VLooseDeepTau2017v2p1VSjet;   //!
   TBranch        *b_t1VLooseDeepTau2017v2p1VSmu;   //!
   TBranch        *b_t1VTightDeepTau2017v2p1VSe;   //!
   TBranch        *b_t1VTightDeepTau2017v2p1VSjet;   //!
   TBranch        *b_t1VTightDeepTau2017v2p1VSmu;   //!
   TBranch        *b_t1VVLooseDeepTau2017v2p1VSe;   //!
   TBranch        *b_t1VVLooseDeepTau2017v2p1VSjet;   //!
   TBranch        *b_t1VVTightDeepTau2017v2p1VSe;   //!
   TBranch        *b_t1VVTightDeepTau2017v2p1VSjet;   //!
   TBranch        *b_t1VVTightDeepTau2017v2p1VSmu;   //!
   TBranch        *b_t1VVVLooseDeepTau2017v2p1VSe;   //!
   TBranch        *b_t1VVVLooseDeepTau2017v2p1VSjet;   //!
   TBranch        *b_t1ZTTGenEta;   //!
   TBranch        *b_t1ZTTGenMatching;   //!
   TBranch        *b_t1ZTTGenPhi;   //!
   TBranch        *b_t1ZTTGenPt;   //!
   TBranch        *b_t1_t2_DR;   //!
   TBranch        *b_t1_t2_Mass;   //!
   TBranch        *b_t2AgainstMuonLoose3;   //!
   TBranch        *b_t2AgainstMuonTight3;   //!
   TBranch        *b_t2ByCombinedIsolationDeltaBetaCorrRaw3Hits;   //!
   TBranch        *b_t2ByLooseCombinedIsolationDeltaBetaCorr3Hits;   //!
   TBranch        *b_t2ByMediumCombinedIsolationDeltaBetaCorr3Hits;   //!
   TBranch        *b_t2ByPhotonPtSumOutsideSignalCone;   //!
   TBranch        *b_t2ByTightCombinedIsolationDeltaBetaCorr3Hits;   //!
   TBranch        *b_t2Charge;   //!
   TBranch        *b_t2ChargedIsoPtSum;   //!
   TBranch        *b_t2ChargedIsoPtSumdR03;   //!
   TBranch        *b_t2DecayMode;   //!
   TBranch        *b_t2DecayModeFinding;   //!
   TBranch        *b_t2DecayModeFindingNewDMs;   //!
   TBranch        *b_t2DeepTau2017v2p1VSeraw;   //!
   TBranch        *b_t2DeepTau2017v2p1VSjetraw;   //!
   TBranch        *b_t2DeepTau2017v2p1VSmuraw;   //!
   TBranch        *b_t2Eta;   //!
   TBranch        *b_t2FootprintCorrection;   //!
   TBranch        *b_t2FootprintCorrectiondR03;   //!
   TBranch        *b_t2GenCharge;   //!
   TBranch        *b_t2GenDecayMode;   //!
   TBranch        *b_t2GenEnergy;   //!
   TBranch        *b_t2GenEta;   //!
   TBranch        *b_t2GenJetEta;   //!
   TBranch        *b_t2GenJetPt;   //!
   TBranch        *b_t2GenPdgId;   //!
   TBranch        *b_t2GenPhi;   //!
   TBranch        *b_t2GenPt;   //!
   TBranch        *b_t2GenStatus;   //!
   TBranch        *b_t2L1IsoTauMatch;   //!
   TBranch        *b_t2L1IsoTauPt;   //!
   TBranch        *b_t2LeadTrackPt;   //!
   TBranch        *b_t2LooseDeepTau2017v2p1VSe;   //!
   TBranch        *b_t2LooseDeepTau2017v2p1VSjet;   //!
   TBranch        *b_t2LooseDeepTau2017v2p1VSmu;   //!
   TBranch        *b_t2Mass;   //!
   TBranch        *b_t2MatchEmbeddedFilterEle24Tau30;   //!
   TBranch        *b_t2MatchEmbeddedFilterMu19Tau20;   //!
   TBranch        *b_t2MatchEmbeddedFilterMu20HPSTau27;   //!
   TBranch        *b_t2MatchEmbeddedFilterMu20Tau27;   //!
   TBranch        *b_t2MatchEmbeddedFilterTauTau;   //!
   TBranch        *b_t2MatchEmbeddedFilterTauTau2016;   //!
   TBranch        *b_t2MatchesDoubleMediumCombinedIsoTau35Path;   //!
   TBranch        *b_t2MatchesDoubleMediumHPSTau35Filter;   //!
   TBranch        *b_t2MatchesDoubleMediumHPSTau35Path;   //!
   TBranch        *b_t2MatchesDoubleMediumHPSTau40Filter;   //!
   TBranch        *b_t2MatchesDoubleMediumHPSTau40Path;   //!
   TBranch        *b_t2MatchesDoubleMediumIsoTau35Path;   //!
   TBranch        *b_t2MatchesDoubleMediumTau35Filter;   //!
   TBranch        *b_t2MatchesDoubleMediumTau35Path;   //!
   TBranch        *b_t2MatchesDoubleMediumTau40Filter;   //!
   TBranch        *b_t2MatchesDoubleMediumTau40Path;   //!
   TBranch        *b_t2MatchesDoubleTau35Filter;   //!
   TBranch        *b_t2MatchesDoubleTau35Path;   //!
   TBranch        *b_t2MatchesDoubleTauCmbIso35RegFilter;   //!
   TBranch        *b_t2MatchesDoubleTauCmbIso35RegPath;   //!
   TBranch        *b_t2MatchesDoubleTightHPSTau35Filter;   //!
   TBranch        *b_t2MatchesDoubleTightHPSTau35Path;   //!
   TBranch        *b_t2MatchesDoubleTightHPSTau40Filter;   //!
   TBranch        *b_t2MatchesDoubleTightHPSTau40Path;   //!
   TBranch        *b_t2MatchesDoubleTightTau35Filter;   //!
   TBranch        *b_t2MatchesDoubleTightTau35Path;   //!
   TBranch        *b_t2MatchesDoubleTightTau40Filter;   //!
   TBranch        *b_t2MatchesDoubleTightTau40Path;   //!
   TBranch        *b_t2MatchesEle24HPSTau30Filter;   //!
   TBranch        *b_t2MatchesEle24HPSTau30Path;   //!
   TBranch        *b_t2MatchesEle24Tau30Filter;   //!
   TBranch        *b_t2MatchesEle24Tau30Path;   //!
   TBranch        *b_t2MatchesIsoMu19Tau20Filter;   //!
   TBranch        *b_t2MatchesIsoMu19Tau20Path;   //!
   TBranch        *b_t2MatchesIsoMu19Tau20SingleL1Filter;   //!
   TBranch        *b_t2MatchesIsoMu19Tau20SingleL1Path;   //!
   TBranch        *b_t2MatchesIsoMu20HPSTau27Filter;   //!
   TBranch        *b_t2MatchesIsoMu20HPSTau27Path;   //!
   TBranch        *b_t2MatchesIsoMu20Tau27Filter;   //!
   TBranch        *b_t2MatchesIsoMu20Tau27Path;   //!
   TBranch        *b_t2MediumDeepTau2017v2p1VSe;   //!
   TBranch        *b_t2MediumDeepTau2017v2p1VSjet;   //!
   TBranch        *b_t2MediumDeepTau2017v2p1VSmu;   //!
   TBranch        *b_t2NChrgHadrIsolationCands;   //!
   TBranch        *b_t2NChrgHadrSignalCands;   //!
   TBranch        *b_t2NGammaSignalCands;   //!
   TBranch        *b_t2NNeutralHadrSignalCands;   //!
   TBranch        *b_t2NSignalCands;   //!
   TBranch        *b_t2NeutralIsoPtSum;   //!
   TBranch        *b_t2NeutralIsoPtSumWeight;   //!
   TBranch        *b_t2NeutralIsoPtSumWeightdR03;   //!
   TBranch        *b_t2NeutralIsoPtSumdR03;   //!
   TBranch        *b_t2PVDXY;   //!
   TBranch        *b_t2PVDZ;   //!
   TBranch        *b_t2Phi;   //!
   TBranch        *b_t2PhotonPtSumOutsideSignalCone;   //!
   TBranch        *b_t2PhotonPtSumOutsideSignalConedR03;   //!
   TBranch        *b_t2Pt;   //!
   TBranch        *b_t2PuCorrPtSum;   //!
   TBranch        *b_t2TightDeepTau2017v2p1VSe;   //!
   TBranch        *b_t2TightDeepTau2017v2p1VSjet;   //!
   TBranch        *b_t2TightDeepTau2017v2p1VSmu;   //!
   TBranch        *b_t2VLooseDeepTau2017v2p1VSe;   //!
   TBranch        *b_t2VLooseDeepTau2017v2p1VSjet;   //!
   TBranch        *b_t2VLooseDeepTau2017v2p1VSmu;   //!
   TBranch        *b_t2VTightDeepTau2017v2p1VSe;   //!
   TBranch        *b_t2VTightDeepTau2017v2p1VSjet;   //!
   TBranch        *b_t2VTightDeepTau2017v2p1VSmu;   //!
   TBranch        *b_t2VVLooseDeepTau2017v2p1VSe;   //!
   TBranch        *b_t2VVLooseDeepTau2017v2p1VSjet;   //!
   TBranch        *b_t2VVTightDeepTau2017v2p1VSe;   //!
   TBranch        *b_t2VVTightDeepTau2017v2p1VSjet;   //!
   TBranch        *b_t2VVTightDeepTau2017v2p1VSmu;   //!
   TBranch        *b_t2VVVLooseDeepTau2017v2p1VSe;   //!
   TBranch        *b_t2VVVLooseDeepTau2017v2p1VSjet;   //!
   TBranch        *b_t2ZTTGenEta;   //!
   TBranch        *b_t2ZTTGenMatching;   //!
   TBranch        *b_t2ZTTGenPhi;   //!
   TBranch        *b_t2ZTTGenPt;   //!
   TBranch        *b_topQuarkPt1;   //!
   TBranch        *b_topQuarkPt2;   //!
   TBranch        *b_tripleMu12_10_5Pass;   //!
   TBranch        *b_type1_pfMetEt;   //!
   TBranch        *b_type1_pfMetPhi;   //!
   TBranch        *b_type1_pfMet_shiftedPhi_JERDown;   //!
   TBranch        *b_type1_pfMet_shiftedPhi_JERUp;   //!
   TBranch        *b_type1_pfMet_shiftedPhi_JetAbsoluteDown;   //!
   TBranch        *b_type1_pfMet_shiftedPhi_JetAbsoluteUp;   //!
   TBranch        *b_type1_pfMet_shiftedPhi_JetAbsoluteyearDown;   //!
   TBranch        *b_type1_pfMet_shiftedPhi_JetAbsoluteyearUp;   //!
   TBranch        *b_type1_pfMet_shiftedPhi_JetBBEC1Down;   //!
   TBranch        *b_type1_pfMet_shiftedPhi_JetBBEC1Up;   //!
   TBranch        *b_type1_pfMet_shiftedPhi_JetBBEC1yearDown;   //!
   TBranch        *b_type1_pfMet_shiftedPhi_JetBBEC1yearUp;   //!
   TBranch        *b_type1_pfMet_shiftedPhi_JetEC2Down;   //!
   TBranch        *b_type1_pfMet_shiftedPhi_JetEC2Up;   //!
   TBranch        *b_type1_pfMet_shiftedPhi_JetEC2yearDown;   //!
   TBranch        *b_type1_pfMet_shiftedPhi_JetEC2yearUp;   //!
   TBranch        *b_type1_pfMet_shiftedPhi_JetEnDown;   //!
   TBranch        *b_type1_pfMet_shiftedPhi_JetEnUp;   //!
   TBranch        *b_type1_pfMet_shiftedPhi_JetFlavorQCDDown;   //!
   TBranch        *b_type1_pfMet_shiftedPhi_JetFlavorQCDUp;   //!
   TBranch        *b_type1_pfMet_shiftedPhi_JetHFDown;   //!
   TBranch        *b_type1_pfMet_shiftedPhi_JetHFUp;   //!
   TBranch        *b_type1_pfMet_shiftedPhi_JetHFyearDown;   //!
   TBranch        *b_type1_pfMet_shiftedPhi_JetHFyearUp;   //!
   TBranch        *b_type1_pfMet_shiftedPhi_JetRelativeBalDown;   //!
   TBranch        *b_type1_pfMet_shiftedPhi_JetRelativeBalUp;   //!
   TBranch        *b_type1_pfMet_shiftedPhi_JetRelativeSampleDown;   //!
   TBranch        *b_type1_pfMet_shiftedPhi_JetRelativeSampleUp;   //!
   TBranch        *b_type1_pfMet_shiftedPhi_JetResDown;   //!
   TBranch        *b_type1_pfMet_shiftedPhi_JetResUp;   //!
   TBranch        *b_type1_pfMet_shiftedPhi_JetTotalDown;   //!
   TBranch        *b_type1_pfMet_shiftedPhi_JetTotalUp;   //!
   TBranch        *b_type1_pfMet_shiftedPhi_UnclusteredEnDown;   //!
   TBranch        *b_type1_pfMet_shiftedPhi_UnclusteredEnUp;   //!
   TBranch        *b_type1_pfMet_shiftedPt_JERDown;   //!
   TBranch        *b_type1_pfMet_shiftedPt_JERUp;   //!
   TBranch        *b_type1_pfMet_shiftedPt_JetAbsoluteDown;   //!
   TBranch        *b_type1_pfMet_shiftedPt_JetAbsoluteUp;   //!
   TBranch        *b_type1_pfMet_shiftedPt_JetAbsoluteyearDown;   //!
   TBranch        *b_type1_pfMet_shiftedPt_JetAbsoluteyearUp;   //!
   TBranch        *b_type1_pfMet_shiftedPt_JetBBEC1Down;   //!
   TBranch        *b_type1_pfMet_shiftedPt_JetBBEC1Up;   //!
   TBranch        *b_type1_pfMet_shiftedPt_JetBBEC1yearDown;   //!
   TBranch        *b_type1_pfMet_shiftedPt_JetBBEC1yearUp;   //!
   TBranch        *b_type1_pfMet_shiftedPt_JetEC2Down;   //!
   TBranch        *b_type1_pfMet_shiftedPt_JetEC2Up;   //!
   TBranch        *b_type1_pfMet_shiftedPt_JetEC2yearDown;   //!
   TBranch        *b_type1_pfMet_shiftedPt_JetEC2yearUp;   //!
   TBranch        *b_type1_pfMet_shiftedPt_JetEnDown;   //!
   TBranch        *b_type1_pfMet_shiftedPt_JetEnUp;   //!
   TBranch        *b_type1_pfMet_shiftedPt_JetFlavorQCDDown;   //!
   TBranch        *b_type1_pfMet_shiftedPt_JetFlavorQCDUp;   //!
   TBranch        *b_type1_pfMet_shiftedPt_JetHFDown;   //!
   TBranch        *b_type1_pfMet_shiftedPt_JetHFUp;   //!
   TBranch        *b_type1_pfMet_shiftedPt_JetHFyearDown;   //!
   TBranch        *b_type1_pfMet_shiftedPt_JetHFyearUp;   //!
   TBranch        *b_type1_pfMet_shiftedPt_JetRelativeBalDown;   //!
   TBranch        *b_type1_pfMet_shiftedPt_JetRelativeBalUp;   //!
   TBranch        *b_type1_pfMet_shiftedPt_JetRelativeSampleDown;   //!
   TBranch        *b_type1_pfMet_shiftedPt_JetRelativeSampleUp;   //!
   TBranch        *b_type1_pfMet_shiftedPt_JetResDown;   //!
   TBranch        *b_type1_pfMet_shiftedPt_JetResUp;   //!
   TBranch        *b_type1_pfMet_shiftedPt_JetTotalDown;   //!
   TBranch        *b_type1_pfMet_shiftedPt_JetTotalUp;   //!
   TBranch        *b_type1_pfMet_shiftedPt_UnclusteredEnDown;   //!
   TBranch        *b_type1_pfMet_shiftedPt_UnclusteredEnUp;   //!
   TBranch        *b_vbfMass;   //!
   TBranch        *b_vbfMass_JERDown;   //!
   TBranch        *b_vbfMass_JERUp;   //!
   TBranch        *b_vbfMass_JetAbsoluteDown;   //!
   TBranch        *b_vbfMass_JetAbsoluteUp;   //!
   TBranch        *b_vbfMass_JetAbsoluteyearDown;   //!
   TBranch        *b_vbfMass_JetAbsoluteyearUp;   //!
   TBranch        *b_vbfMass_JetBBEC1Down;   //!
   TBranch        *b_vbfMass_JetBBEC1Up;   //!
   TBranch        *b_vbfMass_JetBBEC1yearDown;   //!
   TBranch        *b_vbfMass_JetBBEC1yearUp;   //!
   TBranch        *b_vbfMass_JetEC2Down;   //!
   TBranch        *b_vbfMass_JetEC2Up;   //!
   TBranch        *b_vbfMass_JetEC2yearDown;   //!
   TBranch        *b_vbfMass_JetEC2yearUp;   //!
   TBranch        *b_vbfMass_JetFlavorQCDDown;   //!
   TBranch        *b_vbfMass_JetFlavorQCDUp;   //!
   TBranch        *b_vbfMass_JetHFDown;   //!
   TBranch        *b_vbfMass_JetHFUp;   //!
   TBranch        *b_vbfMass_JetHFyearDown;   //!
   TBranch        *b_vbfMass_JetHFyearUp;   //!
   TBranch        *b_vbfMass_JetRelativeBalDown;   //!
   TBranch        *b_vbfMass_JetRelativeBalUp;   //!
   TBranch        *b_vbfMass_JetRelativeSampleDown;   //!
   TBranch        *b_vbfMass_JetRelativeSampleUp;   //!
   TBranch        *b_vbfMass_JetTotalDown;   //!
   TBranch        *b_vbfMass_JetTotalUp;   //!
   TBranch        *b_vispX;   //!
   TBranch        *b_vispY;   //!
   TBranch        *b_idx;   //!

   //   smhtt_2018(TTree *tree=0);
   smhtt_2018(const char* file1, const char* file2, string isMC, string SampleName);
   virtual ~smhtt_2018();
   virtual Int_t    Cut(Long64_t entry);
   virtual Int_t    GetEntry(Long64_t entry);
   virtual Long64_t LoadTree(Long64_t entry);
   virtual void     Init(TChain *tree, string isMC, string sampleName);
   //virtual void     Init(TTree *tree);
   virtual void     Loop(Long64_t maxEvents, int reportEvery, string SampleName, string _isMC_);
   virtual Bool_t   Notify();
   virtual void     Show(Long64_t entry = -1);
   virtual void BookHistos(const char* file1, const char* file2);
   virtual void fillHistos(int histoNumber, double event_weight,int higgs_index);
   virtual double delta_R(float phi1, float eta1, float phi2, float eta2);
   virtual float pTvecsum_F(TLorentzVector a, TLorentzVector b, TLorentzVector c);
   virtual double DeltaPhi(double phi1, double phi2);
   virtual float TMass_F(float LepPt, float LepPhi , float met, float metPhi);
   virtual void makeMyPlot( string histNumber , int tau1Index, int tau2Index, float event_weight);
   virtual double getScaleFactors(  double tau1pt, double tau2pt, double tau1eta, double tau2eta, int taudm, int tau1GenMatch, bool isFakebkg);
   TLorentzVector MetRecoilCorrections( TLorentzVector mymet );
   bool passBjetVeto();
   double higgsPtCorr();
   double get_zptmass_weight();
   bool isVBF();
   bool isZeroJet();
   double eleMuSF(int genmatch, double taueta);
   void applyTauESCorrections(TLorentzVector tauP4, float GenMatching, float DecayMode, TLorentzVector& tauP4Corr);

   
};

#endif

#ifdef smhtt_2018_cxx
smhtt_2018::smhtt_2018(const char* file1, const char* file2, string isMC, string sampleName)
{
  TChain *chain = new TChain("Ntuple");
  //TH1F *inspected_events = new TH1F("inspected_events","inspected_events", 5, 0, 5);
  //Run over all files in file1, presumably /hdfs/store/user/<etc>/ (must end with a /)                                                                       
  TString  FullPathInputFile = file1;
  chain->Add(FullPathInputFile);
  
  std::cout<<"********** for MC *********"<<std::endl;
  std::cout<<"All files added."<<std::endl;
  std::cout<<"Initializing chain."<<std::endl;
  Init(chain, isMC, sampleName);
  BookHistos(file1, file2);
 
}


smhtt_2018::~smhtt_2018()
{
   if (!fChain) return;
   delete fChain->GetCurrentFile();
   fileName->cd();
   fileName->Write();
   fileName->Close();
}

Int_t smhtt_2018::GetEntry(Long64_t entry)
{
// Read contents of entry.
   if (!fChain) return 0;
   return fChain->GetEntry(entry);
}
Long64_t smhtt_2018::LoadTree(Long64_t entry)
{
// Set the environment to read one entry
   if (!fChain) return -5;
   Long64_t centry = fChain->LoadTree(entry);
   if (centry < 0) return centry;
   if (fChain->GetTreeNumber() != fCurrent) {
      fCurrent = fChain->GetTreeNumber();
      Notify();
   }
   return centry;
}

void smhtt_2018::Init(TChain *tree, string _isMC_ , string sampleName)
{
   // The Init() function is called when the selector needs to initialize
   // a new tree or chain. Typically here the branch addresses and branch
   // pointers of the tree will be set.
   // It is normally not necessary to make changes to the generated
   // code, but the routine can be extended by the user if needed.
   // Init() will be called many times when running on PROOF
   // (once per file to be processed).
  TString isMC = TString(_isMC_);
  cout<<"from Init "<<isMC<<endl;
   // Set object pointer
  if( _isMC_=="MC" )
    is_MC=true;
  else
    is_MC=false;


  found_Wjet_sample=false;
  found_DYjet_sample=false;
  found_TTbar_sample=false;
  TString sample = TString(sampleName);
  if ( sample.Contains("WJetsToLNu") ||
       sample.Contains("W1JetsToLNu") ||
       sample.Contains("W2JetsToLNu") ||
       sample.Contains("W3JetsToLNu") ||
       sample.Contains("W4JetsToLNu") 	) {
    found_Wjet_sample=true;
    cout<<"****************** wjet sample found"<<endl;
  }
  if ( sample.Contains("DYJetsToLL") ||
       sample.Contains("DY1JetsToLL") ||
       sample.Contains("DY2JetsToLL") ||
       sample.Contains("DY3JetsToLL") ||
       sample.Contains("DY4JetsToLL") || 
       sample.Contains("EWKZ2Jets")
       ) {
    found_DYjet_sample=true;
    cout<<"****************** dyjet sample found"<<endl;
  }
  if ( sample.Contains("TTTo2L2Nu") ||
       sample.Contains("TTToHadronic") ||
       sample.Contains("TTToSemiLeptonic")
       ) {
    found_TTbar_sample=true;
    cout<<"****************** ttbar sample found"<<endl;
  }

   // Set branch addresses and branch pointers
   if (!tree) return;
   fChain = tree;
   fCurrent = -1;
   fChain->SetMakeClass(1);

   fChain->SetBranchAddress("DoubleMediumHPSTau35Pass", &DoubleMediumHPSTau35Pass, &b_DoubleMediumHPSTau35Pass);
   fChain->SetBranchAddress("DoubleMediumHPSTau35TightIDPass", &DoubleMediumHPSTau35TightIDPass, &b_DoubleMediumHPSTau35TightIDPass);
   fChain->SetBranchAddress("DoubleMediumHPSTau40Pass", &DoubleMediumHPSTau40Pass, &b_DoubleMediumHPSTau40Pass);
   fChain->SetBranchAddress("DoubleMediumHPSTau40TightIDPass", &DoubleMediumHPSTau40TightIDPass, &b_DoubleMediumHPSTau40TightIDPass);
   fChain->SetBranchAddress("DoubleMediumTau35Pass", &DoubleMediumTau35Pass, &b_DoubleMediumTau35Pass);
   fChain->SetBranchAddress("DoubleMediumTau35TightIDPass", &DoubleMediumTau35TightIDPass, &b_DoubleMediumTau35TightIDPass);
   fChain->SetBranchAddress("DoubleMediumTau40Pass", &DoubleMediumTau40Pass, &b_DoubleMediumTau40Pass);
   fChain->SetBranchAddress("DoubleMediumTau40TightIDPass", &DoubleMediumTau40TightIDPass, &b_DoubleMediumTau40TightIDPass);
   fChain->SetBranchAddress("DoubleTightHPSTau35Pass", &DoubleTightHPSTau35Pass, &b_DoubleTightHPSTau35Pass);
   fChain->SetBranchAddress("DoubleTightHPSTau35TightIDPass", &DoubleTightHPSTau35TightIDPass, &b_DoubleTightHPSTau35TightIDPass);
   fChain->SetBranchAddress("DoubleTightHPSTau40Pass", &DoubleTightHPSTau40Pass, &b_DoubleTightHPSTau40Pass);
   fChain->SetBranchAddress("DoubleTightHPSTau40TightIDPass", &DoubleTightHPSTau40TightIDPass, &b_DoubleTightHPSTau40TightIDPass);
   fChain->SetBranchAddress("DoubleTightTau35Pass", &DoubleTightTau35Pass, &b_DoubleTightTau35Pass);
   fChain->SetBranchAddress("DoubleTightTau35TightIDPass", &DoubleTightTau35TightIDPass, &b_DoubleTightTau35TightIDPass);
   fChain->SetBranchAddress("DoubleTightTau40Pass", &DoubleTightTau40Pass, &b_DoubleTightTau40Pass);
   fChain->SetBranchAddress("DoubleTightTau40TightIDPass", &DoubleTightTau40TightIDPass, &b_DoubleTightTau40TightIDPass);
   fChain->SetBranchAddress("Ele24LooseHPSTau30Pass", &Ele24LooseHPSTau30Pass, &b_Ele24LooseHPSTau30Pass);
   fChain->SetBranchAddress("Ele24LooseHPSTau30TightIDPass", &Ele24LooseHPSTau30TightIDPass, &b_Ele24LooseHPSTau30TightIDPass);
   fChain->SetBranchAddress("Ele24LooseTau30Pass", &Ele24LooseTau30Pass, &b_Ele24LooseTau30Pass);
   fChain->SetBranchAddress("Ele24LooseTau30TightIDPass", &Ele24LooseTau30TightIDPass, &b_Ele24LooseTau30TightIDPass);
   fChain->SetBranchAddress("Ele27WPTightPass", &Ele27WPTightPass, &b_Ele27WPTightPass);
   fChain->SetBranchAddress("Ele32WPTightPass", &Ele32WPTightPass, &b_Ele32WPTightPass);
   fChain->SetBranchAddress("Ele35WPTightPass", &Ele35WPTightPass, &b_Ele35WPTightPass);
   fChain->SetBranchAddress("Ele38WPTightPass", &Ele38WPTightPass, &b_Ele38WPTightPass);
   fChain->SetBranchAddress("Ele40WPTightPass", &Ele40WPTightPass, &b_Ele40WPTightPass);
   fChain->SetBranchAddress("EmbPtWeight", &EmbPtWeight, &b_EmbPtWeight);
   fChain->SetBranchAddress("Flag_BadChargedCandidateFilter", &Flag_BadChargedCandidateFilter, &b_Flag_BadChargedCandidateFilter);
   fChain->SetBranchAddress("Flag_BadPFMuonFilter", &Flag_BadPFMuonFilter, &b_Flag_BadPFMuonFilter);
   fChain->SetBranchAddress("Flag_EcalDeadCellTriggerPrimitiveFilter", &Flag_EcalDeadCellTriggerPrimitiveFilter, &b_Flag_EcalDeadCellTriggerPrimitiveFilter);
   fChain->SetBranchAddress("Flag_HBHENoiseFilter", &Flag_HBHENoiseFilter, &b_Flag_HBHENoiseFilter);
   fChain->SetBranchAddress("Flag_HBHENoiseIsoFilter", &Flag_HBHENoiseIsoFilter, &b_Flag_HBHENoiseIsoFilter);
   fChain->SetBranchAddress("Flag_badMuons", &Flag_badMuons, &b_Flag_badMuons);
   fChain->SetBranchAddress("Flag_duplicateMuons", &Flag_duplicateMuons, &b_Flag_duplicateMuons);
   fChain->SetBranchAddress("Flag_ecalBadCalibFilter", &Flag_ecalBadCalibFilter, &b_Flag_ecalBadCalibFilter);
   fChain->SetBranchAddress("Flag_ecalBadCalibReducedMINIAODFilter", &Flag_ecalBadCalibReducedMINIAODFilter, &b_Flag_ecalBadCalibReducedMINIAODFilter);
   fChain->SetBranchAddress("Flag_eeBadScFilter", &Flag_eeBadScFilter, &b_Flag_eeBadScFilter);
   fChain->SetBranchAddress("Flag_globalSuperTightHalo2016Filter", &Flag_globalSuperTightHalo2016Filter, &b_Flag_globalSuperTightHalo2016Filter);
   fChain->SetBranchAddress("Flag_globalTightHalo2016Filter", &Flag_globalTightHalo2016Filter, &b_Flag_globalTightHalo2016Filter);
   fChain->SetBranchAddress("Flag_goodVertices", &Flag_goodVertices, &b_Flag_goodVertices);
   fChain->SetBranchAddress("GenWeight", &GenWeight, &b_GenWeight);
   fChain->SetBranchAddress("HTTgenfinalstate", &HTTgenfinalstate, &b_HTTgenfinalstate);
   fChain->SetBranchAddress("IsoMu24Pass", &IsoMu24Pass, &b_IsoMu24Pass);
   fChain->SetBranchAddress("IsoMu27Pass", &IsoMu27Pass, &b_IsoMu27Pass);
   fChain->SetBranchAddress("Mu20LooseHPSTau27Pass", &Mu20LooseHPSTau27Pass, &b_Mu20LooseHPSTau27Pass);
   fChain->SetBranchAddress("Mu20LooseHPSTau27TightIDPass", &Mu20LooseHPSTau27TightIDPass, &b_Mu20LooseHPSTau27TightIDPass);
   fChain->SetBranchAddress("Mu20LooseTau27Pass", &Mu20LooseTau27Pass, &b_Mu20LooseTau27Pass);
   fChain->SetBranchAddress("Mu20LooseTau27TightIDPass", &Mu20LooseTau27TightIDPass, &b_Mu20LooseTau27TightIDPass);
   fChain->SetBranchAddress("Mu50Pass", &Mu50Pass, &b_Mu50Pass);
   fChain->SetBranchAddress("NUP", &NUP, &b_NUP);
   fChain->SetBranchAddress("Rivet_VEta", &Rivet_VEta, &b_Rivet_VEta);
   fChain->SetBranchAddress("Rivet_VPt", &Rivet_VPt, &b_Rivet_VPt);
   fChain->SetBranchAddress("Rivet_errorCode", &Rivet_errorCode, &b_Rivet_errorCode);
   fChain->SetBranchAddress("Rivet_higgsEta", &Rivet_higgsEta, &b_Rivet_higgsEta);
   fChain->SetBranchAddress("Rivet_higgsPt", &Rivet_higgsPt, &b_Rivet_higgsPt);
   fChain->SetBranchAddress("Rivet_higgsRapidity", &Rivet_higgsRapidity, &b_Rivet_higgsRapidity);
   fChain->SetBranchAddress("Rivet_j1eta", &Rivet_j1eta, &b_Rivet_j1eta);
   fChain->SetBranchAddress("Rivet_j1m", &Rivet_j1m, &b_Rivet_j1m);
   fChain->SetBranchAddress("Rivet_j1phi", &Rivet_j1phi, &b_Rivet_j1phi);
   fChain->SetBranchAddress("Rivet_j1pt", &Rivet_j1pt, &b_Rivet_j1pt);
   fChain->SetBranchAddress("Rivet_j2eta", &Rivet_j2eta, &b_Rivet_j2eta);
   fChain->SetBranchAddress("Rivet_j2m", &Rivet_j2m, &b_Rivet_j2m);
   fChain->SetBranchAddress("Rivet_j2phi", &Rivet_j2phi, &b_Rivet_j2phi);
   fChain->SetBranchAddress("Rivet_j2pt", &Rivet_j2pt, &b_Rivet_j2pt);
   fChain->SetBranchAddress("Rivet_nJets25", &Rivet_nJets25, &b_Rivet_nJets25);
   fChain->SetBranchAddress("Rivet_nJets30", &Rivet_nJets30, &b_Rivet_nJets30);
   fChain->SetBranchAddress("Rivet_p4decay_VEta", &Rivet_p4decay_VEta, &b_Rivet_p4decay_VEta);
   fChain->SetBranchAddress("Rivet_p4decay_VPt", &Rivet_p4decay_VPt, &b_Rivet_p4decay_VPt);
   fChain->SetBranchAddress("Rivet_prodMode", &Rivet_prodMode, &b_Rivet_prodMode);
   fChain->SetBranchAddress("Rivet_stage0_cat", &Rivet_stage0_cat, &b_Rivet_stage0_cat);
   fChain->SetBranchAddress("Rivet_stage1_1_cat_pTjet25GeV", &Rivet_stage1_1_cat_pTjet25GeV, &b_Rivet_stage1_1_cat_pTjet25GeV);
   fChain->SetBranchAddress("Rivet_stage1_1_cat_pTjet30GeV", &Rivet_stage1_1_cat_pTjet30GeV, &b_Rivet_stage1_1_cat_pTjet30GeV);
   fChain->SetBranchAddress("Rivet_stage1_1_fine_cat_pTjet25GeV", &Rivet_stage1_1_fine_cat_pTjet25GeV, &b_Rivet_stage1_1_fine_cat_pTjet25GeV);
   fChain->SetBranchAddress("Rivet_stage1_1_fine_cat_pTjet30GeV", &Rivet_stage1_1_fine_cat_pTjet30GeV, &b_Rivet_stage1_1_fine_cat_pTjet30GeV);
   fChain->SetBranchAddress("Rivet_stage1_cat_pTjet25GeV", &Rivet_stage1_cat_pTjet25GeV, &b_Rivet_stage1_cat_pTjet25GeV);
   fChain->SetBranchAddress("Rivet_stage1_cat_pTjet30GeV", &Rivet_stage1_cat_pTjet30GeV, &b_Rivet_stage1_cat_pTjet30GeV);
   fChain->SetBranchAddress("VBFDoubleLooseHPSTau20Pass", &VBFDoubleLooseHPSTau20Pass, &b_VBFDoubleLooseHPSTau20Pass);
   fChain->SetBranchAddress("VBFDoubleLooseTau20Pass", &VBFDoubleLooseTau20Pass, &b_VBFDoubleLooseTau20Pass);
   fChain->SetBranchAddress("VBFDoubleMediumHPSTau20Pass", &VBFDoubleMediumHPSTau20Pass, &b_VBFDoubleMediumHPSTau20Pass);
   fChain->SetBranchAddress("VBFDoubleMediumTau20Pass", &VBFDoubleMediumTau20Pass, &b_VBFDoubleMediumTau20Pass);
   fChain->SetBranchAddress("VBFDoubleTightHPSTau20Pass", &VBFDoubleTightHPSTau20Pass, &b_VBFDoubleTightHPSTau20Pass);
   fChain->SetBranchAddress("VBFDoubleTightTau20Pass", &VBFDoubleTightTau20Pass, &b_VBFDoubleTightTau20Pass);
   fChain->SetBranchAddress("bjetDeepCSVVeto20Loose_2016_DR0p5", &bjetDeepCSVVeto20Loose_2016_DR0p5, &b_bjetDeepCSVVeto20Loose_2016_DR0p5);
   fChain->SetBranchAddress("bjetDeepCSVVeto20Loose_2017_DR0p5", &bjetDeepCSVVeto20Loose_2017_DR0p5, &b_bjetDeepCSVVeto20Loose_2017_DR0p5);
   fChain->SetBranchAddress("bjetDeepCSVVeto20Loose_2018_DR0p5", &bjetDeepCSVVeto20Loose_2018_DR0p5, &b_bjetDeepCSVVeto20Loose_2018_DR0p5);
   fChain->SetBranchAddress("bjetDeepCSVVeto20Medium_2016_DR0", &bjetDeepCSVVeto20Medium_2016_DR0, &b_bjetDeepCSVVeto20Medium_2016_DR0);
   fChain->SetBranchAddress("bjetDeepCSVVeto20Medium_2016_DR0p5", &bjetDeepCSVVeto20Medium_2016_DR0p5, &b_bjetDeepCSVVeto20Medium_2016_DR0p5);
   fChain->SetBranchAddress("bjetDeepCSVVeto20Medium_2017_DR0", &bjetDeepCSVVeto20Medium_2017_DR0, &b_bjetDeepCSVVeto20Medium_2017_DR0);
   fChain->SetBranchAddress("bjetDeepCSVVeto20Medium_2017_DR0p5", &bjetDeepCSVVeto20Medium_2017_DR0p5, &b_bjetDeepCSVVeto20Medium_2017_DR0p5);
   fChain->SetBranchAddress("bjetDeepCSVVeto20Medium_2018_DR0", &bjetDeepCSVVeto20Medium_2018_DR0, &b_bjetDeepCSVVeto20Medium_2018_DR0);
   fChain->SetBranchAddress("bjetDeepCSVVeto20Medium_2018_DR0p5", &bjetDeepCSVVeto20Medium_2018_DR0p5, &b_bjetDeepCSVVeto20Medium_2018_DR0p5);
   fChain->SetBranchAddress("bjetDeepCSVVeto20Tight_2016_DR0p5", &bjetDeepCSVVeto20Tight_2016_DR0p5, &b_bjetDeepCSVVeto20Tight_2016_DR0p5);
   fChain->SetBranchAddress("bjetDeepCSVVeto20Tight_2017_DR0p5", &bjetDeepCSVVeto20Tight_2017_DR0p5, &b_bjetDeepCSVVeto20Tight_2017_DR0p5);
   fChain->SetBranchAddress("bjetDeepCSVVeto20Tight_2018_DR0p5", &bjetDeepCSVVeto20Tight_2018_DR0p5, &b_bjetDeepCSVVeto20Tight_2018_DR0p5);
   fChain->SetBranchAddress("deepcsvb1_btagscore", &deepcsvb1_btagscore, &b_deepcsvb1_btagscore);
   fChain->SetBranchAddress("deepcsvb1_eta", &deepcsvb1_eta, &b_deepcsvb1_eta);
   fChain->SetBranchAddress("deepcsvb1_hadronflavour", &deepcsvb1_hadronflavour, &b_deepcsvb1_hadronflavour);
   fChain->SetBranchAddress("deepcsvb1_m", &deepcsvb1_m, &b_deepcsvb1_m);
   fChain->SetBranchAddress("deepcsvb1_phi", &deepcsvb1_phi, &b_deepcsvb1_phi);
   fChain->SetBranchAddress("deepcsvb1_pt", &deepcsvb1_pt, &b_deepcsvb1_pt);
   fChain->SetBranchAddress("deepcsvb1_pt_JERDown", &deepcsvb1_pt_JERDown, &b_deepcsvb1_pt_JERDown);
   fChain->SetBranchAddress("deepcsvb1_pt_JERUp", &deepcsvb1_pt_JERUp, &b_deepcsvb1_pt_JERUp);
   fChain->SetBranchAddress("deepcsvb1_pt_JetAbsoluteDown", &deepcsvb1_pt_JetAbsoluteDown, &b_deepcsvb1_pt_JetAbsoluteDown);
   fChain->SetBranchAddress("deepcsvb1_pt_JetAbsoluteUp", &deepcsvb1_pt_JetAbsoluteUp, &b_deepcsvb1_pt_JetAbsoluteUp);
   fChain->SetBranchAddress("deepcsvb1_pt_JetAbsoluteyearDown", &deepcsvb1_pt_JetAbsoluteyearDown, &b_deepcsvb1_pt_JetAbsoluteyearDown);
   fChain->SetBranchAddress("deepcsvb1_pt_JetAbsoluteyearUp", &deepcsvb1_pt_JetAbsoluteyearUp, &b_deepcsvb1_pt_JetAbsoluteyearUp);
   fChain->SetBranchAddress("deepcsvb1_pt_JetBBEC1Down", &deepcsvb1_pt_JetBBEC1Down, &b_deepcsvb1_pt_JetBBEC1Down);
   fChain->SetBranchAddress("deepcsvb1_pt_JetBBEC1Up", &deepcsvb1_pt_JetBBEC1Up, &b_deepcsvb1_pt_JetBBEC1Up);
   fChain->SetBranchAddress("deepcsvb1_pt_JetBBEC1yearDown", &deepcsvb1_pt_JetBBEC1yearDown, &b_deepcsvb1_pt_JetBBEC1yearDown);
   fChain->SetBranchAddress("deepcsvb1_pt_JetBBEC1yearUp", &deepcsvb1_pt_JetBBEC1yearUp, &b_deepcsvb1_pt_JetBBEC1yearUp);
   fChain->SetBranchAddress("deepcsvb1_pt_JetEC2Down", &deepcsvb1_pt_JetEC2Down, &b_deepcsvb1_pt_JetEC2Down);
   fChain->SetBranchAddress("deepcsvb1_pt_JetEC2Up", &deepcsvb1_pt_JetEC2Up, &b_deepcsvb1_pt_JetEC2Up);
   fChain->SetBranchAddress("deepcsvb1_pt_JetEC2yearDown", &deepcsvb1_pt_JetEC2yearDown, &b_deepcsvb1_pt_JetEC2yearDown);
   fChain->SetBranchAddress("deepcsvb1_pt_JetEC2yearUp", &deepcsvb1_pt_JetEC2yearUp, &b_deepcsvb1_pt_JetEC2yearUp);
   fChain->SetBranchAddress("deepcsvb1_pt_JetFlavorQCDDown", &deepcsvb1_pt_JetFlavorQCDDown, &b_deepcsvb1_pt_JetFlavorQCDDown);
   fChain->SetBranchAddress("deepcsvb1_pt_JetFlavorQCDUp", &deepcsvb1_pt_JetFlavorQCDUp, &b_deepcsvb1_pt_JetFlavorQCDUp);
   fChain->SetBranchAddress("deepcsvb1_pt_JetHFDown", &deepcsvb1_pt_JetHFDown, &b_deepcsvb1_pt_JetHFDown);
   fChain->SetBranchAddress("deepcsvb1_pt_JetHFUp", &deepcsvb1_pt_JetHFUp, &b_deepcsvb1_pt_JetHFUp);
   fChain->SetBranchAddress("deepcsvb1_pt_JetHFyearDown", &deepcsvb1_pt_JetHFyearDown, &b_deepcsvb1_pt_JetHFyearDown);
   fChain->SetBranchAddress("deepcsvb1_pt_JetHFyearUp", &deepcsvb1_pt_JetHFyearUp, &b_deepcsvb1_pt_JetHFyearUp);
   fChain->SetBranchAddress("deepcsvb1_pt_JetRelativeBalDown", &deepcsvb1_pt_JetRelativeBalDown, &b_deepcsvb1_pt_JetRelativeBalDown);
   fChain->SetBranchAddress("deepcsvb1_pt_JetRelativeBalUp", &deepcsvb1_pt_JetRelativeBalUp, &b_deepcsvb1_pt_JetRelativeBalUp);
   fChain->SetBranchAddress("deepcsvb1_pt_JetRelativeSampleDown", &deepcsvb1_pt_JetRelativeSampleDown, &b_deepcsvb1_pt_JetRelativeSampleDown);
   fChain->SetBranchAddress("deepcsvb1_pt_JetRelativeSampleUp", &deepcsvb1_pt_JetRelativeSampleUp, &b_deepcsvb1_pt_JetRelativeSampleUp);
   fChain->SetBranchAddress("deepcsvb1_pt_JetTotalDown", &deepcsvb1_pt_JetTotalDown, &b_deepcsvb1_pt_JetTotalDown);
   fChain->SetBranchAddress("deepcsvb1_pt_JetTotalUp", &deepcsvb1_pt_JetTotalUp, &b_deepcsvb1_pt_JetTotalUp);
   fChain->SetBranchAddress("deepcsvb2_btagscore", &deepcsvb2_btagscore, &b_deepcsvb2_btagscore);
   fChain->SetBranchAddress("deepcsvb2_eta", &deepcsvb2_eta, &b_deepcsvb2_eta);
   fChain->SetBranchAddress("deepcsvb2_hadronflavour", &deepcsvb2_hadronflavour, &b_deepcsvb2_hadronflavour);
   fChain->SetBranchAddress("deepcsvb2_m", &deepcsvb2_m, &b_deepcsvb2_m);
   fChain->SetBranchAddress("deepcsvb2_phi", &deepcsvb2_phi, &b_deepcsvb2_phi);
   fChain->SetBranchAddress("deepcsvb2_pt", &deepcsvb2_pt, &b_deepcsvb2_pt);
   fChain->SetBranchAddress("deepcsvb2_pt_JERDown", &deepcsvb2_pt_JERDown, &b_deepcsvb2_pt_JERDown);
   fChain->SetBranchAddress("deepcsvb2_pt_JERUp", &deepcsvb2_pt_JERUp, &b_deepcsvb2_pt_JERUp);
   fChain->SetBranchAddress("deepcsvb2_pt_JetAbsoluteDown", &deepcsvb2_pt_JetAbsoluteDown, &b_deepcsvb2_pt_JetAbsoluteDown);
   fChain->SetBranchAddress("deepcsvb2_pt_JetAbsoluteUp", &deepcsvb2_pt_JetAbsoluteUp, &b_deepcsvb2_pt_JetAbsoluteUp);
   fChain->SetBranchAddress("deepcsvb2_pt_JetAbsoluteyearDown", &deepcsvb2_pt_JetAbsoluteyearDown, &b_deepcsvb2_pt_JetAbsoluteyearDown);
   fChain->SetBranchAddress("deepcsvb2_pt_JetAbsoluteyearUp", &deepcsvb2_pt_JetAbsoluteyearUp, &b_deepcsvb2_pt_JetAbsoluteyearUp);
   fChain->SetBranchAddress("deepcsvb2_pt_JetBBEC1Down", &deepcsvb2_pt_JetBBEC1Down, &b_deepcsvb2_pt_JetBBEC1Down);
   fChain->SetBranchAddress("deepcsvb2_pt_JetBBEC1Up", &deepcsvb2_pt_JetBBEC1Up, &b_deepcsvb2_pt_JetBBEC1Up);
   fChain->SetBranchAddress("deepcsvb2_pt_JetBBEC1yearDown", &deepcsvb2_pt_JetBBEC1yearDown, &b_deepcsvb2_pt_JetBBEC1yearDown);
   fChain->SetBranchAddress("deepcsvb2_pt_JetBBEC1yearUp", &deepcsvb2_pt_JetBBEC1yearUp, &b_deepcsvb2_pt_JetBBEC1yearUp);
   fChain->SetBranchAddress("deepcsvb2_pt_JetEC2Down", &deepcsvb2_pt_JetEC2Down, &b_deepcsvb2_pt_JetEC2Down);
   fChain->SetBranchAddress("deepcsvb2_pt_JetEC2Up", &deepcsvb2_pt_JetEC2Up, &b_deepcsvb2_pt_JetEC2Up);
   fChain->SetBranchAddress("deepcsvb2_pt_JetEC2yearDown", &deepcsvb2_pt_JetEC2yearDown, &b_deepcsvb2_pt_JetEC2yearDown);
   fChain->SetBranchAddress("deepcsvb2_pt_JetEC2yearUp", &deepcsvb2_pt_JetEC2yearUp, &b_deepcsvb2_pt_JetEC2yearUp);
   fChain->SetBranchAddress("deepcsvb2_pt_JetFlavorQCDDown", &deepcsvb2_pt_JetFlavorQCDDown, &b_deepcsvb2_pt_JetFlavorQCDDown);
   fChain->SetBranchAddress("deepcsvb2_pt_JetFlavorQCDUp", &deepcsvb2_pt_JetFlavorQCDUp, &b_deepcsvb2_pt_JetFlavorQCDUp);
   fChain->SetBranchAddress("deepcsvb2_pt_JetHFDown", &deepcsvb2_pt_JetHFDown, &b_deepcsvb2_pt_JetHFDown);
   fChain->SetBranchAddress("deepcsvb2_pt_JetHFUp", &deepcsvb2_pt_JetHFUp, &b_deepcsvb2_pt_JetHFUp);
   fChain->SetBranchAddress("deepcsvb2_pt_JetHFyearDown", &deepcsvb2_pt_JetHFyearDown, &b_deepcsvb2_pt_JetHFyearDown);
   fChain->SetBranchAddress("deepcsvb2_pt_JetHFyearUp", &deepcsvb2_pt_JetHFyearUp, &b_deepcsvb2_pt_JetHFyearUp);
   fChain->SetBranchAddress("deepcsvb2_pt_JetRelativeBalDown", &deepcsvb2_pt_JetRelativeBalDown, &b_deepcsvb2_pt_JetRelativeBalDown);
   fChain->SetBranchAddress("deepcsvb2_pt_JetRelativeBalUp", &deepcsvb2_pt_JetRelativeBalUp, &b_deepcsvb2_pt_JetRelativeBalUp);
   fChain->SetBranchAddress("deepcsvb2_pt_JetRelativeSampleDown", &deepcsvb2_pt_JetRelativeSampleDown, &b_deepcsvb2_pt_JetRelativeSampleDown);
   fChain->SetBranchAddress("deepcsvb2_pt_JetRelativeSampleUp", &deepcsvb2_pt_JetRelativeSampleUp, &b_deepcsvb2_pt_JetRelativeSampleUp);
   fChain->SetBranchAddress("deepcsvb2_pt_JetTotalDown", &deepcsvb2_pt_JetTotalDown, &b_deepcsvb2_pt_JetTotalDown);
   fChain->SetBranchAddress("deepcsvb2_pt_JetTotalUp", &deepcsvb2_pt_JetTotalUp, &b_deepcsvb2_pt_JetTotalUp);
   fChain->SetBranchAddress("deepflavourb1_btagscore", &deepflavourb1_btagscore, &b_deepflavourb1_btagscore);
   fChain->SetBranchAddress("deepflavourb1_eta", &deepflavourb1_eta, &b_deepflavourb1_eta);
   fChain->SetBranchAddress("deepflavourb1_hadronflavour", &deepflavourb1_hadronflavour, &b_deepflavourb1_hadronflavour);
   fChain->SetBranchAddress("deepflavourb1_m", &deepflavourb1_m, &b_deepflavourb1_m);
   fChain->SetBranchAddress("deepflavourb1_phi", &deepflavourb1_phi, &b_deepflavourb1_phi);
   fChain->SetBranchAddress("deepflavourb1_pt", &deepflavourb1_pt, &b_deepflavourb1_pt);
   fChain->SetBranchAddress("deepflavourb2_btagscore", &deepflavourb2_btagscore, &b_deepflavourb2_btagscore);
   fChain->SetBranchAddress("deepflavourb2_eta", &deepflavourb2_eta, &b_deepflavourb2_eta);
   fChain->SetBranchAddress("deepflavourb2_hadronflavour", &deepflavourb2_hadronflavour, &b_deepflavourb2_hadronflavour);
   fChain->SetBranchAddress("deepflavourb2_m", &deepflavourb2_m, &b_deepflavourb2_m);
   fChain->SetBranchAddress("deepflavourb2_phi", &deepflavourb2_phi, &b_deepflavourb2_phi);
   fChain->SetBranchAddress("deepflavourb2_pt", &deepflavourb2_pt, &b_deepflavourb2_pt);
   fChain->SetBranchAddress("dielectronVeto", &dielectronVeto, &b_dielectronVeto);
   fChain->SetBranchAddress("dimuonVeto", &dimuonVeto, &b_dimuonVeto);
   fChain->SetBranchAddress("doubleE_23_12DZPass", &doubleE_23_12DZPass, &b_doubleE_23_12DZPass);
   fChain->SetBranchAddress("doubleE_23_12Pass", &doubleE_23_12Pass, &b_doubleE_23_12Pass);
   fChain->SetBranchAddress("doubleMuDZPass", &doubleMuDZPass, &b_doubleMuDZPass);
   fChain->SetBranchAddress("doubleMuDZminMass3p8Pass", &doubleMuDZminMass3p8Pass, &b_doubleMuDZminMass3p8Pass);
   fChain->SetBranchAddress("doubleMuDZminMass8Pass", &doubleMuDZminMass8Pass, &b_doubleMuDZminMass8Pass);
   fChain->SetBranchAddress("doubleMuPass", &doubleMuPass, &b_doubleMuPass);
   fChain->SetBranchAddress("doubleMuTkMu17TkMu8DZPass", &doubleMuTkMu17TkMu8DZPass, &b_doubleMuTkMu17TkMu8DZPass);
   fChain->SetBranchAddress("doubleMuTkMu17TkMu8Pass", &doubleMuTkMu17TkMu8Pass, &b_doubleMuTkMu17TkMu8Pass);
   fChain->SetBranchAddress("doubleMuTkMu8DZPass", &doubleMuTkMu8DZPass, &b_doubleMuTkMu8DZPass);
   fChain->SetBranchAddress("doubleMuTkMu8Pass", &doubleMuTkMu8Pass, &b_doubleMuTkMu8Pass);
   fChain->SetBranchAddress("doubleTau35Pass", &doubleTau35Pass, &b_doubleTau35Pass);
   fChain->SetBranchAddress("doubleTauCmbIso35RegPass", &doubleTauCmbIso35RegPass, &b_doubleTauCmbIso35RegPass);
   fChain->SetBranchAddress("dressedElectron_pt", &dressedElectron_pt, &b_dressedElectron_pt);
   fChain->SetBranchAddress("dressedMuon_pt", &dressedMuon_pt, &b_dressedMuon_pt);
   fChain->SetBranchAddress("eVetoZTTp001dxyzR0", &eVetoZTTp001dxyzR0, &b_eVetoZTTp001dxyzR0);
   fChain->SetBranchAddress("evt", &evt, &b_evt);
   fChain->SetBranchAddress("genEta", &genEta, &b_genEta);
   fChain->SetBranchAddress("genHTT", &genHTT, &b_genHTT);
   fChain->SetBranchAddress("genM", &genM, &b_genM);
   fChain->SetBranchAddress("genMass", &genMass, &b_genMass);
   fChain->SetBranchAddress("genMetPhi", &genMetPhi, &b_genMetPhi);
   fChain->SetBranchAddress("genMetPt", &genMetPt, &b_genMetPt);
   fChain->SetBranchAddress("genPhi", &genPhi, &b_genPhi);
   fChain->SetBranchAddress("genpT", &genpT, &b_genpT);
   fChain->SetBranchAddress("genpX", &genpX, &b_genpX);
   fChain->SetBranchAddress("genpY", &genpY, &b_genpY);
   fChain->SetBranchAddress("gentau1_eta", &gentau1_eta, &b_gentau1_eta);
   fChain->SetBranchAddress("gentau1_pt", &gentau1_pt, &b_gentau1_pt);
   fChain->SetBranchAddress("gentau2_eta", &gentau2_eta, &b_gentau2_eta);
   fChain->SetBranchAddress("gentau2_pt", &gentau2_pt, &b_gentau2_pt);
   fChain->SetBranchAddress("isdata", &isdata, &b_isdata);
   fChain->SetBranchAddress("isembed", &isembed, &b_isembed);
   fChain->SetBranchAddress("j1eta", &j1eta, &b_j1eta);
   fChain->SetBranchAddress("j1phi", &j1phi, &b_j1phi);
   fChain->SetBranchAddress("j1pt", &j1pt, &b_j1pt);
   fChain->SetBranchAddress("j1pt_JERDown", &j1pt_JERDown, &b_j1pt_JERDown);
   fChain->SetBranchAddress("j1pt_JERUp", &j1pt_JERUp, &b_j1pt_JERUp);
   fChain->SetBranchAddress("j1pt_JetAbsoluteDown", &j1pt_JetAbsoluteDown, &b_j1pt_JetAbsoluteDown);
   fChain->SetBranchAddress("j1pt_JetAbsoluteUp", &j1pt_JetAbsoluteUp, &b_j1pt_JetAbsoluteUp);
   fChain->SetBranchAddress("j1pt_JetAbsoluteyearDown", &j1pt_JetAbsoluteyearDown, &b_j1pt_JetAbsoluteyearDown);
   fChain->SetBranchAddress("j1pt_JetAbsoluteyearUp", &j1pt_JetAbsoluteyearUp, &b_j1pt_JetAbsoluteyearUp);
   fChain->SetBranchAddress("j1pt_JetBBEC1Down", &j1pt_JetBBEC1Down, &b_j1pt_JetBBEC1Down);
   fChain->SetBranchAddress("j1pt_JetBBEC1Up", &j1pt_JetBBEC1Up, &b_j1pt_JetBBEC1Up);
   fChain->SetBranchAddress("j1pt_JetBBEC1yearDown", &j1pt_JetBBEC1yearDown, &b_j1pt_JetBBEC1yearDown);
   fChain->SetBranchAddress("j1pt_JetBBEC1yearUp", &j1pt_JetBBEC1yearUp, &b_j1pt_JetBBEC1yearUp);
   fChain->SetBranchAddress("j1pt_JetEC2Down", &j1pt_JetEC2Down, &b_j1pt_JetEC2Down);
   fChain->SetBranchAddress("j1pt_JetEC2Up", &j1pt_JetEC2Up, &b_j1pt_JetEC2Up);
   fChain->SetBranchAddress("j1pt_JetEC2yearDown", &j1pt_JetEC2yearDown, &b_j1pt_JetEC2yearDown);
   fChain->SetBranchAddress("j1pt_JetEC2yearUp", &j1pt_JetEC2yearUp, &b_j1pt_JetEC2yearUp);
   fChain->SetBranchAddress("j1pt_JetFlavorQCDDown", &j1pt_JetFlavorQCDDown, &b_j1pt_JetFlavorQCDDown);
   fChain->SetBranchAddress("j1pt_JetFlavorQCDUp", &j1pt_JetFlavorQCDUp, &b_j1pt_JetFlavorQCDUp);
   fChain->SetBranchAddress("j1pt_JetHFDown", &j1pt_JetHFDown, &b_j1pt_JetHFDown);
   fChain->SetBranchAddress("j1pt_JetHFUp", &j1pt_JetHFUp, &b_j1pt_JetHFUp);
   fChain->SetBranchAddress("j1pt_JetHFyearDown", &j1pt_JetHFyearDown, &b_j1pt_JetHFyearDown);
   fChain->SetBranchAddress("j1pt_JetHFyearUp", &j1pt_JetHFyearUp, &b_j1pt_JetHFyearUp);
   fChain->SetBranchAddress("j1pt_JetRelativeBalDown", &j1pt_JetRelativeBalDown, &b_j1pt_JetRelativeBalDown);
   fChain->SetBranchAddress("j1pt_JetRelativeBalUp", &j1pt_JetRelativeBalUp, &b_j1pt_JetRelativeBalUp);
   fChain->SetBranchAddress("j1pt_JetRelativeSampleDown", &j1pt_JetRelativeSampleDown, &b_j1pt_JetRelativeSampleDown);
   fChain->SetBranchAddress("j1pt_JetRelativeSampleUp", &j1pt_JetRelativeSampleUp, &b_j1pt_JetRelativeSampleUp);
   fChain->SetBranchAddress("j2eta", &j2eta, &b_j2eta);
   fChain->SetBranchAddress("j2phi", &j2phi, &b_j2phi);
   fChain->SetBranchAddress("j2pt", &j2pt, &b_j2pt);
   fChain->SetBranchAddress("j2pt_JERDown", &j2pt_JERDown, &b_j2pt_JERDown);
   fChain->SetBranchAddress("j2pt_JERUp", &j2pt_JERUp, &b_j2pt_JERUp);
   fChain->SetBranchAddress("j2pt_JetAbsoluteDown", &j2pt_JetAbsoluteDown, &b_j2pt_JetAbsoluteDown);
   fChain->SetBranchAddress("j2pt_JetAbsoluteUp", &j2pt_JetAbsoluteUp, &b_j2pt_JetAbsoluteUp);
   fChain->SetBranchAddress("j2pt_JetAbsoluteyearDown", &j2pt_JetAbsoluteyearDown, &b_j2pt_JetAbsoluteyearDown);
   fChain->SetBranchAddress("j2pt_JetAbsoluteyearUp", &j2pt_JetAbsoluteyearUp, &b_j2pt_JetAbsoluteyearUp);
   fChain->SetBranchAddress("j2pt_JetBBEC1Down", &j2pt_JetBBEC1Down, &b_j2pt_JetBBEC1Down);
   fChain->SetBranchAddress("j2pt_JetBBEC1Up", &j2pt_JetBBEC1Up, &b_j2pt_JetBBEC1Up);
   fChain->SetBranchAddress("j2pt_JetBBEC1yearDown", &j2pt_JetBBEC1yearDown, &b_j2pt_JetBBEC1yearDown);
   fChain->SetBranchAddress("j2pt_JetBBEC1yearUp", &j2pt_JetBBEC1yearUp, &b_j2pt_JetBBEC1yearUp);
   fChain->SetBranchAddress("j2pt_JetEC2Down", &j2pt_JetEC2Down, &b_j2pt_JetEC2Down);
   fChain->SetBranchAddress("j2pt_JetEC2Up", &j2pt_JetEC2Up, &b_j2pt_JetEC2Up);
   fChain->SetBranchAddress("j2pt_JetEC2yearDown", &j2pt_JetEC2yearDown, &b_j2pt_JetEC2yearDown);
   fChain->SetBranchAddress("j2pt_JetEC2yearUp", &j2pt_JetEC2yearUp, &b_j2pt_JetEC2yearUp);
   fChain->SetBranchAddress("j2pt_JetFlavorQCDDown", &j2pt_JetFlavorQCDDown, &b_j2pt_JetFlavorQCDDown);
   fChain->SetBranchAddress("j2pt_JetFlavorQCDUp", &j2pt_JetFlavorQCDUp, &b_j2pt_JetFlavorQCDUp);
   fChain->SetBranchAddress("j2pt_JetHFDown", &j2pt_JetHFDown, &b_j2pt_JetHFDown);
   fChain->SetBranchAddress("j2pt_JetHFUp", &j2pt_JetHFUp, &b_j2pt_JetHFUp);
   fChain->SetBranchAddress("j2pt_JetHFyearDown", &j2pt_JetHFyearDown, &b_j2pt_JetHFyearDown);
   fChain->SetBranchAddress("j2pt_JetHFyearUp", &j2pt_JetHFyearUp, &b_j2pt_JetHFyearUp);
   fChain->SetBranchAddress("j2pt_JetRelativeBalDown", &j2pt_JetRelativeBalDown, &b_j2pt_JetRelativeBalDown);
   fChain->SetBranchAddress("j2pt_JetRelativeBalUp", &j2pt_JetRelativeBalUp, &b_j2pt_JetRelativeBalUp);
   fChain->SetBranchAddress("j2pt_JetRelativeSampleDown", &j2pt_JetRelativeSampleDown, &b_j2pt_JetRelativeSampleDown);
   fChain->SetBranchAddress("j2pt_JetRelativeSampleUp", &j2pt_JetRelativeSampleUp, &b_j2pt_JetRelativeSampleUp);
   fChain->SetBranchAddress("jetVeto20", &jetVeto20, &b_jetVeto20);
   fChain->SetBranchAddress("jetVeto30", &jetVeto30, &b_jetVeto30);
   fChain->SetBranchAddress("jetVeto30_JERDown", &jetVeto30_JERDown, &b_jetVeto30_JERDown);
   fChain->SetBranchAddress("jetVeto30_JERUp", &jetVeto30_JERUp, &b_jetVeto30_JERUp);
   fChain->SetBranchAddress("jetVeto30_JetAbsoluteDown", &jetVeto30_JetAbsoluteDown, &b_jetVeto30_JetAbsoluteDown);
   fChain->SetBranchAddress("jetVeto30_JetAbsoluteUp", &jetVeto30_JetAbsoluteUp, &b_jetVeto30_JetAbsoluteUp);
   fChain->SetBranchAddress("jetVeto30_JetAbsoluteyearDown", &jetVeto30_JetAbsoluteyearDown, &b_jetVeto30_JetAbsoluteyearDown);
   fChain->SetBranchAddress("jetVeto30_JetAbsoluteyearUp", &jetVeto30_JetAbsoluteyearUp, &b_jetVeto30_JetAbsoluteyearUp);
   fChain->SetBranchAddress("jetVeto30_JetBBEC1Down", &jetVeto30_JetBBEC1Down, &b_jetVeto30_JetBBEC1Down);
   fChain->SetBranchAddress("jetVeto30_JetBBEC1Up", &jetVeto30_JetBBEC1Up, &b_jetVeto30_JetBBEC1Up);
   fChain->SetBranchAddress("jetVeto30_JetBBEC1yearDown", &jetVeto30_JetBBEC1yearDown, &b_jetVeto30_JetBBEC1yearDown);
   fChain->SetBranchAddress("jetVeto30_JetBBEC1yearUp", &jetVeto30_JetBBEC1yearUp, &b_jetVeto30_JetBBEC1yearUp);
   fChain->SetBranchAddress("jetVeto30_JetEC2Down", &jetVeto30_JetEC2Down, &b_jetVeto30_JetEC2Down);
   fChain->SetBranchAddress("jetVeto30_JetEC2Up", &jetVeto30_JetEC2Up, &b_jetVeto30_JetEC2Up);
   fChain->SetBranchAddress("jetVeto30_JetEC2yearDown", &jetVeto30_JetEC2yearDown, &b_jetVeto30_JetEC2yearDown);
   fChain->SetBranchAddress("jetVeto30_JetEC2yearUp", &jetVeto30_JetEC2yearUp, &b_jetVeto30_JetEC2yearUp);
   fChain->SetBranchAddress("jetVeto30_JetEnDown", &jetVeto30_JetEnDown, &b_jetVeto30_JetEnDown);
   fChain->SetBranchAddress("jetVeto30_JetEnUp", &jetVeto30_JetEnUp, &b_jetVeto30_JetEnUp);
   fChain->SetBranchAddress("jetVeto30_JetFlavorQCDDown", &jetVeto30_JetFlavorQCDDown, &b_jetVeto30_JetFlavorQCDDown);
   fChain->SetBranchAddress("jetVeto30_JetFlavorQCDUp", &jetVeto30_JetFlavorQCDUp, &b_jetVeto30_JetFlavorQCDUp);
   fChain->SetBranchAddress("jetVeto30_JetHFDown", &jetVeto30_JetHFDown, &b_jetVeto30_JetHFDown);
   fChain->SetBranchAddress("jetVeto30_JetHFUp", &jetVeto30_JetHFUp, &b_jetVeto30_JetHFUp);
   fChain->SetBranchAddress("jetVeto30_JetHFyearDown", &jetVeto30_JetHFyearDown, &b_jetVeto30_JetHFyearDown);
   fChain->SetBranchAddress("jetVeto30_JetHFyearUp", &jetVeto30_JetHFyearUp, &b_jetVeto30_JetHFyearUp);
   fChain->SetBranchAddress("jetVeto30_JetRelativeBalDown", &jetVeto30_JetRelativeBalDown, &b_jetVeto30_JetRelativeBalDown);
   fChain->SetBranchAddress("jetVeto30_JetRelativeBalUp", &jetVeto30_JetRelativeBalUp, &b_jetVeto30_JetRelativeBalUp);
   fChain->SetBranchAddress("jetVeto30_JetRelativeSampleDown", &jetVeto30_JetRelativeSampleDown, &b_jetVeto30_JetRelativeSampleDown);
   fChain->SetBranchAddress("jetVeto30_JetRelativeSampleUp", &jetVeto30_JetRelativeSampleUp, &b_jetVeto30_JetRelativeSampleUp);
   fChain->SetBranchAddress("jetVeto30_JetTotalDown", &jetVeto30_JetTotalDown, &b_jetVeto30_JetTotalDown);
   fChain->SetBranchAddress("jetVeto30_JetTotalUp", &jetVeto30_JetTotalUp, &b_jetVeto30_JetTotalUp);
   fChain->SetBranchAddress("lumi", &lumi, &b_lumi);
   fChain->SetBranchAddress("metcov00", &metcov00, &b_metcov00);
   fChain->SetBranchAddress("metcov01", &metcov01, &b_metcov01);
   fChain->SetBranchAddress("metcov10", &metcov10, &b_metcov10);
   fChain->SetBranchAddress("metcov11", &metcov11, &b_metcov11);
   fChain->SetBranchAddress("mu12e23DZPass", &mu12e23DZPass, &b_mu12e23DZPass);
   fChain->SetBranchAddress("mu12e23Pass", &mu12e23Pass, &b_mu12e23Pass);
   fChain->SetBranchAddress("mu23e12DZPass", &mu23e12DZPass, &b_mu23e12DZPass);
   fChain->SetBranchAddress("mu23e12Pass", &mu23e12Pass, &b_mu23e12Pass);
   fChain->SetBranchAddress("mu8e23DZPass", &mu8e23DZPass, &b_mu8e23DZPass);
   fChain->SetBranchAddress("mu8e23Pass", &mu8e23Pass, &b_mu8e23Pass);
   fChain->SetBranchAddress("muVetoZTTp001dxyzR0", &muVetoZTTp001dxyzR0, &b_muVetoZTTp001dxyzR0);
   fChain->SetBranchAddress("nTruePU", &nTruePU, &b_nTruePU);
   fChain->SetBranchAddress("npNLO", &npNLO, &b_npNLO);
   fChain->SetBranchAddress("numGenJets", &numGenJets, &b_numGenJets);
   fChain->SetBranchAddress("nvtx", &nvtx, &b_nvtx);
   fChain->SetBranchAddress("prefiring_weight", &prefiring_weight, &b_prefiring_weight);
   fChain->SetBranchAddress("prefiring_weight_down", &prefiring_weight_down, &b_prefiring_weight_down);
   fChain->SetBranchAddress("prefiring_weight_up", &prefiring_weight_up, &b_prefiring_weight_up);
   fChain->SetBranchAddress("puppiMetEt", &puppiMetEt, &b_puppiMetEt);
   fChain->SetBranchAddress("puppiMetPhi", &puppiMetPhi, &b_puppiMetPhi);
   fChain->SetBranchAddress("puppiMet_shiftedPhi_JetAbsoluteDown", &puppiMet_shiftedPhi_JetAbsoluteDown, &b_puppiMet_shiftedPhi_JetAbsoluteDown);
   fChain->SetBranchAddress("puppiMet_shiftedPhi_JetAbsoluteUp", &puppiMet_shiftedPhi_JetAbsoluteUp, &b_puppiMet_shiftedPhi_JetAbsoluteUp);
   fChain->SetBranchAddress("puppiMet_shiftedPhi_JetAbsoluteyearDown", &puppiMet_shiftedPhi_JetAbsoluteyearDown, &b_puppiMet_shiftedPhi_JetAbsoluteyearDown);
   fChain->SetBranchAddress("puppiMet_shiftedPhi_JetAbsoluteyearUp", &puppiMet_shiftedPhi_JetAbsoluteyearUp, &b_puppiMet_shiftedPhi_JetAbsoluteyearUp);
   fChain->SetBranchAddress("puppiMet_shiftedPhi_JetBBEC1Down", &puppiMet_shiftedPhi_JetBBEC1Down, &b_puppiMet_shiftedPhi_JetBBEC1Down);
   fChain->SetBranchAddress("puppiMet_shiftedPhi_JetBBEC1Up", &puppiMet_shiftedPhi_JetBBEC1Up, &b_puppiMet_shiftedPhi_JetBBEC1Up);
   fChain->SetBranchAddress("puppiMet_shiftedPhi_JetBBEC1yearDown", &puppiMet_shiftedPhi_JetBBEC1yearDown, &b_puppiMet_shiftedPhi_JetBBEC1yearDown);
   fChain->SetBranchAddress("puppiMet_shiftedPhi_JetBBEC1yearUp", &puppiMet_shiftedPhi_JetBBEC1yearUp, &b_puppiMet_shiftedPhi_JetBBEC1yearUp);
   fChain->SetBranchAddress("puppiMet_shiftedPhi_JetEC2Down", &puppiMet_shiftedPhi_JetEC2Down, &b_puppiMet_shiftedPhi_JetEC2Down);
   fChain->SetBranchAddress("puppiMet_shiftedPhi_JetEC2Up", &puppiMet_shiftedPhi_JetEC2Up, &b_puppiMet_shiftedPhi_JetEC2Up);
   fChain->SetBranchAddress("puppiMet_shiftedPhi_JetEC2yearDown", &puppiMet_shiftedPhi_JetEC2yearDown, &b_puppiMet_shiftedPhi_JetEC2yearDown);
   fChain->SetBranchAddress("puppiMet_shiftedPhi_JetEC2yearUp", &puppiMet_shiftedPhi_JetEC2yearUp, &b_puppiMet_shiftedPhi_JetEC2yearUp);
   fChain->SetBranchAddress("puppiMet_shiftedPhi_JetEnDown", &puppiMet_shiftedPhi_JetEnDown, &b_puppiMet_shiftedPhi_JetEnDown);
   fChain->SetBranchAddress("puppiMet_shiftedPhi_JetEnUp", &puppiMet_shiftedPhi_JetEnUp, &b_puppiMet_shiftedPhi_JetEnUp);
   fChain->SetBranchAddress("puppiMet_shiftedPhi_JetFlavorQCDDown", &puppiMet_shiftedPhi_JetFlavorQCDDown, &b_puppiMet_shiftedPhi_JetFlavorQCDDown);
   fChain->SetBranchAddress("puppiMet_shiftedPhi_JetFlavorQCDUp", &puppiMet_shiftedPhi_JetFlavorQCDUp, &b_puppiMet_shiftedPhi_JetFlavorQCDUp);
   fChain->SetBranchAddress("puppiMet_shiftedPhi_JetHFDown", &puppiMet_shiftedPhi_JetHFDown, &b_puppiMet_shiftedPhi_JetHFDown);
   fChain->SetBranchAddress("puppiMet_shiftedPhi_JetHFUp", &puppiMet_shiftedPhi_JetHFUp, &b_puppiMet_shiftedPhi_JetHFUp);
   fChain->SetBranchAddress("puppiMet_shiftedPhi_JetHFyearDown", &puppiMet_shiftedPhi_JetHFyearDown, &b_puppiMet_shiftedPhi_JetHFyearDown);
   fChain->SetBranchAddress("puppiMet_shiftedPhi_JetHFyearUp", &puppiMet_shiftedPhi_JetHFyearUp, &b_puppiMet_shiftedPhi_JetHFyearUp);
   fChain->SetBranchAddress("puppiMet_shiftedPhi_JetRelativeBalDown", &puppiMet_shiftedPhi_JetRelativeBalDown, &b_puppiMet_shiftedPhi_JetRelativeBalDown);
   fChain->SetBranchAddress("puppiMet_shiftedPhi_JetRelativeBalUp", &puppiMet_shiftedPhi_JetRelativeBalUp, &b_puppiMet_shiftedPhi_JetRelativeBalUp);
   fChain->SetBranchAddress("puppiMet_shiftedPhi_JetRelativeSampleDown", &puppiMet_shiftedPhi_JetRelativeSampleDown, &b_puppiMet_shiftedPhi_JetRelativeSampleDown);
   fChain->SetBranchAddress("puppiMet_shiftedPhi_JetRelativeSampleUp", &puppiMet_shiftedPhi_JetRelativeSampleUp, &b_puppiMet_shiftedPhi_JetRelativeSampleUp);
   fChain->SetBranchAddress("puppiMet_shiftedPhi_JetTotalDown", &puppiMet_shiftedPhi_JetTotalDown, &b_puppiMet_shiftedPhi_JetTotalDown);
   fChain->SetBranchAddress("puppiMet_shiftedPhi_JetTotalUp", &puppiMet_shiftedPhi_JetTotalUp, &b_puppiMet_shiftedPhi_JetTotalUp);
   fChain->SetBranchAddress("puppiMet_shiftedPhi_UnclusteredEnDown", &puppiMet_shiftedPhi_UnclusteredEnDown, &b_puppiMet_shiftedPhi_UnclusteredEnDown);
   fChain->SetBranchAddress("puppiMet_shiftedPhi_UnclusteredEnUp", &puppiMet_shiftedPhi_UnclusteredEnUp, &b_puppiMet_shiftedPhi_UnclusteredEnUp);
   fChain->SetBranchAddress("puppiMet_shiftedPt_JetAbsoluteDown", &puppiMet_shiftedPt_JetAbsoluteDown, &b_puppiMet_shiftedPt_JetAbsoluteDown);
   fChain->SetBranchAddress("puppiMet_shiftedPt_JetAbsoluteUp", &puppiMet_shiftedPt_JetAbsoluteUp, &b_puppiMet_shiftedPt_JetAbsoluteUp);
   fChain->SetBranchAddress("puppiMet_shiftedPt_JetAbsoluteyearDown", &puppiMet_shiftedPt_JetAbsoluteyearDown, &b_puppiMet_shiftedPt_JetAbsoluteyearDown);
   fChain->SetBranchAddress("puppiMet_shiftedPt_JetAbsoluteyearUp", &puppiMet_shiftedPt_JetAbsoluteyearUp, &b_puppiMet_shiftedPt_JetAbsoluteyearUp);
   fChain->SetBranchAddress("puppiMet_shiftedPt_JetBBEC1Down", &puppiMet_shiftedPt_JetBBEC1Down, &b_puppiMet_shiftedPt_JetBBEC1Down);
   fChain->SetBranchAddress("puppiMet_shiftedPt_JetBBEC1Up", &puppiMet_shiftedPt_JetBBEC1Up, &b_puppiMet_shiftedPt_JetBBEC1Up);
   fChain->SetBranchAddress("puppiMet_shiftedPt_JetBBEC1yearDown", &puppiMet_shiftedPt_JetBBEC1yearDown, &b_puppiMet_shiftedPt_JetBBEC1yearDown);
   fChain->SetBranchAddress("puppiMet_shiftedPt_JetBBEC1yearUp", &puppiMet_shiftedPt_JetBBEC1yearUp, &b_puppiMet_shiftedPt_JetBBEC1yearUp);
   fChain->SetBranchAddress("puppiMet_shiftedPt_JetEC2Down", &puppiMet_shiftedPt_JetEC2Down, &b_puppiMet_shiftedPt_JetEC2Down);
   fChain->SetBranchAddress("puppiMet_shiftedPt_JetEC2Up", &puppiMet_shiftedPt_JetEC2Up, &b_puppiMet_shiftedPt_JetEC2Up);
   fChain->SetBranchAddress("puppiMet_shiftedPt_JetEC2yearDown", &puppiMet_shiftedPt_JetEC2yearDown, &b_puppiMet_shiftedPt_JetEC2yearDown);
   fChain->SetBranchAddress("puppiMet_shiftedPt_JetEC2yearUp", &puppiMet_shiftedPt_JetEC2yearUp, &b_puppiMet_shiftedPt_JetEC2yearUp);
   fChain->SetBranchAddress("puppiMet_shiftedPt_JetEnDown", &puppiMet_shiftedPt_JetEnDown, &b_puppiMet_shiftedPt_JetEnDown);
   fChain->SetBranchAddress("puppiMet_shiftedPt_JetEnUp", &puppiMet_shiftedPt_JetEnUp, &b_puppiMet_shiftedPt_JetEnUp);
   fChain->SetBranchAddress("puppiMet_shiftedPt_JetFlavorQCDDown", &puppiMet_shiftedPt_JetFlavorQCDDown, &b_puppiMet_shiftedPt_JetFlavorQCDDown);
   fChain->SetBranchAddress("puppiMet_shiftedPt_JetFlavorQCDUp", &puppiMet_shiftedPt_JetFlavorQCDUp, &b_puppiMet_shiftedPt_JetFlavorQCDUp);
   fChain->SetBranchAddress("puppiMet_shiftedPt_JetHFDown", &puppiMet_shiftedPt_JetHFDown, &b_puppiMet_shiftedPt_JetHFDown);
   fChain->SetBranchAddress("puppiMet_shiftedPt_JetHFUp", &puppiMet_shiftedPt_JetHFUp, &b_puppiMet_shiftedPt_JetHFUp);
   fChain->SetBranchAddress("puppiMet_shiftedPt_JetHFyearDown", &puppiMet_shiftedPt_JetHFyearDown, &b_puppiMet_shiftedPt_JetHFyearDown);
   fChain->SetBranchAddress("puppiMet_shiftedPt_JetHFyearUp", &puppiMet_shiftedPt_JetHFyearUp, &b_puppiMet_shiftedPt_JetHFyearUp);
   fChain->SetBranchAddress("puppiMet_shiftedPt_JetRelativeBalDown", &puppiMet_shiftedPt_JetRelativeBalDown, &b_puppiMet_shiftedPt_JetRelativeBalDown);
   fChain->SetBranchAddress("puppiMet_shiftedPt_JetRelativeBalUp", &puppiMet_shiftedPt_JetRelativeBalUp, &b_puppiMet_shiftedPt_JetRelativeBalUp);
   fChain->SetBranchAddress("puppiMet_shiftedPt_JetRelativeSampleDown", &puppiMet_shiftedPt_JetRelativeSampleDown, &b_puppiMet_shiftedPt_JetRelativeSampleDown);
   fChain->SetBranchAddress("puppiMet_shiftedPt_JetRelativeSampleUp", &puppiMet_shiftedPt_JetRelativeSampleUp, &b_puppiMet_shiftedPt_JetRelativeSampleUp);
   fChain->SetBranchAddress("puppiMet_shiftedPt_JetTotalDown", &puppiMet_shiftedPt_JetTotalDown, &b_puppiMet_shiftedPt_JetTotalDown);
   fChain->SetBranchAddress("puppiMet_shiftedPt_JetTotalUp", &puppiMet_shiftedPt_JetTotalUp, &b_puppiMet_shiftedPt_JetTotalUp);
   fChain->SetBranchAddress("puppiMet_shiftedPt_UnclusteredEnDown", &puppiMet_shiftedPt_UnclusteredEnDown, &b_puppiMet_shiftedPt_UnclusteredEnDown);
   fChain->SetBranchAddress("puppiMet_shiftedPt_UnclusteredEnUp", &puppiMet_shiftedPt_UnclusteredEnUp, &b_puppiMet_shiftedPt_UnclusteredEnUp);
   fChain->SetBranchAddress("puppimetcov00", &puppimetcov00, &b_puppimetcov00);
   fChain->SetBranchAddress("puppimetcov01", &puppimetcov01, &b_puppimetcov01);
   fChain->SetBranchAddress("puppimetcov10", &puppimetcov10, &b_puppimetcov10);
   fChain->SetBranchAddress("puppimetcov11", &puppimetcov11, &b_puppimetcov11);
   fChain->SetBranchAddress("raw_pfMetEt", &raw_pfMetEt, &b_raw_pfMetEt);
   fChain->SetBranchAddress("raw_pfMetPhi", &raw_pfMetPhi, &b_raw_pfMetPhi);
   fChain->SetBranchAddress("rho", &rho, &b_rho);
   fChain->SetBranchAddress("run", &run, &b_run);
   fChain->SetBranchAddress("singleE25eta2p1TightPass", &singleE25eta2p1TightPass, &b_singleE25eta2p1TightPass);
   fChain->SetBranchAddress("singleIsoMu22Pass", &singleIsoMu22Pass, &b_singleIsoMu22Pass);
   fChain->SetBranchAddress("singleIsoMu22eta2p1Pass", &singleIsoMu22eta2p1Pass, &b_singleIsoMu22eta2p1Pass);
   fChain->SetBranchAddress("singleIsoTkMu22Pass", &singleIsoTkMu22Pass, &b_singleIsoTkMu22Pass);
   fChain->SetBranchAddress("singleIsoTkMu22eta2p1Pass", &singleIsoTkMu22eta2p1Pass, &b_singleIsoTkMu22eta2p1Pass);
   fChain->SetBranchAddress("singleMu19eta2p1LooseTau20Pass", &singleMu19eta2p1LooseTau20Pass, &b_singleMu19eta2p1LooseTau20Pass);
   fChain->SetBranchAddress("singleMu19eta2p1LooseTau20singleL1Pass", &singleMu19eta2p1LooseTau20singleL1Pass, &b_singleMu19eta2p1LooseTau20singleL1Pass);
   fChain->SetBranchAddress("t1AgainstMuonLoose3", &t1AgainstMuonLoose3, &b_t1AgainstMuonLoose3);
   fChain->SetBranchAddress("t1AgainstMuonTight3", &t1AgainstMuonTight3, &b_t1AgainstMuonTight3);
   fChain->SetBranchAddress("t1ByCombinedIsolationDeltaBetaCorrRaw3Hits", &t1ByCombinedIsolationDeltaBetaCorrRaw3Hits, &b_t1ByCombinedIsolationDeltaBetaCorrRaw3Hits);
   fChain->SetBranchAddress("t1ByLooseCombinedIsolationDeltaBetaCorr3Hits", &t1ByLooseCombinedIsolationDeltaBetaCorr3Hits, &b_t1ByLooseCombinedIsolationDeltaBetaCorr3Hits);
   fChain->SetBranchAddress("t1ByMediumCombinedIsolationDeltaBetaCorr3Hits", &t1ByMediumCombinedIsolationDeltaBetaCorr3Hits, &b_t1ByMediumCombinedIsolationDeltaBetaCorr3Hits);
   fChain->SetBranchAddress("t1ByPhotonPtSumOutsideSignalCone", &t1ByPhotonPtSumOutsideSignalCone, &b_t1ByPhotonPtSumOutsideSignalCone);
   fChain->SetBranchAddress("t1ByTightCombinedIsolationDeltaBetaCorr3Hits", &t1ByTightCombinedIsolationDeltaBetaCorr3Hits, &b_t1ByTightCombinedIsolationDeltaBetaCorr3Hits);
   fChain->SetBranchAddress("t1Charge", &t1Charge, &b_t1Charge);
   fChain->SetBranchAddress("t1ChargedIsoPtSum", &t1ChargedIsoPtSum, &b_t1ChargedIsoPtSum);
   fChain->SetBranchAddress("t1ChargedIsoPtSumdR03", &t1ChargedIsoPtSumdR03, &b_t1ChargedIsoPtSumdR03);
   fChain->SetBranchAddress("t1DecayMode", &t1DecayMode, &b_t1DecayMode);
   fChain->SetBranchAddress("t1DecayModeFinding", &t1DecayModeFinding, &b_t1DecayModeFinding);
   fChain->SetBranchAddress("t1DecayModeFindingNewDMs", &t1DecayModeFindingNewDMs, &b_t1DecayModeFindingNewDMs);
   fChain->SetBranchAddress("t1DeepTau2017v2p1VSeraw", &t1DeepTau2017v2p1VSeraw, &b_t1DeepTau2017v2p1VSeraw);
   fChain->SetBranchAddress("t1DeepTau2017v2p1VSjetraw", &t1DeepTau2017v2p1VSjetraw, &b_t1DeepTau2017v2p1VSjetraw);
   fChain->SetBranchAddress("t1DeepTau2017v2p1VSmuraw", &t1DeepTau2017v2p1VSmuraw, &b_t1DeepTau2017v2p1VSmuraw);
   fChain->SetBranchAddress("t1Eta", &t1Eta, &b_t1Eta);
   fChain->SetBranchAddress("t1FootprintCorrection", &t1FootprintCorrection, &b_t1FootprintCorrection);
   fChain->SetBranchAddress("t1FootprintCorrectiondR03", &t1FootprintCorrectiondR03, &b_t1FootprintCorrectiondR03);
   fChain->SetBranchAddress("t1GenCharge", &t1GenCharge, &b_t1GenCharge);
   fChain->SetBranchAddress("t1GenDecayMode", &t1GenDecayMode, &b_t1GenDecayMode);
   fChain->SetBranchAddress("t1GenEnergy", &t1GenEnergy, &b_t1GenEnergy);
   fChain->SetBranchAddress("t1GenEta", &t1GenEta, &b_t1GenEta);
   fChain->SetBranchAddress("t1GenJetEta", &t1GenJetEta, &b_t1GenJetEta);
   fChain->SetBranchAddress("t1GenJetPt", &t1GenJetPt, &b_t1GenJetPt);
   fChain->SetBranchAddress("t1GenPdgId", &t1GenPdgId, &b_t1GenPdgId);
   fChain->SetBranchAddress("t1GenPhi", &t1GenPhi, &b_t1GenPhi);
   fChain->SetBranchAddress("t1GenPt", &t1GenPt, &b_t1GenPt);
   fChain->SetBranchAddress("t1GenStatus", &t1GenStatus, &b_t1GenStatus);
   fChain->SetBranchAddress("t1L1IsoTauMatch", &t1L1IsoTauMatch, &b_t1L1IsoTauMatch);
   fChain->SetBranchAddress("t1L1IsoTauPt", &t1L1IsoTauPt, &b_t1L1IsoTauPt);
   fChain->SetBranchAddress("t1LeadTrackPt", &t1LeadTrackPt, &b_t1LeadTrackPt);
   fChain->SetBranchAddress("t1LooseDeepTau2017v2p1VSe", &t1LooseDeepTau2017v2p1VSe, &b_t1LooseDeepTau2017v2p1VSe);
   fChain->SetBranchAddress("t1LooseDeepTau2017v2p1VSjet", &t1LooseDeepTau2017v2p1VSjet, &b_t1LooseDeepTau2017v2p1VSjet);
   fChain->SetBranchAddress("t1LooseDeepTau2017v2p1VSmu", &t1LooseDeepTau2017v2p1VSmu, &b_t1LooseDeepTau2017v2p1VSmu);
   fChain->SetBranchAddress("t1Mass", &t1Mass, &b_t1Mass);
   fChain->SetBranchAddress("t1MatchEmbeddedFilterEle24Tau30", &t1MatchEmbeddedFilterEle24Tau30, &b_t1MatchEmbeddedFilterEle24Tau30);
   fChain->SetBranchAddress("t1MatchEmbeddedFilterMu19Tau20", &t1MatchEmbeddedFilterMu19Tau20, &b_t1MatchEmbeddedFilterMu19Tau20);
   fChain->SetBranchAddress("t1MatchEmbeddedFilterMu20HPSTau27", &t1MatchEmbeddedFilterMu20HPSTau27, &b_t1MatchEmbeddedFilterMu20HPSTau27);
   fChain->SetBranchAddress("t1MatchEmbeddedFilterMu20Tau27", &t1MatchEmbeddedFilterMu20Tau27, &b_t1MatchEmbeddedFilterMu20Tau27);
   fChain->SetBranchAddress("t1MatchEmbeddedFilterTauTau", &t1MatchEmbeddedFilterTauTau, &b_t1MatchEmbeddedFilterTauTau);
   fChain->SetBranchAddress("t1MatchEmbeddedFilterTauTau2016", &t1MatchEmbeddedFilterTauTau2016, &b_t1MatchEmbeddedFilterTauTau2016);
   fChain->SetBranchAddress("t1MatchesDoubleMediumCombinedIsoTau35Path", &t1MatchesDoubleMediumCombinedIsoTau35Path, &b_t1MatchesDoubleMediumCombinedIsoTau35Path);
   fChain->SetBranchAddress("t1MatchesDoubleMediumHPSTau35Filter", &t1MatchesDoubleMediumHPSTau35Filter, &b_t1MatchesDoubleMediumHPSTau35Filter);
   fChain->SetBranchAddress("t1MatchesDoubleMediumHPSTau35Path", &t1MatchesDoubleMediumHPSTau35Path, &b_t1MatchesDoubleMediumHPSTau35Path);
   fChain->SetBranchAddress("t1MatchesDoubleMediumHPSTau40Filter", &t1MatchesDoubleMediumHPSTau40Filter, &b_t1MatchesDoubleMediumHPSTau40Filter);
   fChain->SetBranchAddress("t1MatchesDoubleMediumHPSTau40Path", &t1MatchesDoubleMediumHPSTau40Path, &b_t1MatchesDoubleMediumHPSTau40Path);
   fChain->SetBranchAddress("t1MatchesDoubleMediumIsoTau35Path", &t1MatchesDoubleMediumIsoTau35Path, &b_t1MatchesDoubleMediumIsoTau35Path);
   fChain->SetBranchAddress("t1MatchesDoubleMediumTau35Filter", &t1MatchesDoubleMediumTau35Filter, &b_t1MatchesDoubleMediumTau35Filter);
   fChain->SetBranchAddress("t1MatchesDoubleMediumTau35Path", &t1MatchesDoubleMediumTau35Path, &b_t1MatchesDoubleMediumTau35Path);
   fChain->SetBranchAddress("t1MatchesDoubleMediumTau40Filter", &t1MatchesDoubleMediumTau40Filter, &b_t1MatchesDoubleMediumTau40Filter);
   fChain->SetBranchAddress("t1MatchesDoubleMediumTau40Path", &t1MatchesDoubleMediumTau40Path, &b_t1MatchesDoubleMediumTau40Path);
   fChain->SetBranchAddress("t1MatchesDoubleTau35Filter", &t1MatchesDoubleTau35Filter, &b_t1MatchesDoubleTau35Filter);
   fChain->SetBranchAddress("t1MatchesDoubleTau35Path", &t1MatchesDoubleTau35Path, &b_t1MatchesDoubleTau35Path);
   fChain->SetBranchAddress("t1MatchesDoubleTauCmbIso35RegFilter", &t1MatchesDoubleTauCmbIso35RegFilter, &b_t1MatchesDoubleTauCmbIso35RegFilter);
   fChain->SetBranchAddress("t1MatchesDoubleTauCmbIso35RegPath", &t1MatchesDoubleTauCmbIso35RegPath, &b_t1MatchesDoubleTauCmbIso35RegPath);
   fChain->SetBranchAddress("t1MatchesDoubleTightHPSTau35Filter", &t1MatchesDoubleTightHPSTau35Filter, &b_t1MatchesDoubleTightHPSTau35Filter);
   fChain->SetBranchAddress("t1MatchesDoubleTightHPSTau35Path", &t1MatchesDoubleTightHPSTau35Path, &b_t1MatchesDoubleTightHPSTau35Path);
   fChain->SetBranchAddress("t1MatchesDoubleTightHPSTau40Filter", &t1MatchesDoubleTightHPSTau40Filter, &b_t1MatchesDoubleTightHPSTau40Filter);
   fChain->SetBranchAddress("t1MatchesDoubleTightHPSTau40Path", &t1MatchesDoubleTightHPSTau40Path, &b_t1MatchesDoubleTightHPSTau40Path);
   fChain->SetBranchAddress("t1MatchesDoubleTightTau35Filter", &t1MatchesDoubleTightTau35Filter, &b_t1MatchesDoubleTightTau35Filter);
   fChain->SetBranchAddress("t1MatchesDoubleTightTau35Path", &t1MatchesDoubleTightTau35Path, &b_t1MatchesDoubleTightTau35Path);
   fChain->SetBranchAddress("t1MatchesDoubleTightTau40Filter", &t1MatchesDoubleTightTau40Filter, &b_t1MatchesDoubleTightTau40Filter);
   fChain->SetBranchAddress("t1MatchesDoubleTightTau40Path", &t1MatchesDoubleTightTau40Path, &b_t1MatchesDoubleTightTau40Path);
   fChain->SetBranchAddress("t1MatchesEle24HPSTau30Filter", &t1MatchesEle24HPSTau30Filter, &b_t1MatchesEle24HPSTau30Filter);
   fChain->SetBranchAddress("t1MatchesEle24HPSTau30Path", &t1MatchesEle24HPSTau30Path, &b_t1MatchesEle24HPSTau30Path);
   fChain->SetBranchAddress("t1MatchesEle24Tau30Filter", &t1MatchesEle24Tau30Filter, &b_t1MatchesEle24Tau30Filter);
   fChain->SetBranchAddress("t1MatchesEle24Tau30Path", &t1MatchesEle24Tau30Path, &b_t1MatchesEle24Tau30Path);
   fChain->SetBranchAddress("t1MatchesIsoMu19Tau20Filter", &t1MatchesIsoMu19Tau20Filter, &b_t1MatchesIsoMu19Tau20Filter);
   fChain->SetBranchAddress("t1MatchesIsoMu19Tau20Path", &t1MatchesIsoMu19Tau20Path, &b_t1MatchesIsoMu19Tau20Path);
   fChain->SetBranchAddress("t1MatchesIsoMu19Tau20SingleL1Filter", &t1MatchesIsoMu19Tau20SingleL1Filter, &b_t1MatchesIsoMu19Tau20SingleL1Filter);
   fChain->SetBranchAddress("t1MatchesIsoMu19Tau20SingleL1Path", &t1MatchesIsoMu19Tau20SingleL1Path, &b_t1MatchesIsoMu19Tau20SingleL1Path);
   fChain->SetBranchAddress("t1MatchesIsoMu20HPSTau27Filter", &t1MatchesIsoMu20HPSTau27Filter, &b_t1MatchesIsoMu20HPSTau27Filter);
   fChain->SetBranchAddress("t1MatchesIsoMu20HPSTau27Path", &t1MatchesIsoMu20HPSTau27Path, &b_t1MatchesIsoMu20HPSTau27Path);
   fChain->SetBranchAddress("t1MatchesIsoMu20Tau27Filter", &t1MatchesIsoMu20Tau27Filter, &b_t1MatchesIsoMu20Tau27Filter);
   fChain->SetBranchAddress("t1MatchesIsoMu20Tau27Path", &t1MatchesIsoMu20Tau27Path, &b_t1MatchesIsoMu20Tau27Path);
   fChain->SetBranchAddress("t1MediumDeepTau2017v2p1VSe", &t1MediumDeepTau2017v2p1VSe, &b_t1MediumDeepTau2017v2p1VSe);
   fChain->SetBranchAddress("t1MediumDeepTau2017v2p1VSjet", &t1MediumDeepTau2017v2p1VSjet, &b_t1MediumDeepTau2017v2p1VSjet);
   fChain->SetBranchAddress("t1MediumDeepTau2017v2p1VSmu", &t1MediumDeepTau2017v2p1VSmu, &b_t1MediumDeepTau2017v2p1VSmu);
   fChain->SetBranchAddress("t1NChrgHadrIsolationCands", &t1NChrgHadrIsolationCands, &b_t1NChrgHadrIsolationCands);
   fChain->SetBranchAddress("t1NChrgHadrSignalCands", &t1NChrgHadrSignalCands, &b_t1NChrgHadrSignalCands);
   fChain->SetBranchAddress("t1NGammaSignalCands", &t1NGammaSignalCands, &b_t1NGammaSignalCands);
   fChain->SetBranchAddress("t1NNeutralHadrSignalCands", &t1NNeutralHadrSignalCands, &b_t1NNeutralHadrSignalCands);
   fChain->SetBranchAddress("t1NSignalCands", &t1NSignalCands, &b_t1NSignalCands);
   fChain->SetBranchAddress("t1NeutralIsoPtSum", &t1NeutralIsoPtSum, &b_t1NeutralIsoPtSum);
   fChain->SetBranchAddress("t1NeutralIsoPtSumWeight", &t1NeutralIsoPtSumWeight, &b_t1NeutralIsoPtSumWeight);
   fChain->SetBranchAddress("t1NeutralIsoPtSumWeightdR03", &t1NeutralIsoPtSumWeightdR03, &b_t1NeutralIsoPtSumWeightdR03);
   fChain->SetBranchAddress("t1NeutralIsoPtSumdR03", &t1NeutralIsoPtSumdR03, &b_t1NeutralIsoPtSumdR03);
   fChain->SetBranchAddress("t1PVDXY", &t1PVDXY, &b_t1PVDXY);
   fChain->SetBranchAddress("t1PVDZ", &t1PVDZ, &b_t1PVDZ);
   fChain->SetBranchAddress("t1Phi", &t1Phi, &b_t1Phi);
   fChain->SetBranchAddress("t1PhotonPtSumOutsideSignalCone", &t1PhotonPtSumOutsideSignalCone, &b_t1PhotonPtSumOutsideSignalCone);
   fChain->SetBranchAddress("t1PhotonPtSumOutsideSignalConedR03", &t1PhotonPtSumOutsideSignalConedR03, &b_t1PhotonPtSumOutsideSignalConedR03);
   fChain->SetBranchAddress("t1Pt", &t1Pt, &b_t1Pt);
   fChain->SetBranchAddress("t1PuCorrPtSum", &t1PuCorrPtSum, &b_t1PuCorrPtSum);
   fChain->SetBranchAddress("t1TightDeepTau2017v2p1VSe", &t1TightDeepTau2017v2p1VSe, &b_t1TightDeepTau2017v2p1VSe);
   fChain->SetBranchAddress("t1TightDeepTau2017v2p1VSjet", &t1TightDeepTau2017v2p1VSjet, &b_t1TightDeepTau2017v2p1VSjet);
   fChain->SetBranchAddress("t1TightDeepTau2017v2p1VSmu", &t1TightDeepTau2017v2p1VSmu, &b_t1TightDeepTau2017v2p1VSmu);
   fChain->SetBranchAddress("t1VLooseDeepTau2017v2p1VSe", &t1VLooseDeepTau2017v2p1VSe, &b_t1VLooseDeepTau2017v2p1VSe);
   fChain->SetBranchAddress("t1VLooseDeepTau2017v2p1VSjet", &t1VLooseDeepTau2017v2p1VSjet, &b_t1VLooseDeepTau2017v2p1VSjet);
   fChain->SetBranchAddress("t1VLooseDeepTau2017v2p1VSmu", &t1VLooseDeepTau2017v2p1VSmu, &b_t1VLooseDeepTau2017v2p1VSmu);
   fChain->SetBranchAddress("t1VTightDeepTau2017v2p1VSe", &t1VTightDeepTau2017v2p1VSe, &b_t1VTightDeepTau2017v2p1VSe);
   fChain->SetBranchAddress("t1VTightDeepTau2017v2p1VSjet", &t1VTightDeepTau2017v2p1VSjet, &b_t1VTightDeepTau2017v2p1VSjet);
   fChain->SetBranchAddress("t1VTightDeepTau2017v2p1VSmu", &t1VTightDeepTau2017v2p1VSmu, &b_t1VTightDeepTau2017v2p1VSmu);
   fChain->SetBranchAddress("t1VVLooseDeepTau2017v2p1VSe", &t1VVLooseDeepTau2017v2p1VSe, &b_t1VVLooseDeepTau2017v2p1VSe);
   fChain->SetBranchAddress("t1VVLooseDeepTau2017v2p1VSjet", &t1VVLooseDeepTau2017v2p1VSjet, &b_t1VVLooseDeepTau2017v2p1VSjet);
   fChain->SetBranchAddress("t1VVTightDeepTau2017v2p1VSe", &t1VVTightDeepTau2017v2p1VSe, &b_t1VVTightDeepTau2017v2p1VSe);
   fChain->SetBranchAddress("t1VVTightDeepTau2017v2p1VSjet", &t1VVTightDeepTau2017v2p1VSjet, &b_t1VVTightDeepTau2017v2p1VSjet);
   fChain->SetBranchAddress("t1VVTightDeepTau2017v2p1VSmu", &t1VVTightDeepTau2017v2p1VSmu, &b_t1VVTightDeepTau2017v2p1VSmu);
   fChain->SetBranchAddress("t1VVVLooseDeepTau2017v2p1VSe", &t1VVVLooseDeepTau2017v2p1VSe, &b_t1VVVLooseDeepTau2017v2p1VSe);
   fChain->SetBranchAddress("t1VVVLooseDeepTau2017v2p1VSjet", &t1VVVLooseDeepTau2017v2p1VSjet, &b_t1VVVLooseDeepTau2017v2p1VSjet);
   fChain->SetBranchAddress("t1ZTTGenEta", &t1ZTTGenEta, &b_t1ZTTGenEta);
   fChain->SetBranchAddress("t1ZTTGenMatching", &t1ZTTGenMatching, &b_t1ZTTGenMatching);
   fChain->SetBranchAddress("t1ZTTGenPhi", &t1ZTTGenPhi, &b_t1ZTTGenPhi);
   fChain->SetBranchAddress("t1ZTTGenPt", &t1ZTTGenPt, &b_t1ZTTGenPt);
   fChain->SetBranchAddress("t1_t2_DR", &t1_t2_DR, &b_t1_t2_DR);
   fChain->SetBranchAddress("t1_t2_Mass", &t1_t2_Mass, &b_t1_t2_Mass);
   fChain->SetBranchAddress("t2AgainstMuonLoose3", &t2AgainstMuonLoose3, &b_t2AgainstMuonLoose3);
   fChain->SetBranchAddress("t2AgainstMuonTight3", &t2AgainstMuonTight3, &b_t2AgainstMuonTight3);
   fChain->SetBranchAddress("t2ByCombinedIsolationDeltaBetaCorrRaw3Hits", &t2ByCombinedIsolationDeltaBetaCorrRaw3Hits, &b_t2ByCombinedIsolationDeltaBetaCorrRaw3Hits);
   fChain->SetBranchAddress("t2ByLooseCombinedIsolationDeltaBetaCorr3Hits", &t2ByLooseCombinedIsolationDeltaBetaCorr3Hits, &b_t2ByLooseCombinedIsolationDeltaBetaCorr3Hits);
   fChain->SetBranchAddress("t2ByMediumCombinedIsolationDeltaBetaCorr3Hits", &t2ByMediumCombinedIsolationDeltaBetaCorr3Hits, &b_t2ByMediumCombinedIsolationDeltaBetaCorr3Hits);
   fChain->SetBranchAddress("t2ByPhotonPtSumOutsideSignalCone", &t2ByPhotonPtSumOutsideSignalCone, &b_t2ByPhotonPtSumOutsideSignalCone);
   fChain->SetBranchAddress("t2ByTightCombinedIsolationDeltaBetaCorr3Hits", &t2ByTightCombinedIsolationDeltaBetaCorr3Hits, &b_t2ByTightCombinedIsolationDeltaBetaCorr3Hits);
   fChain->SetBranchAddress("t2Charge", &t2Charge, &b_t2Charge);
   fChain->SetBranchAddress("t2ChargedIsoPtSum", &t2ChargedIsoPtSum, &b_t2ChargedIsoPtSum);
   fChain->SetBranchAddress("t2ChargedIsoPtSumdR03", &t2ChargedIsoPtSumdR03, &b_t2ChargedIsoPtSumdR03);
   fChain->SetBranchAddress("t2DecayMode", &t2DecayMode, &b_t2DecayMode);
   fChain->SetBranchAddress("t2DecayModeFinding", &t2DecayModeFinding, &b_t2DecayModeFinding);
   fChain->SetBranchAddress("t2DecayModeFindingNewDMs", &t2DecayModeFindingNewDMs, &b_t2DecayModeFindingNewDMs);
   fChain->SetBranchAddress("t2DeepTau2017v2p1VSeraw", &t2DeepTau2017v2p1VSeraw, &b_t2DeepTau2017v2p1VSeraw);
   fChain->SetBranchAddress("t2DeepTau2017v2p1VSjetraw", &t2DeepTau2017v2p1VSjetraw, &b_t2DeepTau2017v2p1VSjetraw);
   fChain->SetBranchAddress("t2DeepTau2017v2p1VSmuraw", &t2DeepTau2017v2p1VSmuraw, &b_t2DeepTau2017v2p1VSmuraw);
   fChain->SetBranchAddress("t2Eta", &t2Eta, &b_t2Eta);
   fChain->SetBranchAddress("t2FootprintCorrection", &t2FootprintCorrection, &b_t2FootprintCorrection);
   fChain->SetBranchAddress("t2FootprintCorrectiondR03", &t2FootprintCorrectiondR03, &b_t2FootprintCorrectiondR03);
   fChain->SetBranchAddress("t2GenCharge", &t2GenCharge, &b_t2GenCharge);
   fChain->SetBranchAddress("t2GenDecayMode", &t2GenDecayMode, &b_t2GenDecayMode);
   fChain->SetBranchAddress("t2GenEnergy", &t2GenEnergy, &b_t2GenEnergy);
   fChain->SetBranchAddress("t2GenEta", &t2GenEta, &b_t2GenEta);
   fChain->SetBranchAddress("t2GenJetEta", &t2GenJetEta, &b_t2GenJetEta);
   fChain->SetBranchAddress("t2GenJetPt", &t2GenJetPt, &b_t2GenJetPt);
   fChain->SetBranchAddress("t2GenPdgId", &t2GenPdgId, &b_t2GenPdgId);
   fChain->SetBranchAddress("t2GenPhi", &t2GenPhi, &b_t2GenPhi);
   fChain->SetBranchAddress("t2GenPt", &t2GenPt, &b_t2GenPt);
   fChain->SetBranchAddress("t2GenStatus", &t2GenStatus, &b_t2GenStatus);
   fChain->SetBranchAddress("t2L1IsoTauMatch", &t2L1IsoTauMatch, &b_t2L1IsoTauMatch);
   fChain->SetBranchAddress("t2L1IsoTauPt", &t2L1IsoTauPt, &b_t2L1IsoTauPt);
   fChain->SetBranchAddress("t2LeadTrackPt", &t2LeadTrackPt, &b_t2LeadTrackPt);
   fChain->SetBranchAddress("t2LooseDeepTau2017v2p1VSe", &t2LooseDeepTau2017v2p1VSe, &b_t2LooseDeepTau2017v2p1VSe);
   fChain->SetBranchAddress("t2LooseDeepTau2017v2p1VSjet", &t2LooseDeepTau2017v2p1VSjet, &b_t2LooseDeepTau2017v2p1VSjet);
   fChain->SetBranchAddress("t2LooseDeepTau2017v2p1VSmu", &t2LooseDeepTau2017v2p1VSmu, &b_t2LooseDeepTau2017v2p1VSmu);
   fChain->SetBranchAddress("t2Mass", &t2Mass, &b_t2Mass);
   fChain->SetBranchAddress("t2MatchEmbeddedFilterEle24Tau30", &t2MatchEmbeddedFilterEle24Tau30, &b_t2MatchEmbeddedFilterEle24Tau30);
   fChain->SetBranchAddress("t2MatchEmbeddedFilterMu19Tau20", &t2MatchEmbeddedFilterMu19Tau20, &b_t2MatchEmbeddedFilterMu19Tau20);
   fChain->SetBranchAddress("t2MatchEmbeddedFilterMu20HPSTau27", &t2MatchEmbeddedFilterMu20HPSTau27, &b_t2MatchEmbeddedFilterMu20HPSTau27);
   fChain->SetBranchAddress("t2MatchEmbeddedFilterMu20Tau27", &t2MatchEmbeddedFilterMu20Tau27, &b_t2MatchEmbeddedFilterMu20Tau27);
   fChain->SetBranchAddress("t2MatchEmbeddedFilterTauTau", &t2MatchEmbeddedFilterTauTau, &b_t2MatchEmbeddedFilterTauTau);
   fChain->SetBranchAddress("t2MatchEmbeddedFilterTauTau2016", &t2MatchEmbeddedFilterTauTau2016, &b_t2MatchEmbeddedFilterTauTau2016);
   fChain->SetBranchAddress("t2MatchesDoubleMediumCombinedIsoTau35Path", &t2MatchesDoubleMediumCombinedIsoTau35Path, &b_t2MatchesDoubleMediumCombinedIsoTau35Path);
   fChain->SetBranchAddress("t2MatchesDoubleMediumHPSTau35Filter", &t2MatchesDoubleMediumHPSTau35Filter, &b_t2MatchesDoubleMediumHPSTau35Filter);
   fChain->SetBranchAddress("t2MatchesDoubleMediumHPSTau35Path", &t2MatchesDoubleMediumHPSTau35Path, &b_t2MatchesDoubleMediumHPSTau35Path);
   fChain->SetBranchAddress("t2MatchesDoubleMediumHPSTau40Filter", &t2MatchesDoubleMediumHPSTau40Filter, &b_t2MatchesDoubleMediumHPSTau40Filter);
   fChain->SetBranchAddress("t2MatchesDoubleMediumHPSTau40Path", &t2MatchesDoubleMediumHPSTau40Path, &b_t2MatchesDoubleMediumHPSTau40Path);
   fChain->SetBranchAddress("t2MatchesDoubleMediumIsoTau35Path", &t2MatchesDoubleMediumIsoTau35Path, &b_t2MatchesDoubleMediumIsoTau35Path);
   fChain->SetBranchAddress("t2MatchesDoubleMediumTau35Filter", &t2MatchesDoubleMediumTau35Filter, &b_t2MatchesDoubleMediumTau35Filter);
   fChain->SetBranchAddress("t2MatchesDoubleMediumTau35Path", &t2MatchesDoubleMediumTau35Path, &b_t2MatchesDoubleMediumTau35Path);
   fChain->SetBranchAddress("t2MatchesDoubleMediumTau40Filter", &t2MatchesDoubleMediumTau40Filter, &b_t2MatchesDoubleMediumTau40Filter);
   fChain->SetBranchAddress("t2MatchesDoubleMediumTau40Path", &t2MatchesDoubleMediumTau40Path, &b_t2MatchesDoubleMediumTau40Path);
   fChain->SetBranchAddress("t2MatchesDoubleTau35Filter", &t2MatchesDoubleTau35Filter, &b_t2MatchesDoubleTau35Filter);
   fChain->SetBranchAddress("t2MatchesDoubleTau35Path", &t2MatchesDoubleTau35Path, &b_t2MatchesDoubleTau35Path);
   fChain->SetBranchAddress("t2MatchesDoubleTauCmbIso35RegFilter", &t2MatchesDoubleTauCmbIso35RegFilter, &b_t2MatchesDoubleTauCmbIso35RegFilter);
   fChain->SetBranchAddress("t2MatchesDoubleTauCmbIso35RegPath", &t2MatchesDoubleTauCmbIso35RegPath, &b_t2MatchesDoubleTauCmbIso35RegPath);
   fChain->SetBranchAddress("t2MatchesDoubleTightHPSTau35Filter", &t2MatchesDoubleTightHPSTau35Filter, &b_t2MatchesDoubleTightHPSTau35Filter);
   fChain->SetBranchAddress("t2MatchesDoubleTightHPSTau35Path", &t2MatchesDoubleTightHPSTau35Path, &b_t2MatchesDoubleTightHPSTau35Path);
   fChain->SetBranchAddress("t2MatchesDoubleTightHPSTau40Filter", &t2MatchesDoubleTightHPSTau40Filter, &b_t2MatchesDoubleTightHPSTau40Filter);
   fChain->SetBranchAddress("t2MatchesDoubleTightHPSTau40Path", &t2MatchesDoubleTightHPSTau40Path, &b_t2MatchesDoubleTightHPSTau40Path);
   fChain->SetBranchAddress("t2MatchesDoubleTightTau35Filter", &t2MatchesDoubleTightTau35Filter, &b_t2MatchesDoubleTightTau35Filter);
   fChain->SetBranchAddress("t2MatchesDoubleTightTau35Path", &t2MatchesDoubleTightTau35Path, &b_t2MatchesDoubleTightTau35Path);
   fChain->SetBranchAddress("t2MatchesDoubleTightTau40Filter", &t2MatchesDoubleTightTau40Filter, &b_t2MatchesDoubleTightTau40Filter);
   fChain->SetBranchAddress("t2MatchesDoubleTightTau40Path", &t2MatchesDoubleTightTau40Path, &b_t2MatchesDoubleTightTau40Path);
   fChain->SetBranchAddress("t2MatchesEle24HPSTau30Filter", &t2MatchesEle24HPSTau30Filter, &b_t2MatchesEle24HPSTau30Filter);
   fChain->SetBranchAddress("t2MatchesEle24HPSTau30Path", &t2MatchesEle24HPSTau30Path, &b_t2MatchesEle24HPSTau30Path);
   fChain->SetBranchAddress("t2MatchesEle24Tau30Filter", &t2MatchesEle24Tau30Filter, &b_t2MatchesEle24Tau30Filter);
   fChain->SetBranchAddress("t2MatchesEle24Tau30Path", &t2MatchesEle24Tau30Path, &b_t2MatchesEle24Tau30Path);
   fChain->SetBranchAddress("t2MatchesIsoMu19Tau20Filter", &t2MatchesIsoMu19Tau20Filter, &b_t2MatchesIsoMu19Tau20Filter);
   fChain->SetBranchAddress("t2MatchesIsoMu19Tau20Path", &t2MatchesIsoMu19Tau20Path, &b_t2MatchesIsoMu19Tau20Path);
   fChain->SetBranchAddress("t2MatchesIsoMu19Tau20SingleL1Filter", &t2MatchesIsoMu19Tau20SingleL1Filter, &b_t2MatchesIsoMu19Tau20SingleL1Filter);
   fChain->SetBranchAddress("t2MatchesIsoMu19Tau20SingleL1Path", &t2MatchesIsoMu19Tau20SingleL1Path, &b_t2MatchesIsoMu19Tau20SingleL1Path);
   fChain->SetBranchAddress("t2MatchesIsoMu20HPSTau27Filter", &t2MatchesIsoMu20HPSTau27Filter, &b_t2MatchesIsoMu20HPSTau27Filter);
   fChain->SetBranchAddress("t2MatchesIsoMu20HPSTau27Path", &t2MatchesIsoMu20HPSTau27Path, &b_t2MatchesIsoMu20HPSTau27Path);
   fChain->SetBranchAddress("t2MatchesIsoMu20Tau27Filter", &t2MatchesIsoMu20Tau27Filter, &b_t2MatchesIsoMu20Tau27Filter);
   fChain->SetBranchAddress("t2MatchesIsoMu20Tau27Path", &t2MatchesIsoMu20Tau27Path, &b_t2MatchesIsoMu20Tau27Path);
   fChain->SetBranchAddress("t2MediumDeepTau2017v2p1VSe", &t2MediumDeepTau2017v2p1VSe, &b_t2MediumDeepTau2017v2p1VSe);
   fChain->SetBranchAddress("t2MediumDeepTau2017v2p1VSjet", &t2MediumDeepTau2017v2p1VSjet, &b_t2MediumDeepTau2017v2p1VSjet);
   fChain->SetBranchAddress("t2MediumDeepTau2017v2p1VSmu", &t2MediumDeepTau2017v2p1VSmu, &b_t2MediumDeepTau2017v2p1VSmu);
   fChain->SetBranchAddress("t2NChrgHadrIsolationCands", &t2NChrgHadrIsolationCands, &b_t2NChrgHadrIsolationCands);
   fChain->SetBranchAddress("t2NChrgHadrSignalCands", &t2NChrgHadrSignalCands, &b_t2NChrgHadrSignalCands);
   fChain->SetBranchAddress("t2NGammaSignalCands", &t2NGammaSignalCands, &b_t2NGammaSignalCands);
   fChain->SetBranchAddress("t2NNeutralHadrSignalCands", &t2NNeutralHadrSignalCands, &b_t2NNeutralHadrSignalCands);
   fChain->SetBranchAddress("t2NSignalCands", &t2NSignalCands, &b_t2NSignalCands);
   fChain->SetBranchAddress("t2NeutralIsoPtSum", &t2NeutralIsoPtSum, &b_t2NeutralIsoPtSum);
   fChain->SetBranchAddress("t2NeutralIsoPtSumWeight", &t2NeutralIsoPtSumWeight, &b_t2NeutralIsoPtSumWeight);
   fChain->SetBranchAddress("t2NeutralIsoPtSumWeightdR03", &t2NeutralIsoPtSumWeightdR03, &b_t2NeutralIsoPtSumWeightdR03);
   fChain->SetBranchAddress("t2NeutralIsoPtSumdR03", &t2NeutralIsoPtSumdR03, &b_t2NeutralIsoPtSumdR03);
   fChain->SetBranchAddress("t2PVDXY", &t2PVDXY, &b_t2PVDXY);
   fChain->SetBranchAddress("t2PVDZ", &t2PVDZ, &b_t2PVDZ);
   fChain->SetBranchAddress("t2Phi", &t2Phi, &b_t2Phi);
   fChain->SetBranchAddress("t2PhotonPtSumOutsideSignalCone", &t2PhotonPtSumOutsideSignalCone, &b_t2PhotonPtSumOutsideSignalCone);
   fChain->SetBranchAddress("t2PhotonPtSumOutsideSignalConedR03", &t2PhotonPtSumOutsideSignalConedR03, &b_t2PhotonPtSumOutsideSignalConedR03);
   fChain->SetBranchAddress("t2Pt", &t2Pt, &b_t2Pt);
   fChain->SetBranchAddress("t2PuCorrPtSum", &t2PuCorrPtSum, &b_t2PuCorrPtSum);
   fChain->SetBranchAddress("t2TightDeepTau2017v2p1VSe", &t2TightDeepTau2017v2p1VSe, &b_t2TightDeepTau2017v2p1VSe);
   fChain->SetBranchAddress("t2TightDeepTau2017v2p1VSjet", &t2TightDeepTau2017v2p1VSjet, &b_t2TightDeepTau2017v2p1VSjet);
   fChain->SetBranchAddress("t2TightDeepTau2017v2p1VSmu", &t2TightDeepTau2017v2p1VSmu, &b_t2TightDeepTau2017v2p1VSmu);
   fChain->SetBranchAddress("t2VLooseDeepTau2017v2p1VSe", &t2VLooseDeepTau2017v2p1VSe, &b_t2VLooseDeepTau2017v2p1VSe);
   fChain->SetBranchAddress("t2VLooseDeepTau2017v2p1VSjet", &t2VLooseDeepTau2017v2p1VSjet, &b_t2VLooseDeepTau2017v2p1VSjet);
   fChain->SetBranchAddress("t2VLooseDeepTau2017v2p1VSmu", &t2VLooseDeepTau2017v2p1VSmu, &b_t2VLooseDeepTau2017v2p1VSmu);
   fChain->SetBranchAddress("t2VTightDeepTau2017v2p1VSe", &t2VTightDeepTau2017v2p1VSe, &b_t2VTightDeepTau2017v2p1VSe);
   fChain->SetBranchAddress("t2VTightDeepTau2017v2p1VSjet", &t2VTightDeepTau2017v2p1VSjet, &b_t2VTightDeepTau2017v2p1VSjet);
   fChain->SetBranchAddress("t2VTightDeepTau2017v2p1VSmu", &t2VTightDeepTau2017v2p1VSmu, &b_t2VTightDeepTau2017v2p1VSmu);
   fChain->SetBranchAddress("t2VVLooseDeepTau2017v2p1VSe", &t2VVLooseDeepTau2017v2p1VSe, &b_t2VVLooseDeepTau2017v2p1VSe);
   fChain->SetBranchAddress("t2VVLooseDeepTau2017v2p1VSjet", &t2VVLooseDeepTau2017v2p1VSjet, &b_t2VVLooseDeepTau2017v2p1VSjet);
   fChain->SetBranchAddress("t2VVTightDeepTau2017v2p1VSe", &t2VVTightDeepTau2017v2p1VSe, &b_t2VVTightDeepTau2017v2p1VSe);
   fChain->SetBranchAddress("t2VVTightDeepTau2017v2p1VSjet", &t2VVTightDeepTau2017v2p1VSjet, &b_t2VVTightDeepTau2017v2p1VSjet);
   fChain->SetBranchAddress("t2VVTightDeepTau2017v2p1VSmu", &t2VVTightDeepTau2017v2p1VSmu, &b_t2VVTightDeepTau2017v2p1VSmu);
   fChain->SetBranchAddress("t2VVVLooseDeepTau2017v2p1VSe", &t2VVVLooseDeepTau2017v2p1VSe, &b_t2VVVLooseDeepTau2017v2p1VSe);
   fChain->SetBranchAddress("t2VVVLooseDeepTau2017v2p1VSjet", &t2VVVLooseDeepTau2017v2p1VSjet, &b_t2VVVLooseDeepTau2017v2p1VSjet);
   fChain->SetBranchAddress("t2ZTTGenEta", &t2ZTTGenEta, &b_t2ZTTGenEta);
   fChain->SetBranchAddress("t2ZTTGenMatching", &t2ZTTGenMatching, &b_t2ZTTGenMatching);
   fChain->SetBranchAddress("t2ZTTGenPhi", &t2ZTTGenPhi, &b_t2ZTTGenPhi);
   fChain->SetBranchAddress("t2ZTTGenPt", &t2ZTTGenPt, &b_t2ZTTGenPt);
   fChain->SetBranchAddress("topQuarkPt1", &topQuarkPt1, &b_topQuarkPt1);
   fChain->SetBranchAddress("topQuarkPt2", &topQuarkPt2, &b_topQuarkPt2);
   fChain->SetBranchAddress("tripleMu12_10_5Pass", &tripleMu12_10_5Pass, &b_tripleMu12_10_5Pass);
   fChain->SetBranchAddress("type1_pfMetEt", &type1_pfMetEt, &b_type1_pfMetEt);
   fChain->SetBranchAddress("type1_pfMetPhi", &type1_pfMetPhi, &b_type1_pfMetPhi);
   fChain->SetBranchAddress("type1_pfMet_shiftedPhi_JERDown", &type1_pfMet_shiftedPhi_JERDown, &b_type1_pfMet_shiftedPhi_JERDown);
   fChain->SetBranchAddress("type1_pfMet_shiftedPhi_JERUp", &type1_pfMet_shiftedPhi_JERUp, &b_type1_pfMet_shiftedPhi_JERUp);
   fChain->SetBranchAddress("type1_pfMet_shiftedPhi_JetAbsoluteDown", &type1_pfMet_shiftedPhi_JetAbsoluteDown, &b_type1_pfMet_shiftedPhi_JetAbsoluteDown);
   fChain->SetBranchAddress("type1_pfMet_shiftedPhi_JetAbsoluteUp", &type1_pfMet_shiftedPhi_JetAbsoluteUp, &b_type1_pfMet_shiftedPhi_JetAbsoluteUp);
   fChain->SetBranchAddress("type1_pfMet_shiftedPhi_JetAbsoluteyearDown", &type1_pfMet_shiftedPhi_JetAbsoluteyearDown, &b_type1_pfMet_shiftedPhi_JetAbsoluteyearDown);
   fChain->SetBranchAddress("type1_pfMet_shiftedPhi_JetAbsoluteyearUp", &type1_pfMet_shiftedPhi_JetAbsoluteyearUp, &b_type1_pfMet_shiftedPhi_JetAbsoluteyearUp);
   fChain->SetBranchAddress("type1_pfMet_shiftedPhi_JetBBEC1Down", &type1_pfMet_shiftedPhi_JetBBEC1Down, &b_type1_pfMet_shiftedPhi_JetBBEC1Down);
   fChain->SetBranchAddress("type1_pfMet_shiftedPhi_JetBBEC1Up", &type1_pfMet_shiftedPhi_JetBBEC1Up, &b_type1_pfMet_shiftedPhi_JetBBEC1Up);
   fChain->SetBranchAddress("type1_pfMet_shiftedPhi_JetBBEC1yearDown", &type1_pfMet_shiftedPhi_JetBBEC1yearDown, &b_type1_pfMet_shiftedPhi_JetBBEC1yearDown);
   fChain->SetBranchAddress("type1_pfMet_shiftedPhi_JetBBEC1yearUp", &type1_pfMet_shiftedPhi_JetBBEC1yearUp, &b_type1_pfMet_shiftedPhi_JetBBEC1yearUp);
   fChain->SetBranchAddress("type1_pfMet_shiftedPhi_JetEC2Down", &type1_pfMet_shiftedPhi_JetEC2Down, &b_type1_pfMet_shiftedPhi_JetEC2Down);
   fChain->SetBranchAddress("type1_pfMet_shiftedPhi_JetEC2Up", &type1_pfMet_shiftedPhi_JetEC2Up, &b_type1_pfMet_shiftedPhi_JetEC2Up);
   fChain->SetBranchAddress("type1_pfMet_shiftedPhi_JetEC2yearDown", &type1_pfMet_shiftedPhi_JetEC2yearDown, &b_type1_pfMet_shiftedPhi_JetEC2yearDown);
   fChain->SetBranchAddress("type1_pfMet_shiftedPhi_JetEC2yearUp", &type1_pfMet_shiftedPhi_JetEC2yearUp, &b_type1_pfMet_shiftedPhi_JetEC2yearUp);
   fChain->SetBranchAddress("type1_pfMet_shiftedPhi_JetEnDown", &type1_pfMet_shiftedPhi_JetEnDown, &b_type1_pfMet_shiftedPhi_JetEnDown);
   fChain->SetBranchAddress("type1_pfMet_shiftedPhi_JetEnUp", &type1_pfMet_shiftedPhi_JetEnUp, &b_type1_pfMet_shiftedPhi_JetEnUp);
   fChain->SetBranchAddress("type1_pfMet_shiftedPhi_JetFlavorQCDDown", &type1_pfMet_shiftedPhi_JetFlavorQCDDown, &b_type1_pfMet_shiftedPhi_JetFlavorQCDDown);
   fChain->SetBranchAddress("type1_pfMet_shiftedPhi_JetFlavorQCDUp", &type1_pfMet_shiftedPhi_JetFlavorQCDUp, &b_type1_pfMet_shiftedPhi_JetFlavorQCDUp);
   fChain->SetBranchAddress("type1_pfMet_shiftedPhi_JetHFDown", &type1_pfMet_shiftedPhi_JetHFDown, &b_type1_pfMet_shiftedPhi_JetHFDown);
   fChain->SetBranchAddress("type1_pfMet_shiftedPhi_JetHFUp", &type1_pfMet_shiftedPhi_JetHFUp, &b_type1_pfMet_shiftedPhi_JetHFUp);
   fChain->SetBranchAddress("type1_pfMet_shiftedPhi_JetHFyearDown", &type1_pfMet_shiftedPhi_JetHFyearDown, &b_type1_pfMet_shiftedPhi_JetHFyearDown);
   fChain->SetBranchAddress("type1_pfMet_shiftedPhi_JetHFyearUp", &type1_pfMet_shiftedPhi_JetHFyearUp, &b_type1_pfMet_shiftedPhi_JetHFyearUp);
   fChain->SetBranchAddress("type1_pfMet_shiftedPhi_JetRelativeBalDown", &type1_pfMet_shiftedPhi_JetRelativeBalDown, &b_type1_pfMet_shiftedPhi_JetRelativeBalDown);
   fChain->SetBranchAddress("type1_pfMet_shiftedPhi_JetRelativeBalUp", &type1_pfMet_shiftedPhi_JetRelativeBalUp, &b_type1_pfMet_shiftedPhi_JetRelativeBalUp);
   fChain->SetBranchAddress("type1_pfMet_shiftedPhi_JetRelativeSampleDown", &type1_pfMet_shiftedPhi_JetRelativeSampleDown, &b_type1_pfMet_shiftedPhi_JetRelativeSampleDown);
   fChain->SetBranchAddress("type1_pfMet_shiftedPhi_JetRelativeSampleUp", &type1_pfMet_shiftedPhi_JetRelativeSampleUp, &b_type1_pfMet_shiftedPhi_JetRelativeSampleUp);
   fChain->SetBranchAddress("type1_pfMet_shiftedPhi_JetResDown", &type1_pfMet_shiftedPhi_JetResDown, &b_type1_pfMet_shiftedPhi_JetResDown);
   fChain->SetBranchAddress("type1_pfMet_shiftedPhi_JetResUp", &type1_pfMet_shiftedPhi_JetResUp, &b_type1_pfMet_shiftedPhi_JetResUp);
   fChain->SetBranchAddress("type1_pfMet_shiftedPhi_JetTotalDown", &type1_pfMet_shiftedPhi_JetTotalDown, &b_type1_pfMet_shiftedPhi_JetTotalDown);
   fChain->SetBranchAddress("type1_pfMet_shiftedPhi_JetTotalUp", &type1_pfMet_shiftedPhi_JetTotalUp, &b_type1_pfMet_shiftedPhi_JetTotalUp);
   fChain->SetBranchAddress("type1_pfMet_shiftedPhi_UnclusteredEnDown", &type1_pfMet_shiftedPhi_UnclusteredEnDown, &b_type1_pfMet_shiftedPhi_UnclusteredEnDown);
   fChain->SetBranchAddress("type1_pfMet_shiftedPhi_UnclusteredEnUp", &type1_pfMet_shiftedPhi_UnclusteredEnUp, &b_type1_pfMet_shiftedPhi_UnclusteredEnUp);
   fChain->SetBranchAddress("type1_pfMet_shiftedPt_JERDown", &type1_pfMet_shiftedPt_JERDown, &b_type1_pfMet_shiftedPt_JERDown);
   fChain->SetBranchAddress("type1_pfMet_shiftedPt_JERUp", &type1_pfMet_shiftedPt_JERUp, &b_type1_pfMet_shiftedPt_JERUp);
   fChain->SetBranchAddress("type1_pfMet_shiftedPt_JetAbsoluteDown", &type1_pfMet_shiftedPt_JetAbsoluteDown, &b_type1_pfMet_shiftedPt_JetAbsoluteDown);
   fChain->SetBranchAddress("type1_pfMet_shiftedPt_JetAbsoluteUp", &type1_pfMet_shiftedPt_JetAbsoluteUp, &b_type1_pfMet_shiftedPt_JetAbsoluteUp);
   fChain->SetBranchAddress("type1_pfMet_shiftedPt_JetAbsoluteyearDown", &type1_pfMet_shiftedPt_JetAbsoluteyearDown, &b_type1_pfMet_shiftedPt_JetAbsoluteyearDown);
   fChain->SetBranchAddress("type1_pfMet_shiftedPt_JetAbsoluteyearUp", &type1_pfMet_shiftedPt_JetAbsoluteyearUp, &b_type1_pfMet_shiftedPt_JetAbsoluteyearUp);
   fChain->SetBranchAddress("type1_pfMet_shiftedPt_JetBBEC1Down", &type1_pfMet_shiftedPt_JetBBEC1Down, &b_type1_pfMet_shiftedPt_JetBBEC1Down);
   fChain->SetBranchAddress("type1_pfMet_shiftedPt_JetBBEC1Up", &type1_pfMet_shiftedPt_JetBBEC1Up, &b_type1_pfMet_shiftedPt_JetBBEC1Up);
   fChain->SetBranchAddress("type1_pfMet_shiftedPt_JetBBEC1yearDown", &type1_pfMet_shiftedPt_JetBBEC1yearDown, &b_type1_pfMet_shiftedPt_JetBBEC1yearDown);
   fChain->SetBranchAddress("type1_pfMet_shiftedPt_JetBBEC1yearUp", &type1_pfMet_shiftedPt_JetBBEC1yearUp, &b_type1_pfMet_shiftedPt_JetBBEC1yearUp);
   fChain->SetBranchAddress("type1_pfMet_shiftedPt_JetEC2Down", &type1_pfMet_shiftedPt_JetEC2Down, &b_type1_pfMet_shiftedPt_JetEC2Down);
   fChain->SetBranchAddress("type1_pfMet_shiftedPt_JetEC2Up", &type1_pfMet_shiftedPt_JetEC2Up, &b_type1_pfMet_shiftedPt_JetEC2Up);
   fChain->SetBranchAddress("type1_pfMet_shiftedPt_JetEC2yearDown", &type1_pfMet_shiftedPt_JetEC2yearDown, &b_type1_pfMet_shiftedPt_JetEC2yearDown);
   fChain->SetBranchAddress("type1_pfMet_shiftedPt_JetEC2yearUp", &type1_pfMet_shiftedPt_JetEC2yearUp, &b_type1_pfMet_shiftedPt_JetEC2yearUp);
   fChain->SetBranchAddress("type1_pfMet_shiftedPt_JetEnDown", &type1_pfMet_shiftedPt_JetEnDown, &b_type1_pfMet_shiftedPt_JetEnDown);
   fChain->SetBranchAddress("type1_pfMet_shiftedPt_JetEnUp", &type1_pfMet_shiftedPt_JetEnUp, &b_type1_pfMet_shiftedPt_JetEnUp);
   fChain->SetBranchAddress("type1_pfMet_shiftedPt_JetFlavorQCDDown", &type1_pfMet_shiftedPt_JetFlavorQCDDown, &b_type1_pfMet_shiftedPt_JetFlavorQCDDown);
   fChain->SetBranchAddress("type1_pfMet_shiftedPt_JetFlavorQCDUp", &type1_pfMet_shiftedPt_JetFlavorQCDUp, &b_type1_pfMet_shiftedPt_JetFlavorQCDUp);
   fChain->SetBranchAddress("type1_pfMet_shiftedPt_JetHFDown", &type1_pfMet_shiftedPt_JetHFDown, &b_type1_pfMet_shiftedPt_JetHFDown);
   fChain->SetBranchAddress("type1_pfMet_shiftedPt_JetHFUp", &type1_pfMet_shiftedPt_JetHFUp, &b_type1_pfMet_shiftedPt_JetHFUp);
   fChain->SetBranchAddress("type1_pfMet_shiftedPt_JetHFyearDown", &type1_pfMet_shiftedPt_JetHFyearDown, &b_type1_pfMet_shiftedPt_JetHFyearDown);
   fChain->SetBranchAddress("type1_pfMet_shiftedPt_JetHFyearUp", &type1_pfMet_shiftedPt_JetHFyearUp, &b_type1_pfMet_shiftedPt_JetHFyearUp);
   fChain->SetBranchAddress("type1_pfMet_shiftedPt_JetRelativeBalDown", &type1_pfMet_shiftedPt_JetRelativeBalDown, &b_type1_pfMet_shiftedPt_JetRelativeBalDown);
   fChain->SetBranchAddress("type1_pfMet_shiftedPt_JetRelativeBalUp", &type1_pfMet_shiftedPt_JetRelativeBalUp, &b_type1_pfMet_shiftedPt_JetRelativeBalUp);
   fChain->SetBranchAddress("type1_pfMet_shiftedPt_JetRelativeSampleDown", &type1_pfMet_shiftedPt_JetRelativeSampleDown, &b_type1_pfMet_shiftedPt_JetRelativeSampleDown);
   fChain->SetBranchAddress("type1_pfMet_shiftedPt_JetRelativeSampleUp", &type1_pfMet_shiftedPt_JetRelativeSampleUp, &b_type1_pfMet_shiftedPt_JetRelativeSampleUp);
   fChain->SetBranchAddress("type1_pfMet_shiftedPt_JetResDown", &type1_pfMet_shiftedPt_JetResDown, &b_type1_pfMet_shiftedPt_JetResDown);
   fChain->SetBranchAddress("type1_pfMet_shiftedPt_JetResUp", &type1_pfMet_shiftedPt_JetResUp, &b_type1_pfMet_shiftedPt_JetResUp);
   fChain->SetBranchAddress("type1_pfMet_shiftedPt_JetTotalDown", &type1_pfMet_shiftedPt_JetTotalDown, &b_type1_pfMet_shiftedPt_JetTotalDown);
   fChain->SetBranchAddress("type1_pfMet_shiftedPt_JetTotalUp", &type1_pfMet_shiftedPt_JetTotalUp, &b_type1_pfMet_shiftedPt_JetTotalUp);
   fChain->SetBranchAddress("type1_pfMet_shiftedPt_UnclusteredEnDown", &type1_pfMet_shiftedPt_UnclusteredEnDown, &b_type1_pfMet_shiftedPt_UnclusteredEnDown);
   fChain->SetBranchAddress("type1_pfMet_shiftedPt_UnclusteredEnUp", &type1_pfMet_shiftedPt_UnclusteredEnUp, &b_type1_pfMet_shiftedPt_UnclusteredEnUp);
   fChain->SetBranchAddress("vbfMass", &vbfMass, &b_vbfMass);
   fChain->SetBranchAddress("vbfMass_JERDown", &vbfMass_JERDown, &b_vbfMass_JERDown);
   fChain->SetBranchAddress("vbfMass_JERUp", &vbfMass_JERUp, &b_vbfMass_JERUp);
   fChain->SetBranchAddress("vbfMass_JetAbsoluteDown", &vbfMass_JetAbsoluteDown, &b_vbfMass_JetAbsoluteDown);
   fChain->SetBranchAddress("vbfMass_JetAbsoluteUp", &vbfMass_JetAbsoluteUp, &b_vbfMass_JetAbsoluteUp);
   fChain->SetBranchAddress("vbfMass_JetAbsoluteyearDown", &vbfMass_JetAbsoluteyearDown, &b_vbfMass_JetAbsoluteyearDown);
   fChain->SetBranchAddress("vbfMass_JetAbsoluteyearUp", &vbfMass_JetAbsoluteyearUp, &b_vbfMass_JetAbsoluteyearUp);
   fChain->SetBranchAddress("vbfMass_JetBBEC1Down", &vbfMass_JetBBEC1Down, &b_vbfMass_JetBBEC1Down);
   fChain->SetBranchAddress("vbfMass_JetBBEC1Up", &vbfMass_JetBBEC1Up, &b_vbfMass_JetBBEC1Up);
   fChain->SetBranchAddress("vbfMass_JetBBEC1yearDown", &vbfMass_JetBBEC1yearDown, &b_vbfMass_JetBBEC1yearDown);
   fChain->SetBranchAddress("vbfMass_JetBBEC1yearUp", &vbfMass_JetBBEC1yearUp, &b_vbfMass_JetBBEC1yearUp);
   fChain->SetBranchAddress("vbfMass_JetEC2Down", &vbfMass_JetEC2Down, &b_vbfMass_JetEC2Down);
   fChain->SetBranchAddress("vbfMass_JetEC2Up", &vbfMass_JetEC2Up, &b_vbfMass_JetEC2Up);
   fChain->SetBranchAddress("vbfMass_JetEC2yearDown", &vbfMass_JetEC2yearDown, &b_vbfMass_JetEC2yearDown);
   fChain->SetBranchAddress("vbfMass_JetEC2yearUp", &vbfMass_JetEC2yearUp, &b_vbfMass_JetEC2yearUp);
   fChain->SetBranchAddress("vbfMass_JetFlavorQCDDown", &vbfMass_JetFlavorQCDDown, &b_vbfMass_JetFlavorQCDDown);
   fChain->SetBranchAddress("vbfMass_JetFlavorQCDUp", &vbfMass_JetFlavorQCDUp, &b_vbfMass_JetFlavorQCDUp);
   fChain->SetBranchAddress("vbfMass_JetHFDown", &vbfMass_JetHFDown, &b_vbfMass_JetHFDown);
   fChain->SetBranchAddress("vbfMass_JetHFUp", &vbfMass_JetHFUp, &b_vbfMass_JetHFUp);
   fChain->SetBranchAddress("vbfMass_JetHFyearDown", &vbfMass_JetHFyearDown, &b_vbfMass_JetHFyearDown);
   fChain->SetBranchAddress("vbfMass_JetHFyearUp", &vbfMass_JetHFyearUp, &b_vbfMass_JetHFyearUp);
   fChain->SetBranchAddress("vbfMass_JetRelativeBalDown", &vbfMass_JetRelativeBalDown, &b_vbfMass_JetRelativeBalDown);
   fChain->SetBranchAddress("vbfMass_JetRelativeBalUp", &vbfMass_JetRelativeBalUp, &b_vbfMass_JetRelativeBalUp);
   fChain->SetBranchAddress("vbfMass_JetRelativeSampleDown", &vbfMass_JetRelativeSampleDown, &b_vbfMass_JetRelativeSampleDown);
   fChain->SetBranchAddress("vbfMass_JetRelativeSampleUp", &vbfMass_JetRelativeSampleUp, &b_vbfMass_JetRelativeSampleUp);
   fChain->SetBranchAddress("vbfMass_JetTotalDown", &vbfMass_JetTotalDown, &b_vbfMass_JetTotalDown);
   fChain->SetBranchAddress("vbfMass_JetTotalUp", &vbfMass_JetTotalUp, &b_vbfMass_JetTotalUp);
   fChain->SetBranchAddress("vispX", &vispX, &b_vispX);
   fChain->SetBranchAddress("vispY", &vispY, &b_vispY);
   fChain->SetBranchAddress("idx", &idx, &b_idx);


   Notify();
}

Bool_t smhtt_2018::Notify()
{
   // The Notify() function is called when a new file is opened. This
   // can be either for a new TTree in a TChain or when when a new TTree
   // is started when using PROOF. It is normally not necessary to make changes
   // to the generated code, but the routine can be extended by the
   // user if needed. The return value is currently not used.

   return kTRUE;
}

void smhtt_2018::Show(Long64_t entry)
{
// Print contents of entry.
// If entry is not specified, print current entry
   if (!fChain) return;
   fChain->Show(entry);
}
Int_t smhtt_2018::Cut(Long64_t entry)
{
// This function may be called from Loop.
// returns  1 if entry is accepted.
// returns -1 otherwise.
   return 1;
}
#endif // #ifdef smhtt_2018_cxx
