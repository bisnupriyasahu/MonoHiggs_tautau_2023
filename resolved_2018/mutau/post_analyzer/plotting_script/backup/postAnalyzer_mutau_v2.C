#include <TH2.h>
//#include "ComputeWG1Unc.h"

#include <TH1.h>
#include <TStyle.h>
#include <TCanvas.h>
#include <TGraph.h>
#include <TGraphAsymmErrors.h>
#include "TMultiGraph.h"
#include <iostream>
#include <fstream>
#include <sstream>
#include <iomanip>
#include <vector>
#include <string>
#include <sstream>
#include <utility>
#include <stdio.h>
#include <TF1.h>
#include <TDirectoryFile.h>
#include <TRandom3.h>
#include "TLorentzVector.h"
#include "TString.h"
#include "TLegend.h"
#include "TH1F.h"
#include "TKey.h"
#include "THashList.h"
#include "THStack.h"
#include "TPaveLabel.h"
#include "TFile.h"
//#include "myHelper.h"
//#include "tr_Tree.h"
//#include "ScaleFactor.h"
//#include "ZmmSF.h"
//#include "LumiReweightingStandAlone.h"
//#include "btagSF.h"
#include "RooWorkspace.h"
#include "RooRealVar.h"
#include "RooFunctor.h"
#include "TGraph2D.h"
#include "TColor.h"
#include <vector>
typedef std::vector<double> NumV;

using namespace std;
Double_t Luminosity = 59700.0/5 ;//Lumi for inclusive
bool debugOn=false;


void make_hist(TFile* file_input, TFile* f_output, TString histoname, TString histSaveName, double weight )
{
  
  f_output->cd();
  TDirectory *dir_update = f_output->mkdir(histoname);
  f_output->cd(histoname);
  
  TH1F* histo_mutau = (TH1F*)((TH1F*)file_input->Get( histoname))->Clone(TString(histSaveName+"_"+histoname));
  histo_mutau->Scale(weight);
  histo_mutau->Write();
  return;
}


int main(int argc, char** argv)
{

  if(debugOn==true)cout<<"starting main fn......."<<'\n';
  
  std::string input = *(argv + 1);
  std::string output = *(argv + 2);
  std::string sample = *(argv + 3);
  std::string histSaveName = *(argv + 4);

  float tes=0;
  if (argc > 1) {
    tes = atof(argv[5]);
  }
  TFile *file_input = new TFile(input.c_str());
  cout<<left<<" Input file "<<std::setw(30)<<input.c_str()<<std::setw(10)<<" ---> "<<" Output written to  "<<std::setw(10)<<output.c_str()<<endl;
  //cout<<"  "<<endl;
    TH1F* nbevt;
  bool nEventsExists = file_input->GetListOfKeys()->Contains("nEvents");
  if(nEventsExists){
    nbevt = (TH1F*) file_input->Get("nEvents" );
  }
  else{
    cout<<"nEvents not found"<<endl;
    return 0;
  }
  //TTree *arbre = (TTree*) file_input->Get("/ggNtuplizer/EventTree");
  //float ngen = 10000;
  if(debugOn==true)cout<<"Opened nEvents histogram "<<'\n';

  Double_t ngen = nbevt->GetBinContent(1);
  //  Double_t nFinal = nbevt->GetBinContent(12);

  if(debugOn==true)cout<<" "<<"ngen = "<< ngen<<"  "<<'\n';
  if (ngen<1) if(debugOn==true)cout<<"XXXXXXXXXXXXX  "<<" check this one !!" << input.c_str()<<"  XXXXXXXXXXXXX "<<'\n';


  Double_t xs=1.0; Double_t weight=1.0; Double_t luminosity=Luminosity;
  Double_t LOtoNNLO_DY = 5765.4/4954.0;
  Double_t LOtoNNLO_Wjets = 61526.7/50380; 
  if (sample=="ZL" || sample=="ZTT" || sample=="ZJ" || sample=="ZLL"){ xs=5765.4; weight=luminosity*xs/ngen;}
  else if (sample=="DY_LO" || sample=="DYJetsToLL"){ xs=LOtoNNLO_DY*4954.0; weight=luminosity*xs/ngen;}
  else if (sample=="DY1JetsToLL"){ xs=LOtoNNLO_DY*1012.5; weight=luminosity*xs/ngen;}
  else if (sample=="DY2JetsToLL"){ xs=LOtoNNLO_DY*332.8; weight=luminosity*xs/ngen;}
  else if (sample=="DY3JetsToLL"){ xs=LOtoNNLO_DY*101.8; weight=luminosity*xs/ngen;}
  else if (sample=="DY4JetsToLL"){ xs=LOtoNNLO_DY*54.8; weight=luminosity*xs/ngen;}
  else if (sample=="TTJets") {xs=831.76; weight=luminosity*xs/ngen;}
  else if (sample=="TTTo2L2Nu" ) {xs=88.29; weight=luminosity*xs/ngen;}
  else if (sample=="TTToHadronic" ) {xs=377.96; weight=luminosity*xs/ngen;}
  else if (sample=="TTToSemiLeptonic" ) {xs=365.35; weight=luminosity*xs/ngen;}

  else if (sample=="ZTTjet_inc"){ xs=LOtoNNLO_DY*4954.0; weight=3.621053408/5;}
  else if (sample=="ZTT1jet"){ xs=LOtoNNLO_DY*1012.5; weight=0.6992308/5;}
  else if (sample=="ZTT2jet"){ xs=LOtoNNLO_DY*332.8; weight=0.796501057/5;}
  else if (sample=="ZTT3jet"){ xs=LOtoNNLO_DY*101.8; weight=0.982524791/5;}
  else if (sample=="ZTT4jet"){ xs=LOtoNNLO_DY*54,8; weight=0.819765054/5;}
  
  else if (sample=="WJetsToLNu_inc") {xs=LOtoNNLO_Wjets*50380.0;    weight=luminosity*xs/ngen;}
  else if (sample=="WJetsToLNu")     {xs=LOtoNNLO_Wjets*50380.0;    weight=luminosity*xs/ngen;}
  else if (sample=="W1JetsToLNu")    {xs=LOtoNNLO_Wjets*9644.5;     weight=luminosity*xs/ngen;}
  else if (sample=="W2JetsToLNu")    {xs=LOtoNNLO_Wjets*3144.5;     weight=luminosity*xs/ngen;}
  else if (sample=="W3JetsToLNu")    {xs=LOtoNNLO_Wjets*964.8;      weight=luminosity*xs/ngen;}
  else if (sample=="W4JetsToLNu")    {xs=LOtoNNLO_Wjets*485.6;      weight=luminosity*xs/ngen;}

  else if (sample=="WJets_inc"){xs=LOtoNNLO_Wjets*50380.0;    weight=52.01898249/5;}
  else if (sample=="W1Jet")    {xs=LOtoNNLO_Wjets*9644.5;     weight=10.93401571/5;}
  else if (sample=="W2Jet")    {xs=LOtoNNLO_Wjets*3144.5;     weight=8.317497757/5;}
  else if (sample=="W3Jet")    {xs=LOtoNNLO_Wjets*964.8;      weight=4.417448717/5;}
  else if (sample=="W4Jet")    {xs=LOtoNNLO_Wjets*485.6;      weight=3.311191492/5;}

  else if (sample=="WJetsToLNu_2J" ){xs=LOtoNNLO_Wjets*50380; weight=luminosity*xs/ngen;} // {xs=50380.0; weight=luminosity*xs/ngen;}
  else if (sample=="WJetsToLNu_HT100-200") {xs=LOtoNNLO_Wjets*1345.0; weight=luminosity*xs/ngen;}
  else if (sample=="WJetsToLNu_HT200-400") {xs=LOtoNNLO_Wjets*359.7; weight=luminosity*xs/ngen;}
  else if (sample=="WJetsToLNu_HT400-600") {xs=LOtoNNLO_Wjets*48.91; weight=luminosity*xs/ngen;}
  else if (sample=="WJetsToLNu_HT600-800") {xs=LOtoNNLO_Wjets*12.04; weight=luminosity*xs/ngen;}
  else if (sample=="WJetsToLNu_HT800-1200") {xs=LOtoNNLO_Wjets*5.52; weight=luminosity*xs/ngen;}
  else if (sample=="WJetsToLNu_HT1200-2500") {xs=LOtoNNLO_Wjets*1.33; weight=luminosity*xs/ngen;}
  else if (sample=="WJetsToLNu_HT2500-Inf") {xs=LOtoNNLO_Wjets*0.0322; weight=luminosity*xs/ngen;}

  else if (sample=="GluGluHToTauTau") {xs=48.58*0.0627; weight=luminosity*xs/ngen;}
  else if (sample=="VBFHToTauTau") {xs=3.782*0.0627; weight=luminosity*xs/ngen;}
  else if (sample=="ZHToTauTau") {xs=0.7612*0.0627; weight=luminosity*xs/ngen;}
  else if (sample=="WplusH125" || sample=="WplusHToTauTau") {xs=0.8400*0.0627; weight=luminosity*xs/ngen;}
  else if (sample=="WminusH125" || sample=="WminusHToTauTau") {xs=0.5328*0.0627; weight=luminosity*xs/ngen;}
  else if (sample=="GluGluHToWWTo2L2Nu") {xs=1.154; weight=luminosity*xs/ngen;}
  else if (sample=="VBFHToWWTo2L2Nu") {xs=0.0897; weight=luminosity*xs/ngen;}

  else if (sample=="GluGluZH_HToWW") {xs=0.0262; weight=luminosity*xs/ngen;}
  else if (sample=="HWminusJ_HToWW") {xs=0.114; weight=luminosity*xs/ngen;}
  else if (sample=="HWplusJ_HToWW") {xs=0.180; weight=luminosity*xs/ngen;}
  else if (sample=="HZJ_HToWW") {xs=0.163; weight=luminosity*xs/ngen;}
  else if (sample=="WGToLNuG") {xs=464.4; weight=luminosity*xs/ngen;}
  else if (sample=="ggZH_HToTauTau_ZToLL") {xs=0.1227*0.0627*3*0.033658; weight=luminosity*xs/ngen;}
  else if (sample=="ggZH_HToTauTau_ZToNuNu") {xs=0.1227*0.0627*0.2000; weight=luminosity*xs/ngen;}
  else if (sample=="ggZH_HToTauTau_ZToQQ") {xs=0.1227*0.0627*0.6991; weight=luminosity*xs/ngen;}
  else if (sample=="ttHToNonbb") {xs=1.0; weight=luminosity*xs/ngen;}

  else if (sample=="QCD") {xs=720648000*0.00042; weight=luminosity*xs/ngen;}
  else if (sample=="data_obs"){weight=1.0;}
 
  else if (sample=="ZJetsToNuNu_HT100-200") {xs=280.92; weight=luminosity*xs/ngen;}
  else if (sample=="ZJetsToNuNu_HT200-400") {xs=77.64; weight=luminosity*xs/ngen;}
  else if (sample=="ZJetsToNuNu_HT400-600") {xs=10.671; weight=luminosity*xs/ngen;}
  else if (sample=="ZJetsToNuNu_HT600-800") {xs=2.5611; weight=luminosity*xs/ngen;}
  else if (sample=="ZJetsToNuNu_HT800-1200") {xs=1.1778; weight=luminosity*xs/ngen;}
  else if (sample=="ZJetsToNuNu_HT1200-2500") {xs=0.2874; weight=luminosity*xs/ngen;}
  else if (sample=="ZJetsToNuNu_HT2500-Inf") {xs=0.006933; weight=luminosity*xs/ngen;}
  
  else if (sample=="WZTo1L3Nu") {xs=3.05; weight=luminosity*xs/ngen;}
  else if (sample=="WZTo1L1Nu2Q") {xs=10.71; weight=luminosity*xs/ngen;}
  else if (sample=="WZTo2L2Q") {xs=5.595; weight=luminosity*xs/ngen;}
  else if (sample=="WZTo3LNu") {xs=4.43; weight=luminosity*xs/ngen;}
  else if (sample=="VVTo2L2Nu") {xs=13.84; weight=luminosity*xs/ngen;}

  else if (sample=="ST_tW_antitop") {xs=35.85; weight=luminosity*xs/ngen;}
  else if (sample=="ST_tW_top") {xs=35.85; weight=luminosity*xs/ngen;}
  else if (sample=="ST_t-channel_antitop") {xs=80.95; weight=luminosity*xs/ngen;}
  else if (sample=="ST_t-channel_top") {xs=136.02; weight=luminosity*xs/ngen;}
  
  else if (sample=="WWTo1L1Nu2Q" || sample=="WWToLNuQQ") {xs=10.71; weight=luminosity*xs/ngen;}
  else if (sample=="WWTo2L2Nu") {xs=12.178; weight=luminosity*xs/ngen;}
  else if (sample=="GluGluWWTo2L2Nu") {xs=0.59; weight=luminosity*xs/ngen;}
  else if (sample=="WWTo2L2Nu_DoubleScattering") {xs=1.62; weight=luminosity*xs/ngen;} //WWTo2L2Nu_DoubleScattering
  else if (sample=="WpWpJJ_EWK_QCD") {xs=0.02615; weight=luminosity*xs/ngen;}
  else if (sample=="WpWpJJ_EWK") {xs=0.02615; weight=luminosity*xs/ngen;}
  else if (sample=="WpWpJJ_QCD") {xs=0.02615; weight=luminosity*xs/ngen;}

  else if (sample=="ZZTo2L2Q") {xs=3.22; weight=luminosity*xs/ngen;}
  else if (sample=="ZZTo2Q2Nu") {xs=4.03; weight=luminosity*xs/ngen;}
  else if (sample=="ZZTo4L") {xs=1.212; weight=luminosity*xs/ngen;}
  else if (sample=="ZZTo2L2Nu") {xs=0.564; weight=luminosity*xs/ngen;}
  
  else if (sample=="WWW") {xs=0.2086; weight=luminosity*xs/ngen;}
  else if (sample=="WWZ") {xs=0.1651; weight=luminosity*xs/ngen;}
  else if (sample=="WZZ") {xs=0.05565; weight=luminosity*xs/ngen;}
  else if (sample=="ZZZ") {xs=0.01398; weight=luminosity*xs/ngen;}

  else if (sample=="EWKWMinus" || sample=="EWKWMinus2Jets") {xs=23.24; weight=luminosity*xs/ngen;}
  else if (sample=="EWKWPlus" || sample=="EWKWPlus2Jets") {xs=29.59; weight=luminosity*xs/ngen;}
  else if (sample=="EWKZLL" || sample=="EWKZ2Jets_ZToLL" || sample=="EWKZLL_TT" || sample=="EWKZLL_J" || sample=="EWKZLL_L" || sample=="EWKZLL_LL") {xs=4.321; weight=luminosity*xs/ngen;}
  else if (sample=="EWKZNuNu" || sample=="EWKZ2Jets_ZToNuNu" || sample=="EWKZNuNu_TT" || sample=="EWKZNuNu_J" || sample=="EWKZNuNu_L" || sample=="EWKZNuNu_LL") {xs=10.66; weight=luminosity*xs/ngen;}
  
  ////////////// signal
  else if (sample=="MH3_200_MH4_100") {xs=3.628e-01; weight=luminosity*xs/ngen;}
  else if (sample=="MH3_200_MH4_150") {xs=3.209e-01; weight=luminosity*xs/ngen;}
  else if (sample=="MH3_300_MH4_100") {xs=2.892e+00; weight=luminosity*xs/ngen;}
  else if (sample=="MH3_300_MH4_150") {xs=1.596e+00; weight=luminosity*xs/ngen;}
  else if (sample=="MH3_400_MH4_100") {xs=1.352e+00; weight=luminosity*xs/ngen;}
  else if (sample=="MH3_400_MH4_150") {xs=9.943e-01; weight=luminosity*xs/ngen;}
  else if (sample=="MH3_400_MH4_200") {xs=5.997e-01; weight=luminosity*xs/ngen;}
  else if (sample=="MH3_400_MH4_250") {xs=2.301e-01; weight=luminosity*xs/ngen;}
  else if (sample=="MH3_500_MH4_150") {xs=5.070e-01; weight=luminosity*xs/ngen;}
  else if (sample=="MH3_500_MH4_200") {xs=3.709e-01; weight=luminosity*xs/ngen;}
  else if (sample=="MH3_500_MH4_250") {xs=2.375e-01; weight=luminosity*xs/ngen;}
  else if (sample=="MH3_500_MH4_300") {xs=1.295e-01; weight=luminosity*xs/ngen;}
  else if (sample=="MH3_600_MH4_100") {xs=3.778e-01; weight=luminosity*xs/ngen;}
  else if (sample=="MH3_600_MH4_150") {xs=2.981e-01; weight=luminosity*xs/ngen;}
  else if (sample=="MH3_600_MH4_200") {xs=2.313e-01; weight=luminosity*xs/ngen;}
  else if (sample=="MH3_600_MH4_250") {xs=1.657e-01; weight=luminosity*xs/ngen;}
  else if (sample=="MH3_600_MH4_300") {xs=1.160e-01; weight=luminosity*xs/ngen;}
  else if (sample=="MH3_600_MH4_350") {xs=7.739e-02; weight=luminosity*xs/ngen;}
  else if (sample=="MH3_600_MH4_400") {xs=4.035e-02; weight=luminosity*xs/ngen;}
  else if (sample=="MH3_600_MH4_500") {xs=5.494e-03; weight=luminosity*xs/ngen;}
  else if (sample=="MH3_700_MH4_250") {xs=1.084e-01; weight=luminosity*xs/ngen;}
  else if (sample=="MH3_700_MH4_300") {xs=8.360e-02; weight=luminosity*xs/ngen;}
  else if (sample=="MH3_700_MH4_350") {xs=6.513e-02; weight=luminosity*xs/ngen;}
  else if (sample=="MH3_700_MH4_400") {xs=4.227e-02; weight=luminosity*xs/ngen;}
  else if (sample=="MH3_800_MH4_250") {xs=7.091e-02; weight=luminosity*xs/ngen;}
  else if (sample=="MH3_800_MH4_300") {xs=5.730e-02; weight=luminosity*xs/ngen;}
  else if (sample=="MH3_800_MH4_350") {xs=4.830e-02; weight=luminosity*xs/ngen;}
  else if (sample=="MH3_800_MH4_500") {xs=1.604e-02; weight=luminosity*xs/ngen;}
  else if (sample=="MH3_900_MH4_300") {xs=3.757e-02; weight=luminosity*xs/ngen;}
  else if (sample=="MH3_900_MH4_350") {xs=3.359e-02; weight=luminosity*xs/ngen;}
  else if (sample=="MH3_900_MH4_400") {xs=2.559e-02; weight=luminosity*xs/ngen;}
  else if (sample=="MH3_900_MH4_500") {xs=1.432e-02; weight=luminosity*xs/ngen;}
  ////////////
  else {
    cout<<"Attention!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"<<endl;
    cout<<"***********                                  *****************"<<endl;
    cout<<"***********"<<sample.c_str()<<"  NOT found in sample list ************"<<endl;
    cout<<"***********                                  *****************"<<endl;
    cout<<"Attention!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"<<endl;
    return 0;
  }
  cout<<sample.c_str()<<"  "<<weight<<endl;
  cout.setf(ios::fixed, ios::floatfield);
  cout.precision(10);
  
  
  if(debugOn==true)cout<<"************************ works till here, after label *********************"<<endl;
  TString output_ = TString(output);
  TString output_up = TString(output);
  TString output_down = TString(output);
  //TFile* f_output, f_output_up, f_output_down;
  TFile* f_output = new TFile(output_ , "RECREATE");
  output_up.Insert(output_up.Length()-5, "_up");
  output_down.Insert(output_down.Length()-5, "_down");
  int substring_index = output_.Index("nominal");
  output_up.Replace(substring_index,7, "up");
  output_down.Replace(substring_index,7, "down");
  cout<<output_<<"  \t" <<output_up<<"\t"<<output_down<<endl;  
  TFile* f_output_up = new TFile(output_up , "RECREATE");
  TFile* f_output_down = new TFile(output_down , "RECREATE");
  
  TString histnames;
  // for(int i = 0; i < plotList.size(); i++){
  //   histnames.push_back(plotList[i]); //
  //   dirNames.push_back(plotList[i]);
  //   //TDirectory *dir_update = f_output->mkdir(plotList[i]);
  // }
  TList* list = file_input->GetListOfKeys() ;
  if (!list) { printf("<E> No keys found in file\n") ; exit(1) ; }
  TIter next(list) ;
  TKey* key ;
  TObject* obj ;
  
  while ( key = (TKey*)next() ) {
    obj = key->ReadObj() ;
    if (    (strcmp(obj->IsA()->GetName(),"TProfile")!=0)
	    && (!obj->InheritsFrom("TH2"))
	    && (!obj->InheritsFrom("TH1")) 
	    ) {
      printf("<W> Object %s is not 1D or 2D histogram : "
             "will not be converted\n",obj->GetName()) ;
    }
    //printf("Histo name:%s title:%s\n",obj->GetName(),obj->GetTitle());
    TString histoname = obj->GetName();
    if(sample=="data_obs"){ weight = 1.0;  }
    if (! histoname.Contains("tot_TMass_full"))
      continue;
    if (histoname.Contains("up"))
      make_hist( file_input, f_output_up, histoname, histSaveName, weight );
    else if (histoname.Contains("down"))
      make_hist( file_input, f_output_down, histoname, histSaveName, weight );
    else
      make_hist( file_input, f_output, histoname, histSaveName, weight );
    
    //dirNames.push_back(obj->GetName());
        
    // f_output->cd();
    // TDirectory *dir_update = f_output->mkdir(histoname);
    // f_output->cd(histoname);
    // //bool histExists = file_input->GetListOfKeys()->Contains( TString(histnames[i]) );
    // //if(histExists==true){ 
    // TH1F* histo_mutau = (TH1F*)((TH1F*)file_input->Get( histoname))->Clone(TString(histSaveName+"_"+histoname));
    // if(sample=="data_obs"){ weight = 1.0;  }
    // histo_mutau->Scale(weight);
    // histo_mutau->Write();
    //}
  }
  //cout<<"nhists = "<<histnames.size()<<endl;
  if(debugOn==true)cout<<"This works too P2" << endl;
  
  file_input->Close();
  f_output->Close();
  f_output_up->Close();
  f_output_down->Close();
  //make_hist(input, output, histSaveName, histnames[i] , sample, dirNames[i], weight, true );
  if(debugOn==true)cout<<"Finished writing to "<<output << endl;
}



