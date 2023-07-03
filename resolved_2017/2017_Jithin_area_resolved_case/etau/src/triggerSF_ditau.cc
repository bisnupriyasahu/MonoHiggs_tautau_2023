#include "TF1.h"
#include "TFile.h"
#include "TString.h"

using namespace std;

class triggerSF_ditau
{
public:
  TString isolation;
  bool isVBF;
  string vbf;
  int tauDM;
  TFile* tauTriggerEff_2018;
  
  TH1F  *h_tauTrgSF_dm0;
  TH1F  *h_tauTrgSF_dm1;
  TH1F  *h_tauTrgSF_dm10;
  TH1F  *h_tauTrgSF_dm11;
  
  TH1F  *h_data_eff;
  TH1F  *h_mc_eff;
  triggerSF_ditau(TString iso, bool _isVBF_) : isolation(iso), isVBF(_isVBF_) 
  {
    //std::cout<<"triggerSF_ditau constructed"<<endl;
    //std::cout<<"isolation = "<<isolation<< "  isVBF="<<isVBF<<endl;
    tauTriggerEff_2018 = TFile::Open("sf_files/TauTriggerSFs/data/2017_tauTriggerEff_DeepTau2017v2p1.root");
    vbf="";
    if(isVBF){
      vbf="vbf";
      h_tauTrgSF_dm0  = (TH1F*) tauTriggerEff_2018->Get("sf_ditauvbf_"+isolation+"_dm0_fitted");
      h_tauTrgSF_dm1  = (TH1F*) tauTriggerEff_2018->Get("sf_ditauvbf_"+isolation+"_dm1_fitted");
      h_tauTrgSF_dm10 = (TH1F*) tauTriggerEff_2018->Get("sf_ditauvbf_"+isolation+"_dm1011_fitted");
      h_tauTrgSF_dm11 = (TH1F*) tauTriggerEff_2018->Get("sf_ditauvbf_"+isolation+"_dm1011_fitted");
    }
    else{
      h_tauTrgSF_dm0  = (TH1F*) tauTriggerEff_2018->Get("sf_ditau_"+isolation+"_dm0_fitted");
      h_tauTrgSF_dm1  = (TH1F*) tauTriggerEff_2018->Get("sf_ditau_"+isolation+"_dm1_fitted");
      h_tauTrgSF_dm10 = (TH1F*) tauTriggerEff_2018->Get("sf_ditau_"+isolation+"_dm10_fitted");
      h_tauTrgSF_dm11 = (TH1F*) tauTriggerEff_2018->Get("sf_ditau_"+isolation+"_dm11_fitted");
    }

  }
  ~triggerSF_ditau(){
    //std::cout<<"triggerSF_ditau destructing..."<<endl;
    tauTriggerEff_2018->Close();
  
  }
  double get_BinContent(TH1* histo, double xValue) {
    if ( histo == NULL ) 
      {  cout << histo->GetName() << " is null" << endl; return 1.0; }
    return histo->GetBinContent( histo->GetXaxis()->FindBin(xValue) );
  }
  double get_BinError(TH1* histo, double xValue) {
    //if ( histo == NULL ) cout << histo->GetName() << " is null" << endl;
    return histo->GetBinError( histo->GetXaxis()->FindBin(xValue) );
  }

  double get_data_eff(int tauDm, double tauPt){
    if(isVBF && tauDm>=10)
      tauDm=1011;
    h_data_eff = (TH1F*) tauTriggerEff_2018->Get("data_ditau"+vbf+"_"+isolation+"_dm"+to_string(tauDm)+"_fitted");
    return get_BinContent( h_data_eff, tauPt ) ;

  }
  double get_mc_eff(int tauDm, double tauPt){
    if(isVBF && tauDm>=10)
      tauDm=1011;
    h_mc_eff = (TH1F*) tauTriggerEff_2018->Get("mc_ditau"+vbf+"_"+isolation+"_dm"+to_string(tauDm)+"_fitted");
    return get_BinContent( h_mc_eff, tauPt ) ;
    
  }
  double get_sf_eff(int tauDm, double tauPt){
    //cout<<" \n get_sf_eff ="<<get_data_eff(tauDm, tauPt) / get_mc_eff(tauDm, tauPt) <<endl;
    return get_data_eff(tauDm, tauPt) / get_mc_eff(tauDm, tauPt);
  }

  double get_sf(int dm, double taupt){
    //std::cout<<" returning trigger sf"<<endl;
    if(dm==0) return get_BinContent( h_tauTrgSF_dm0, taupt ) ;
    if(dm==1) return get_BinContent( h_tauTrgSF_dm1, taupt ) ;
    if(dm==10) return get_BinContent( h_tauTrgSF_dm10, taupt ) ;
    if(dm==11) return get_BinContent( h_tauTrgSF_dm11, taupt ) ;
    return 1.0;
  }
  double get_sf_err(int dm, double taupt){
    //std::cout<<" returning trigger sf"<<endl;
    if(dm==0) return get_BinError( h_tauTrgSF_dm0, taupt ) ;
    if(dm==1) return get_BinError( h_tauTrgSF_dm1, taupt ) ;
    if(dm==10) return get_BinError( h_tauTrgSF_dm10, taupt ) ;
    if(dm==11) return get_BinError( h_tauTrgSF_dm11, taupt ) ;
    return 1.0;
  }
  
};
