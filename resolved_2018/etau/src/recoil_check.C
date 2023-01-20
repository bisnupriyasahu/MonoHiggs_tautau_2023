
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
#include <TStyle.h>
#include <TSystemFile.h>
#include <TLorentzVector.h>
// Header file for the classes stored in the TTree if any.
#include "vector"
//#include "makeHisto.h"
#include "RecoilCorrector.cc"

using namespace std;

int main() {    
  int number;
  RecoilCorrector recoilPFMetCorrector;
  TCanvas*c1 = new TCanvas();
  c1->SetCanvasSize(2000, 1500);
  gStyle->SetOptStat(0);
  gPad->SetGrid();


  for(int i=0; i<11; i++)
    cout<<"i = "<<i<<endl;

  // 2D hist of njets vs Zpt 
  TH2D * hperp = new TH2D("perp", "perp", 3, 0, 3, 6, 0,  60);
  

  for(int ijet=0; ijet<=3; ijet++){
    for(int ipt=0; ipt<=60; ipt++){
      
      for(imet=0; imet<=500; imet++){
	TLorentzVector event_met;
	recoilPFMetCorrector.CorrectByMeanResolution(pfmet*cos(pfmetPhi), // uncorrected type I pf met px (float)
						     pfmet*sin(pfmetPhi), // uncorrected type I pf met py (float)
						     BosonP4.Px(), // generator Z/W/Higgs px (float)
						     BosonP4.Py(), // generator Z/W/Higgs py (float)
						     visGenP4.Px(), // generator visible Z/W/Higgs px (float)
						     visGenP4.Py(), // generator visible Z/W/Higgs py (float)
						     my_njets,  // number of jets (hadronic jet multiplicity) (int)
						     pfmetcorr_ex, // corrected type I pf met px (float)
						     pfmetcorr_ey  // corrected type I pf met py (float)
						     );
	mymet.SetPxPyPzE(pfmetcorr_ex,pfmetcorr_ey,0,sqrt(pfmetcorr_ex*pfmetcorr_ex + pfmetcorr_ey*pfmetcorr_ey));
	
	hperp->Fill(ijet, ipt, event_met);
      }
    }
  }
  hperp->SetTitle("Met correction");
  hperp->GetXaxis()->SetTitle("njets");
  hperp->GetXaxis()->SetTitleSize(0.05);
  hperp->GetXaxis()->SetLabelSize(0.04);
  hperp->GetXaxis()->SetTitleOffset(1.0);
  hperp->GetYaxis()->SetTitle("Z pt bins");
  hperp->GetYaxis()->SetTitleOffset(1.0);
  hperp->GetYaxis()->SetTitleSize(0.05);
  hperp->GetYaxis()->SetLabelSize(0.04);
  hperp->GetXaxis()->SetNdivisions(3);
  hperp->GetYaxis()->SetNdivisions(6);


  hperp->Draw("text colz");
  c1->SaveAs("recoil.png");

  return 0;
}






