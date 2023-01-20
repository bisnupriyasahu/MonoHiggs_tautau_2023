#include "TF1.h"
#include "TFile.h"
#include "TString.h"

using namespace std;

class applyFF_w_lpt
{
public:
  TFile* frawff;
  TFile* fmvisclosure;
  TFile* fosssclosure;

  TF1* ff_qcd_0jet;
  TF1* ff_qcd_1jet;
  TF1* ff_qcd_2jet;

  TFile* frawff_tt;
  TH1F* ff_qcd_0jet_tt;
  TH1F* ff_qcd_1jet_tt;
  TH1F* ff_qcd_2jet_tt;
  TH1F* ff_qcd_3jet_tt;
  TH1F* ff_qcd_4jet_tt;
  
  TF1* ff_qcd_dm0_0jet;
  TF1* ff_qcd_dm0_1jet;
  TF1* ff_qcd_dm0_2jet;
  TF1* ff_qcd_dm1_0jet;
  TF1* ff_qcd_dm1_1jet;
  TF1* ff_qcd_dm1_2jet;
  TF1* ff_qcd_dm10_0jet;
  TF1* ff_qcd_dm10_1jet;
  TF1* ff_qcd_dm10_2jet;
  TF1* ff_qcd_dm11_0jet;
  TF1* ff_qcd_dm11_1jet;
  TF1* ff_qcd_dm11_2jet;

  TF1* closure_mvis_tt_qcd;
  TF1* closure_tau2pt_tt_qcd;
  TF1* closure_tau1pt_tt_qcd;
  TF1* closure_met_tt_qcd;
  TF1* closure_tau2pt_tt_qcd_0jet;
  TF1* closure_tau2pt_tt_qcd_1jet;
  TF1* closure_tau2pt_tt_qcd_2jet;
  TF1* osssclosure_qcd_low;
  TF1* osssclosure_qcd_high;

  applyFF_w_lpt(){
    //std::cout<<"applyFF_w_lpt constructed"<<endl;
    frawff = TFile::Open("sf_files/FF_lptCorrInBinsOfTauPt/FF_differential/ff_files_tt_2018/uncorrected_fakefactors_tt.root");
    ff_qcd_0jet=(TF1*) frawff->Get("rawFF_tt_qcd_0jet");
    ff_qcd_1jet=(TF1*) frawff->Get("rawFF_tt_qcd_1jet");
    ff_qcd_2jet=(TF1*) frawff->Get("rawFF_tt_qcd_2jet");
    
    frawff_tt = TFile::Open("sf_files/FF_lptCorrInBinsOfTauPt/FF_differential/ff_files_tt_2018/raw_FF_tautau_unfitted.root");
    ff_qcd_0jet_tt=(TH1F*) frawff_tt->Get("raw_FF_tautau_0jet");
    ff_qcd_1jet_tt=(TH1F*) frawff_tt->Get("raw_FF_tautau_1jet");
    ff_qcd_2jet_tt=(TH1F*) frawff_tt->Get("raw_FF_tautau_2jet");
    ff_qcd_3jet_tt=(TH1F*) frawff_tt->Get("raw_FF_tautau_3jet");
    ff_qcd_4jet_tt=(TH1F*) frawff_tt->Get("raw_FF_tautau_4jet");

    // ff_qcd_dm0_0jet=(TF1*) frawff->Get("rawFF_tt_qcd_dm0_0jet");
    // ff_qcd_dm0_1jet=(TF1*) frawff->Get("rawFF_tt_qcd_dm0_1jet");
    // ff_qcd_dm0_2jet=(TF1*) frawff->Get("rawFF_tt_qcd_dm0_2jet");
    
    // ff_qcd_dm1_0jet=(TF1*) frawff->Get("rawFF_tt_qcd_dm1_0jet");
    // ff_qcd_dm1_1jet=(TF1*) frawff->Get("rawFF_tt_qcd_dm1_1jet");
    // ff_qcd_dm1_2jet=(TF1*) frawff->Get("rawFF_tt_qcd_dm1_2jet");

    // ff_qcd_dm10_0jet=(TF1*) frawff->Get("rawFF_tt_qcd_dm10_0jet");
    // ff_qcd_dm10_1jet=(TF1*) frawff->Get("rawFF_tt_qcd_dm10_1jet");
    // ff_qcd_dm10_2jet=(TF1*) frawff->Get("rawFF_tt_qcd_dm10_2jet");

    // ff_qcd_dm11_0jet=(TF1*) frawff->Get("rawFF_tt_qcd_dm11_0jet");
    // ff_qcd_dm11_1jet=(TF1*) frawff->Get("rawFF_tt_qcd_dm11_1jet");
    // ff_qcd_dm11_2jet=(TF1*) frawff->Get("rawFF_tt_qcd_dm11_2jet");


    fmvisclosure = TFile::Open("sf_files/FF_lptCorrInBinsOfTauPt/FF_differential/ff_files_tt_2018/FF_corrections_1.root");
    closure_mvis_tt_qcd=(TF1*) fmvisclosure->Get("closure_mvis_tt_qcd");
    closure_tau2pt_tt_qcd=(TF1*) fmvisclosure->Get("closure_tau2pt_tt_qcd");
    closure_tau1pt_tt_qcd=(TF1*) fmvisclosure->Get("closure_tau1pt_tt_qcd");
    closure_met_tt_qcd=(TF1*) fmvisclosure->Get("closure_met_tt_qcd");
    closure_tau2pt_tt_qcd_0jet=(TF1*) fmvisclosure->Get("closure_tau2pt_tt_qcd_0jet");
    closure_tau2pt_tt_qcd_1jet=(TF1*) fmvisclosure->Get("closure_tau2pt_tt_qcd_1jet");
    closure_tau2pt_tt_qcd_2jet=(TF1*) fmvisclosure->Get("closure_tau2pt_tt_qcd_2jet");

    fosssclosure  = TFile::Open("sf_files/FF_lptCorrInBinsOfTauPt/FF_differential/ff_files_tt_2018/FF_QCDcorrectionOSSS_tt.root");
    osssclosure_qcd_low=(TF1*) fosssclosure->Get("closure_OSSS_mvis_tt_qcd");
    osssclosure_qcd_high=(TF1*) fosssclosure->Get("closure_OSSS_mvis_tt_qcd_linear");

  }
  ~applyFF_w_lpt(){
    //std::cout<<"applyFF_w_lpt destructing..."<<endl;
    frawff->Close();
    fmvisclosure->Close();
    fosssclosure->Close();
  }
  float get_raw_FF(float pt, TF1* fct){
    float ff=1.0;
    ff=fct->Eval(pt);
    if (pt>135) ff=fct->Eval(135);
    return ff;
    //if (ff<0) return 0.0;
    //else if (ff>2) return 2.0;
    //else return ff;
  }

  float get_mvis_closure(float mvis, TF1* fct){
    float corr=1.0;
    corr=fct->Eval(mvis);
    //if (mvis>150) corr=fct->Eval(150);
    if (corr<0 || corr>2) return 1.0;
    else return corr;
  }

  float get_lpt_closure(float lpt, TF1* fct){
    float corr=1.0;
    corr=fct->Eval(lpt);
    if (lpt>100) corr=fct->Eval(100);
    return corr;
  }

  float get_met_closure(float met, TF1* fct){
    float corr=1.0;
    corr=fct->Eval(met);
    if (corr<=0 || corr>2) return 1.0;
    else return corr;
  }
  double get_BinContent(TH1* histo, double xValue) {
    //if ( histo == NULL ) cout << histo->GetName() << " is null" << endl;
    return histo->GetBinContent( histo->GetXaxis()->FindBin(xValue) );
  }
  double get_BinError(TH1* histo, double xValue) {
    //if ( histo == NULL ) cout << histo->GetName() << " is null" << endl;
    return histo->GetBinError( histo->GetXaxis()->FindBin(xValue) );
  }
  
  float get_ff(float pt, float mt, float mvis, float msv, float lpt, float met, int njets, int tau_dm , float frac_tt, float frac_qcd, float frac_w, TString shift){
    float ff_qcd=1.0;
    float ff_w=0;
    float ff_tt=1.0;

    // if (njets==0)
    //   ff_qcd= get_raw_FF(pt, ff_qcd_0jet);
    // else if (njets==1)
    //   ff_qcd= get_raw_FF(pt, ff_qcd_1jet);
    // else 
    //   ff_qcd= get_raw_FF(pt, ff_qcd_2jet);
    if (njets==0)
      {
	ff_qcd= get_BinContent(ff_qcd_0jet_tt, pt);
	float err = get_BinError(ff_qcd_0jet_tt, pt);
	if (shift=="ff_up") err = ff_qcd + err ;
	else if (shift=="ff_down") err = ff_qcd - err ;
      }
    else if (njets==1)
      {
	ff_qcd= get_BinContent(ff_qcd_1jet_tt, pt);
	float err = get_BinError(ff_qcd_1jet_tt, pt);
        if (shift=="ff_up") err = ff_qcd + err ;
        else if (shift=="ff_down") err = ff_qcd - err ;
      }
    else if (njets==2)
      {
	ff_qcd= get_BinContent(ff_qcd_2jet_tt, pt);
	float err = get_BinError(ff_qcd_2jet_tt, pt);
        if (shift=="ff_up") err = ff_qcd + err ;
        else if (shift=="ff_down") err = ff_qcd - err ;
      }
    // else if (njets==3)
    //   ff_qcd= get_BinContent(ff_qcd_3jet_tt, pt);
    // else if (njets>=4)
    //   ff_qcd= get_BinContent(ff_qcd_4jet_tt, pt);


    // //// subleading tau pt correction
    // TF1* tau2Pt_corr = new TF1("tau2Pt_corr","1.252 - 0.00713*x + 0.00003975*x^2",0,1000);
    if (njets==0)
      {
	float corr =  get_lpt_closure(lpt, closure_tau2pt_tt_qcd_0jet);
	if (corr > 1){
	  if (shift=="lpt_corr_up")        ff_qcd = ff_qcd * corr * corr;
	  else if (shift=="lpt_corr_down") ff_qcd = ff_qcd;
	  else                             ff_qcd = ff_qcd * corr;
	}
	else{
	  if (shift=="lpt_corr_up")        ff_qcd = ff_qcd;
	  else if (shift=="lpt_corr_down") ff_qcd = ff_qcd * corr * corr;
	  else                             ff_qcd = ff_qcd * corr;
	}
      }
    else if (njets==1)
      {
	float corr =  get_lpt_closure(lpt, closure_tau2pt_tt_qcd_1jet);
	if (corr > 1){
	  if (shift=="lpt_corr_up")        ff_qcd = ff_qcd * corr * corr;
	  else if (shift=="lpt_corr_down") ff_qcd = ff_qcd;
	  else                             ff_qcd = ff_qcd * corr;
	}
	else{
	  if (shift=="lpt_corr_up")        ff_qcd = ff_qcd;
	  else if (shift=="lpt_corr_down") ff_qcd = ff_qcd * corr * corr;
	  else                             ff_qcd = ff_qcd * corr;
	}
      }
    else if (njets>=2)
      {      
	float corr =  get_lpt_closure(lpt, closure_tau2pt_tt_qcd_2jet);
        if (corr > 1){
          if (shift=="lpt_corr_up")        ff_qcd = ff_qcd * corr * corr;
          else if (shift=="lpt_corr_down") ff_qcd = ff_qcd;
          else                             ff_qcd = ff_qcd * corr;
        }
        else{
          if (shift=="lpt_corr_up")        ff_qcd = ff_qcd;
          else if (shift=="lpt_corr_down") ff_qcd = ff_qcd * corr * corr;
          else                             ff_qcd = ff_qcd * corr;
        }
      }
    if (ff_qcd<0)
      cout<<__LINE__<<"     ff_qcd = "<<ff_qcd<<endl;

    double visCorr = 1.0;
    if(mvis<=90)
      {
	visCorr = get_mvis_closure(mvis, osssclosure_qcd_low);
	//cout<<"mvis = "<<mvis<<"   visCorr = "<< visCorr <<endl;
      }
    else
      visCorr = get_mvis_closure(mvis, osssclosure_qcd_high);
    
    ff_qcd = ff_qcd * visCorr;
    float mvis_err = abs(1 - get_mvis_closure(mvis, osssclosure_qcd_high));
    if (shift=="mvis_corr_up")        ff_qcd = ff_qcd*(1 + mvis_err);
    else if (shift=="mvis_corr_down") ff_qcd = ff_qcd*(1 - mvis_err);

    if (ff_qcd<0)
      ff_qcd = -1*ff_qcd;
    //cout<<__LINE__<<"     ff_qcd = "<<ff_qcd<<endl;
    ////// jet multiplicity 5% normalization uncertainty
    if (shift=="njet_up") ff_qcd = ff_qcd * 1.05;
    else if (shift=="njet_down") ff_qcd = ff_qcd * 0.95;

    
    return ff_qcd;
  }
  
};
