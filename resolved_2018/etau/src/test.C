#include <iostream>
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
#include"RooWorkspace.h"
#include "RooRealVar.h"
#include "RooFunctor.h"

using namespace std;

int main() {    
  int number;

  for(int i=0; i<11; i++)
    cout<<"i = "<<i<<endl;

  double weight  = 1.0;
  double zpt = 90;
  double zmass = 91;
  
  TFile *fw = TFile::Open("sf_files/htt_scalefactors_legacy_2018.root");
  RooWorkspace *w = (RooWorkspace*)fw->Get("w");

  // TCanvas* c1 = new TCanvas;
  // RooPlot* plot = w->function("zptmass_weight_nom")->frame();
  // plot->Draw();

  // for(int i=1; i<120; i++){
  //   for(int j=1; j<120; j++){
  //     w->var("z_gen_pt")->setVal(i);
  //     w->var("z_gen_mass")->setVal(j);
  //     weight=w->function("zptmass_weight_nom")->getVal();
  //     cout<<"weight = "<<weight<<endl;
  //   }
  // }
  return 0;
}
