#ifndef KIT_LEPTON_SF_h
#define KIT_LEPTON_SF_h

#include <TFile.h>
#include <TH1.h>
#include <TF1.h>
#include <TString.h>
#include <TRandom.h>
#include <TMath.h>
#include <assert.h>
#include "string.h"


using namespace std;
class KIT_lepton_SF {
private:
  TFile* fileIn;
  TH1* etaBinsH;
  int nEtaBins ;
  bool debug_;
  //map<string, TGraph*>* myMap_effData;
  //map<string, TGraph*>* myMap_effMC;
  //int findPtBin(double pt);

  double get_EfficiencyData(double pt, double eta);
  double get_EfficiencyMC(double pt, double eta);
  
  vector<TGraph*> ZMassEfficiency_Data ;
  vector<TGraph*> ZMassEfficiency_MC ;
  TString ZMassEtaLabel ;
  
public:
  KIT_lepton_SF();
  ~KIT_lepton_SF();
  void init_ScaleFactors( string fileName);
  double get_ScaleFactor(double pt, double eta);
};
KIT_lepton_SF::KIT_lepton_SF(){
  debug_=false;
  if(debug_)cout<<"KIT_lepton_SF constr"<<endl;  
  
}
KIT_lepton_SF::~KIT_lepton_SF(){
  if(debug_)cout<<"KIT_lepton_SF destr"<<endl;
  ZMassEfficiency_Data.clear();
  ZMassEfficiency_MC.clear();
  fileIn->Close();
}
void KIT_lepton_SF::init_ScaleFactors(string fileName){
  //if(debug_)cout<<"inputRootFile : "<<inputRootFile<<endl;
  TFile * file = new TFile(fileName.c_str());
  if (file->IsZombie()) {
    std::cout << "file " << fileName << " is not found...   quitting " << std::endl;
    exit(-1);
  }
  fileIn = TFile::Open(fileName.c_str());
  etaBinsH=(TH1*) fileIn->Get("etaBinsH");
  etaBinsH->SetDirectory(0);
  nEtaBins = etaBinsH->GetNbinsX();
  ZMassEfficiency_Data.clear();
  ZMassEfficiency_MC.clear();
  
  for (int i=0; i<nEtaBins; i++)
    {
      ZMassEtaLabel = etaBinsH->GetXaxis()->GetBinLabel(i+1);
      //cout<<" ZMassEtaLabel = " <<ZMassEtaLabel <<endl;
      //TString histogram_label = "ZMass"+ZMassEtaLabel+"_Data";
      //TGraph* ZMassEta_Data = (TGraph*) fileIn->Get(histogram_label);
      //ZMassEfficiency_Data.push_back( ZMassEta_Data ) ;
      ZMassEfficiency_Data.push_back( (TGraph*) fileIn->Get("ZMass"+ZMassEtaLabel+"_Data") ) ;
      //histogram_label = "ZMass"+ZMassEtaLabel+"_MC";
      //TGraph* ZMassEta_MC = (TGraph*) fileIn->Get(histogram_label);
      //ZMassEfficiency_MC.push_back( ZMassEta_MC );
      ZMassEfficiency_MC.push_back( (TGraph*) fileIn->Get("ZMass"+ZMassEtaLabel+"_MC") ) ;
      //cout<<"tgraphs loaded ..."<<endl;
    }
  
}
double KIT_lepton_SF::get_EfficiencyData(double pt, double eta){
  double rv_eff= 1.0;
  if(pt >1000) pt=999;
  else if (pt<=10) pt=10;
  double eta_bin = etaBinsH->GetXaxis()->FindFixBin(abs(eta));
  //cout<<" eta_bin  = "<<eta_bin<< "  eta="<<eta<<endl;
  if (eta_bin >= nEtaBins)
    eta_bin = nEtaBins;
  rv_eff = ZMassEfficiency_Data[eta_bin-1]->Eval(pt);
  return rv_eff;
}
double KIT_lepton_SF::get_EfficiencyMC(double pt, double eta){
  double rv_eff= 1.0;
  if(pt >1000) pt=999;
  else if (pt<=10) pt=10;
  double eta_bin = etaBinsH->GetXaxis()->FindFixBin(abs(eta));
  if (eta_bin >= nEtaBins)
    eta_bin = nEtaBins;
  //cout<<" eta_bin  = "<<eta_bin<<"  eta="<<eta<<endl;
  rv_eff = ZMassEfficiency_MC[eta_bin-1]->Eval(pt);
  return rv_eff;
}
double KIT_lepton_SF::get_ScaleFactor(double pt, double eta){
  double rv_sf = 1.0;
  //cout<<"pt "<<pt<<" eta "<<eta<<endl;
  double eff_data = get_EfficiencyData(pt, eta);
  double eff_mc = get_EfficiencyMC(pt, eta);
  if (eff_mc !=0)
    rv_sf = eff_data / eff_mc ;
  else
    rv_sf = 1.0;
  if(debug_)cout<<"pt "<<pt<<" eta "<<eta<<" rv_sf "<<rv_sf<<endl;
  return rv_sf;
}
#endif
