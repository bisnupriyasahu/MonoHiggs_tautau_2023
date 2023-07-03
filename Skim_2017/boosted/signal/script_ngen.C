{
  //import Root;


  //ROOT.gROOT.SetBatch(True);
  //ROOT.gStyle.SetOptStat(0);



  //  gStyle->SetOptStat(0);

  //TFile *f1 = new TFile("/hdfs/store/user/bsahu/with_boostedtau/2017_skimmed/with_boostedtaus/signal_v2/hadd_final/Signal_ZpBaryonic_2017_7.root");
  TFile *f1 = new TFile("/hdfs/store/user/bsahu/with_boostedtau/2017_skimmed/with_boostedtaus/signal_v2/hadd_final/Signal_ZpBaryonic_2017_23.root");
  TFile *f2 = new TFile("/hdfs/store/user/bsahu/with_boostedtau/2017_skimmed/with_boostedtaus/signal_v2/hadd_final/Signal_ZpBaryonic_2017_39.root");
  TFile *f3 = new TFile("/hdfs/store/user/bsahu/with_boostedtau/2017_skimmed/with_boostedtaus/signal_v2/hadd_final/Signal_ZpBaryonic_2017_2.root");
  TFile *f4 = new TFile("/hdfs/store/user/bsahu/with_boostedtau/2017_skimmed/with_boostedtaus/signal_v2/hadd_final/Signal_ZpBaryonic_2017_10.root");
  //  TFile *f1 = new TFile("/hdfs/store/user/bsahu/with_boostedtau/2017_skimmed/with_boostedtaus/signal_v2/hadd_final/Signal_ZpBaryonic_2017_.root");

  TTree *tree = (TTree*)f1->Get("eventTree");
  TTree *tree1 = (TTree*)f2->Get("eventTree");
  TTree *tree2 = (TTree*)f3->Get("eventTree");
  TTree *tree3 = (TTree*)f4->Get("eventTree");

  TH1F *hpt_1 =new TH1F("hpt_1","",50,0,50);
  TH1F *hpt_2 =new TH1F("hpt_2","",50,0,50);
  TH1F *hpt_3 =new TH1F("hpt_3","",50,0,50);
  TH1F *hpt_4 =new TH1F("hpt_4","",50,0,50);


  tree->Draw("signalParameters>>hpt_1");
  tree1->Draw("signalParameters>>hpt_2");
  tree2->Draw("signalParameters>>hpt_3");
  tree3->Draw("signalParameters>>hpt_4");
  double bin = hpt_1->GetBinContent(24);
  double bin1 = hpt_2->GetBinContent(40);
  double bin2 = hpt_3->GetBinContent(3);
  double bin3 = hpt_4->GetBinContent(11);
  std::cout<<"bin content 23 : "<<bin<<std::endl;
  std::cout<<"bin content  39 : "<<bin1<<std::endl;
  std::cout<<"bin content 2 : "<<bin2<<std::endl;
  std::cout<<"bin content 10 : "<<bin3<<std::endl;
}
