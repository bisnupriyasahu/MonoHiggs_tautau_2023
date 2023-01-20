
void signal_analyzer::selections(float weight, int shift, string uncObject)
{
  check_unc=false; // set true for printing unc pt, values

  double event_weight = weight;
  TLorentzVector metP4, event_met_p4;
  if (shift > 0 ) unc_shift = "up";
  else if (shift < 0 ) unc_shift = "down";
  else  unc_shift = "nominal";
  shift_index = shift;
  selected_systematic = uncObject;
  //cout<<" selected_systematic = "<< selected_systematic << " shift = "<< shift<<endl; 
  std::vector<int> event_ele, event_tau;
  event_ele.clear(); event_tau.clear();
  eleCand.clear();
  tauCand.clear();
  aisrtauCand.clear();
  jetCand.clear();


  for (int i = 0; i < nJet; i++)
    jetPt->at(i) = orginal_jetPt[i];
  double elePtCut,eleEtaCut,tauPtCut, tauEtaCut;
  elePtCut=25.0; eleEtaCut=2.1; tauPtCut=30.0; tauEtaCut=2.3;

  if (uncObject == "electronES"){
    /// apply +sigma shift to electron pt, everything else default
    eleCand = getEleCand(elePtCut, eleEtaCut, shift);  ///// ele selected
    tauCand = getTauCand(tauPtCut, tauEtaCut, 0 );
    metP4.SetPtEtaPhiE(pfMET , 0, pfMETPhi, pfMET);    
  }
  else if (uncObject == "tauES"){
    /// apply +sigma shift to tau pt, everything else default
    eleCand = getEleCand(elePtCut, eleEtaCut, 0 );
    tauCand = getTauCand(tauPtCut, tauEtaCut, shift );
    metP4.SetPtEtaPhiE(pfMET ,0,pfMETPhi,pfMET);
  }
  else if (uncObject == "JES"){
    /// apply +sigma shift to Jet, pfMET_T1JESUp , everything else default
    eleCand = getEleCand(elePtCut, eleEtaCut, 0);  ///// ele selected
    tauCand = getTauCand(tauPtCut, tauEtaCut, 0);    
    //float met_sigma = (abs(pfMET_T1JESUp - pfMET) + abs(pfMET_T1JESDo-pfMET))/2 ;
    if(unc_shift=="up")
      {
	for (int i = 0; i < nJet; i++)
	  jetPt->at(i) = orginal_jetPt[i]*(1 + 1*jetJECUnc->at(i));
	//metP4.SetPtEtaPhiE(pfMET_T1JESUp, 0, pfMETPhi_T1JESUp, pfMET_T1JESUp);
	metP4.SetPtEtaPhiE(pfMET ,0,pfMETPhi,pfMET);
      }
    else if(unc_shift=="down")
      {
  	for (int i = 0; i < nJet; i++)
  	  jetPt->at(i) = orginal_jetPt[i]*(1 - 1*jetJECUnc->at(i));
  	//metP4.SetPtEtaPhiE(pfMET_T1JESDo, 0, pfMETPhi_T1JESDo, pfMET_T1JESDo);
	//metP4.SetPtEtaPhiE(pfMET_T1JESDo, 0, pfMETPhi_T1JESDo, pfMET_T1JESDo);
	metP4.SetPtEtaPhiE(pfMET ,0,pfMETPhi,pfMET);
      }
  }
  else if (uncObject == "JER"){
    /// apply +sigma shift to Jet, pfMET_T1JERUp, everything else default
    eleCand = getEleCand(elePtCut, eleEtaCut, 0);  ///// ele selected
    tauCand = getTauCand(tauPtCut, tauEtaCut, 0 );
    //float met_sigma = (abs(pfMET_T1JERUp - pfMET) + abs(pfMET_T1JERDo-pfMET))/2 ;
    if(unc_shift=="up")
      {
  	for (int i = 0; i < nJet; i++)
  	  jetPt->at(i) = orginal_jetPt[i] * (1 + abs(1 - jetP4SmearUp->at(i)));
       	//metP4.SetPtEtaPhiE(pfMET_T1JERUp, 0, pfMETPhi, pfMET_T1JERUp);
	metP4.SetPtEtaPhiE(pfMET ,0,pfMETPhi,pfMET);
      }
    else if(unc_shift=="down")
      {
  	for (int i = 0; i < nJet; i++)
  	  jetPt->at(i) = orginal_jetPt[i] * (1 - abs(1 - jetP4SmearDo->at(i)));
	//metP4.SetPtEtaPhiE(pfMET_T1JERDo, 0, pfMETPhi, pfMET_T1JERDo);
	metP4.SetPtEtaPhiE(pfMET ,0,pfMETPhi,pfMET);
      }
  }
  else if (uncObject == "metresponse"){
    /// apply +sigma shift to met, everything else default
    eleCand = getEleCand(elePtCut, eleEtaCut, 0);  ///// ele selected
    tauCand = getTauCand(tauPtCut, tauEtaCut, 0 );
    metP4.SetPtEtaPhiE(pfMET ,0,pfMETPhi,pfMET);
    /* if(eleCand.size()>0 && tauCand.size()>0) */
    /*   { */
    /* 	jetCand=getJetCand(eleCand[0], tauCand[0]); */
    /* 	my_njets=jetCand.size(); */
    /* 	metP4 = metSysUnc("response", metP4); */
    /*   } */
  }
  else if (uncObject == "metresolution"){
    /// apply +sigma shift to met, everything else default
    eleCand = getEleCand(elePtCut, eleEtaCut, 0);  ///// ele selected
    tauCand = getTauCand(tauPtCut, tauEtaCut, 0 );
    metP4.SetPtEtaPhiE(pfMET ,0,pfMETPhi,pfMET);
    /* if(eleCand.size()>0 && tauCand.size()>0) */
    /*   { */
    /* 	jetCand=getJetCand(eleCand[0], tauCand[0]); */
    /* 	my_njets=jetCand.size(); */
    /* 	metP4 = metSysUnc("resolution", metP4); */
    /*   } */
  }
  else if (uncObject == "metunclustered"){
    /// apply +sigma shift to met, everything else default
    eleCand = getEleCand(elePtCut, eleEtaCut, 0);  ///// ele selected
    tauCand = getTauCand(tauPtCut, tauEtaCut, 0 );
    metP4.SetPtEtaPhiE(pfMET ,0,pfMETPhi,pfMET);
    /* if (eleCand.size()>0 && tauCand.size()>0){ */
    /*   jetCand=getJetCand(eleCand[0], tauCand[0]); */
    /*   my_njets=jetCand.size(); */
    /*   metP4 = metClusteredUnc(); */
    /* } */
    //setMyEleTau(eleCand[0], tauCand[0], metP4, shift);    
  }
  else{
    //Setting nominal values
    eleCand = getEleCand(elePtCut, eleEtaCut, 0);  ///// ele selected
    tauCand = getTauCand(tauPtCut, tauEtaCut, 0 );
    metP4.SetPtEtaPhiE(pfMET ,0,pfMETPhi,pfMET);
    
  }
  
  event_ele = eleCand;
  event_tau = tauCand;
  event_met_p4 = metP4;
  
  plot_signal("0");
  //cout<<"Line number "<<__LINE__<<endl;
  if(debug)cout<<"signal region -  isolated begin L523"<<endl;       
  
  //Ztt_selector=false;
  ////// signal region -  isolated begin
  if(is_MC)
    event_weight=weight;
  else
    event_weight=1.0;
  //eleCand.clear();  tauCand.clear();
  eleCand = event_ele;
  tauCand = event_tau;
  metP4 = event_met_p4;
  //eleCand = getEleCand(25.0,2.1, shift);  ///// ele selected 
  //cout<<"Line number "<<__LINE__<<endl;

  if( eleCand.size() >0 ) 
    { 
      nGoodMuonPassed+=event_weight;
      if(debug)cout<<"this worked Line 526"<<endl;
      
      //makeTestPlot("c", 0,0,0,event_weight);
      //tauCand = getTauCand(30.0,2.3, shift);
      if( tauCand.size() >0 )
	{
	  nGoodTauPassed+=event_weight;
	  
	  setMyEleTau(eleCand[0], tauCand[0], metP4, shift);
	  make_met_plot("", "1", event_weight);

	  make_met_corr_plot();
	  if ( TriggerSelection(my_eleP4, my_tauP4) )
	    {
	      if(Ztt_selector) 
		{
			   		   
		  if (  eleCharge->at(EleIndex) * tau_Charge->at(TauIndex) < 0 
			&& (if_DY_Genmatching(EleIndex, TauIndex)==1 ||  if_DY_Genmatching(EleIndex, TauIndex)==3) ) 
		    {
		      nGoodMuTauPassed+=event_weight;
			       
		      if(debug)cout<<"this worked Line 538"<<endl;
		      make_met_plot("", "2", event_weight);
		      
		      //makeTestPlot("e", 0,0,0,event_weight);
		      if ( MatchTriggerFilter(EleIndex, TauIndex) )
			{
			  if(debug)cout<<"this worked Line 534"<<endl;
			  applySf=1.0;
			  if(is_MC)
			    applySf=  getScaleFactors( my_eleP4.Pt(),
						       my_tauP4.Pt(),
						       eleSCEta->at(EleIndex),
						       //my_eleP4.Eta(),
						       my_tauP4.Eta(),
						       tau_DecayMode->at(TauIndex),
						       my_genmatching_l2,
						       false  /// this is set to true for fake bakground
						       );
				  
			  if(debug)cout<<__LINE__<<" sf : "<< applySf <<endl;
			  event_weight = event_weight * applySf;
			  //makeTestPlot("f", 0,0,0,event_weight);
			  make_met_plot("", "3", event_weight);
			  
			  if( thirdLeptonVeto(EleIndex , TauIndex)  )
			    {
			      nPassedThirdLepVeto+=event_weight;
			      //makeTestPlot("g", 0,0,0,event_weight);
			      if( pass_bjet_veto )
				{
				  nPassedBjetVeto+=event_weight;
				  //makeTestPlot("h", 0,0,0,event_weight);
				  //if(tau_DecayMode->at(TauIndex)==5 || tau_DecayMode->at(TauIndex)==6) continue;
				  make_met_plot("", "4", event_weight);
				      
				  double deltaR = my_eleP4.DeltaR(my_tauP4);
				  if(deltaR > 0.5 )
				    {
				      nDeltaRPassed+=event_weight;
				      if(is_MC==false)event_weight=1.0;
				      if(debug)cout<<"this worked Line 558"<<endl;
				      printP4values(" "+selected_systematic+"  "+unc_shift);
				      stage = "5";
				      if (unc_shift == "nominal" ) save_nom();
				      if(shift ==0 ) fillHist("5", EleIndex, TauIndex, false, event_weight);
				      else           fillUncPlots("5", EleIndex, TauIndex, false, event_weight, shift);
				      double mT_eleMet = TMass_F( my_eleP4.Pt(), my_eleP4.Phi(),
								  my_metP4.Pt(), my_metP4.Phi() );
				      
				      make_met_plot("", "5", event_weight);
				      if (unc_shift == "nominal" ) make_z_plots("5", event_weight);
				      if( mT_eleMet < 50 )
					{
					  if(shift ==0 ) fillHist("6", EleIndex, TauIndex, false, event_weight);
					  //makeTestPlot("j", 0,0,0,event_weight);
					}
				      //higgs pt > 65,  visible mass < 125, met > 105
				      double mvis=(my_eleP4+my_tauP4).M();
				      double higgsPt = pTvecsum_F(my_eleP4, my_tauP4, my_metP4);
				      if(higgsPt > 65)
					{
					  if(shift ==0 ) fillHist("7", EleIndex, TauIndex, false, event_weight);
					  if(mvis < 125)
					    {
					      if(shift ==0 ) fillHist("8", EleIndex, TauIndex, false, event_weight);
					      if(my_metP4.Pt() > 105)
						{
						  ////printtabSeparated("check pts before ", my_eleP4.Pt(), my_tauP4.Pt(), my_metP4.Pt());
						  make_met_plot("", "9", event_weight);
						  
						  
						  stage = "9";
						  if (unc_shift == "nominal" ) save_nom();
						  if(shift ==0 ) fillHist("9", EleIndex, TauIndex, false, event_weight);
						  else           fillUncPlots("9", EleIndex, TauIndex, false, event_weight, shift);

						  ////////// selects events if not vetoed
						  if(hem_veto()==false)
						    {
						      stage = "9b";
						      if (unc_shift == "nominal" ) save_nom();
						      if(shift ==0 ) fillHist("9b", EleIndex, TauIndex, false, event_weight);
						      else           fillUncPlots("9b", EleIndex, TauIndex, false, event_weight, shift);
						      
						      if (unc_shift == "nominal" ) make_z_plots("9b", event_weight);
						      
						    }
						}
					    }

					}
				    }
				}
			    }
			}
		    }
		}
	    }
	}
    }
  //cout<<"Line number "<<__LINE__<<endl;
  //////// signal region end
  if(debug)cout<<"fake background region - antiisolated begin 625"<<endl;
  ///// fake background region - antiisolated begin
  if(is_MC)
    event_weight=weight;
  else
    event_weight=1.0;
  
}
