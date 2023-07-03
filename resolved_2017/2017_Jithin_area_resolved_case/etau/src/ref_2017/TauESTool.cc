#include "TauESTool.h"
#include <iostream> // std::cerr, std::endl
#include <iomanip>
#include <assert.h> // assert



TFile* ensureTFile(const TString filename, bool verbose=false){
  if(verbose)
    std::cout << "Opening " << filename << std::endl;
  TFile* file = new TFile(filename);
  if(!file or file->IsZombie()) {
    std::cerr << std::endl << "ERROR! Failed to open input file = '" << filename << "'!" << std::endl;
    assert(0);
  }
  return file;
}

TH1* extractTH1(const TFile* file, const std::string& histname){
  TH1* hist = dynamic_cast<TH1*>((const_cast<TFile*>(file))->Get(histname.data()));
  if(!hist){
    std::cerr << std::endl << "ERROR! Failed to load histogram = '" << histname << "' from input file!" << std::endl;
    assert(0);
  }
  return hist;
}

const TF1* extractTF1(const TFile* file, const std::string& funcname){
  const TF1* function = dynamic_cast<TF1*>((const_cast<TFile*>(file))->Get(funcname.data()));
  if(!function){
    std::cerr << std::endl << "ERROR! Failed to load function = '" << funcname << "' from input file!" << std::endl;
    assert(0);
  }
  return function;
}



void TauESTool::disabled() const {
  std::cerr << std::endl << "ERROR! Method has been disabled! isVsPT = "<<isVsPT<<", isVsDM = "
            << isVsDM<<", isVsEta = "<<isVsEta<< std::endl;
  assert(0);
}


TauESTool::TauESTool(const std::string& year, const std::string& id, const std::string& wp, const bool dm, const bool lowpt): ID(id), WP(wp){

  bool verbose = false;
  //std::string datapath                = Form("%s/src/TauPOG/TauIDSFs/data",getenv("CMSSW_BASE"));
  std::string datapath                = "sf_files/TauIDSFs/data";
  std::vector<std::string> years      = {"2016Legacy","2017ReReco","2018ReReco"};
  std::vector<std::string> antiJetIDs = {"MVAoldDM2017v2","DeepTau2017v2p1VSjet"};
  std::vector<std::string> antiEleIDs = {"antiEleMVA6",   "DeepTau2017v2p1VSe"};
  std::vector<std::string> antiMuIDs  = {"antiMu3",       "DeepTau2017v2p1VSmu"};

  if(std::find(years.begin(),years.end(),year)==years.end()){
    std::cerr << std::endl << "ERROR! '"<<year<<"' is not a valid year! Please choose from ";
     std::vector<std::string>::iterator it = years.begin();
    for(it=years.begin(); it!=years.end(); it++){
      if(it!=years.begin()) std::cerr << ", ";
      std::cerr << *it;
    }
    std::cerr << std::endl;
    assert(0);
  }

  TString filename;
  if (lowpt) {
    filename = Form("%s/TauES_dm_%s_%s.root",datapath.data(),ID.data(),year.data());
  }
  else {
    filename = Form("%s/TauES_dm_%s_%s_ptgt100.root",datapath.data(),ID.data(),year.data());
  }
  TFile* file = ensureTFile(filename,verbose);
  hist = extractTH1(file,WP);
  hist->SetDirectory(nullptr);
  file->Close();
  delete file;
  DMs    = {0,1,10, 11};

}



float TauESTool::getTES(double pt, int genmatch, const std::string& unc){
  
  if(genmatch != 5)
    return 1.0;
  
  if 
  float SF = static_cast<float>(func[unc]->Eval(pt));
    return SF;
  }
  return 1.0;
}

float TauESTool::getSFvsPT(double pt, const std::string& unc){
  return getSFvsPT(pt,5,unc);
}

