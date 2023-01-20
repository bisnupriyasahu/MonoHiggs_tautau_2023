#include "TF1.h"

float get_raw_FF(float pt, TF1* fct){
  //cout<<"get_raw_FF entered"<<endl;
  float ff=1.0;
  ff=fct->Eval(pt);
  //if (pt>80) ff=fct->Eval(80);
  if (ff>0) return ff;
  else return 0.0;
}

float get_mvis_closure(float mvis, TF1* fct){
  float corr=1.0;

  TF1* mvis_correction_low = new TF1("mvis_correction_low","0.7849246 + 0.01559851*x - 0.0001423846*x^2",0,100); 
  TF1* mvis_correction_high = new TF1("mvis_correction_high"," -0.000025*x + 1.08",0,1000);
  if(mvis>90)
    corr=mvis_correction_high->Eval(mvis);
  else
    corr=mvis_correction_low->Eval(mvis);
  //if (mvis>300) corr=fct->Eval(300);
  //if (mvis<50) corr=fct->Eval(50);
  if (corr>0 && corr<2) return corr;
  else return 1.0;
}
float get_tau2Pt_corr(float tau2_pT, TF1* fct){
  float corr=1.0;
  corr=fct->Eval(tau2_pT);
  if (corr>0 && corr<2) return corr;
  else return 1.0;
}
float get_mt_closure(float mt, TF1* fct){
  float corr=1.0;
  corr=fct->Eval(mt);
  if (corr>0 && corr<2) return corr;
  else return 1.0;

}

float get_ff(float pt, float pt2, float mt, float mvis, int njets, float frac_tt, float frac_qcd, float frac_w, TF1* fct_raw_qcd_0, TF1* fct_raw_qcd_1, TF1* fct_raw_qcd_2, TF1* fct_subleadingTauPt_correction, TF1* fct_OSSScorrection_qcd){
  cout<<" running get_ff "<< endl;
   float ff_qcd=1.0;
   float ff_w=0;
   float ff_tt=1.0;
   //cout<<"line 36"<<endl;
   // Raw FF
   if (njets==0){
     //cout<<"line 39"<<endl;
     ff_qcd=get_raw_FF(pt,fct_raw_qcd_0);
     //ff_w=get_raw_FF(pt,fct_raw_w_0);
   }
   if (njets==1){
     //cout<<"line 39"<<endl;
     ff_qcd=get_raw_FF(pt,fct_raw_qcd_1);
     //ff_w=get_raw_FF(pt,fct_raw_w_0);
   }
   else{
     //cout<<"line 44"<<endl;
     ff_qcd=get_raw_FF(pt,fct_raw_qcd_2);
     //ff_w=get_raw_FF(pt,fct_raw_w_1);
   }
   //cout<<"line 46"<<endl;
   //ff_tt=get_raw_FF(pt,fct_raw_tt);
   //cout<<"line 48"<<endl;
   
   // Mvis closure
   //ff_qcd = ff_qcd*get_mvis_closure(mvis, fct_mvisclosure_qcd);
   //ff_w = ff_w*get_mvis_closure(mvis, fct_mvisclosure_w);
   //ff_tt = ff_tt*get_mvis_closure(mvis, fct_mvisclosure_tt);
   //cout<<"line 53"<<endl;
   // MT and OSSS corrections
   //cout<<"ff_w*get_mt_closure"<<endl;
   //ff_w = ff_w*get_mt_closure(mt,fct_mtcorrection_w);
   //cout<<"ff_qcd*get_mvis_closure"<<endl;
   //cout<<"line 58"<<endl;
   //ff_qcd = ff_qcd*get_mvis_closure(mvis, fct_OSSScorrection_qcd);
   //cout<<"line 62"<<endl;
   //ff_w = ff_w*1.0;
   //ff_qcd = ff_qcd*1.0;
   
   //cout<<"ff_qcd :"<<ff_qcd<<" corrections :"<<get_mvis_closure(mvis, fct_OSSScorrection_qcd) << " "<<get_tau2Pt_corr(pt2, fct_subleadingTauPt_correction)<<endl;
   ff_qcd = ff_qcd*get_mvis_closure(mvis, fct_OSSScorrection_qcd);
   ff_qcd = ff_qcd*get_tau2Pt_corr(pt2, fct_subleadingTauPt_correction);
   //float ff_cmb=frac_tt*ff_tt + frac_qcd*ff_qcd + frac_w*ff_w;
   //cout<<"ff_cmb : "<<ff_cmb<<endl;
   float ff_cmb = ff_qcd;
   return ff_cmb;
} 

