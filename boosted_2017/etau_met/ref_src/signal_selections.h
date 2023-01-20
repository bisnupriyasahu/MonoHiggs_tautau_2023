
void signal_analyzer::selections(float weight, int shift, string uncObject)
{
  check_unc=false; // set true for printing unc pt, values
  make_met_plot = false;
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

  if (uncObject == "electronES"){
    /// apply +sigma shift to electron pt, everything else default
    eleCand = getEleCand(25.0, 2.1, shift);  ///// ele selected
    tauCand = getTauCand(30.0, 2.3, 0 );
    metP4.SetPtEtaPhiE(pfMET , 0, pfMETPhi, pfMET);    
  }
  else if (uncObject == "tauES"){
    /// apply +sigma shift to tau pt, everything else default
    eleCand = getEleCand(25.0, 2.1, 0 );
    tauCand = getTauCand(30.0, 2.3, shift );
    metP4.SetPtEtaPhiE(pfMET ,0,pfMETPhi,pfMET);
  }
  else if (uncObject == "JES"){
    /// apply +sigma shift to Jet, pfMET_T1JESUp , everything else default
    eleCand = getEleCand(25.0, 2.1, 0);  ///// ele selected
    tauCand = getTauCand(30.0, 2.3, 0);
    /* cout<<"Before setting ... event ="<<eventNumber */
    /* 	<<"   unc ="<<unc_shift<<" "<<uncObject<<" " */
    /* 	<<"met ="<<metP4.Pt()<<"\n"<<endl; */

    if(unc_shift=="up")
      {
      for (int i = 0; i < nJet; i++)
  	jetPt->at(i) = orginal_jetPt[i]*(1 + 1*jetJECUnc->at(i));
      //metP4.SetPtEtaPhiE(pfMET_T1JESUp, 0, pfMETPhi_T1JESUp, pfMET_T1JESUp);
      metP4.SetPtEtaPhiE(pfMET , 0, pfMETPhi, pfMET);
      }
    else if(unc_shift=="down")
      {
  	for (int i = 0; i < nJet; i++)
  	  jetPt->at(i) = orginal_jetPt[i]*(1 - 1*jetJECUnc->at(i));
  	//metP4.SetPtEtaPhiE(pfMET_T1JESDo, 0, pfMETPhi_T1JESDo, pfMET_T1JESDo);
	metP4.SetPtEtaPhiE(pfMET , 0, pfMETPhi, pfMET);
      }
    /* cout<<"After setting JES "<<"event ="<<eventNumber */
    /* 	<<"   unc ="<<unc_shift<<" "<<" JES"<<"  " */
    /* 	<<"met ="<<metP4.Pt()<<"\n"<<endl; */
  }
  else if (uncObject == "JER"){
    /// apply +sigma shift to Jet, pfMET_T1JERUp, everything else default
    eleCand = getEleCand(25.0, 2.1, 0);  ///// ele selected
    tauCand = getTauCand(30.0, 2.3, 0 );
    if(unc_shift=="up")
      {
  	for (int i = 0; i < nJet; i++)
  	  jetPt->at(i) = orginal_jetPt[i]  * jetP4SmearUp->at(i);
  	//metP4.SetPtEtaPhiE(pfMET_T1JERUp, 0, pfMETPhi, pfMET_T1JERUp);
	metP4.SetPtEtaPhiE(pfMET , 0, pfMETPhi, pfMET);
      }
    else if(unc_shift=="down")
      {
  	for (int i = 0; i < nJet; i++)
  	  jetPt->at(i) = orginal_jetPt[i] * jetP4SmearDo->at(i);
  	//metP4.SetPtEtaPhiE(pfMET_T1JERDo, 0, pfMETPhi, pfMET_T1JERDo);
	metP4.SetPtEtaPhiE(pfMET , 0, pfMETPhi, pfMET);
      }
  }
  else if (uncObject == "metresponse"){
    /// apply +sigma shift to met, everything else default
    eleCand = getEleCand(25.0, 2.1, 0);  ///// ele selected
    tauCand = getTauCand(30.0, 2.3, 0 );
    metP4.SetPtEtaPhiE(pfMET ,0,pfMETPhi,pfMET);
    /* if(eleCand.size()>0 && tauCand.size()>0) */
    /*   { */
    /* 	jetCand=getJetCand(eleCand[0], tauCand[0]); */
    /* 	my_njets=jetCand.size(); */
    /* 	metP4 = metSysUnc("response"); */
    /*   } */
  }
  else if (uncObject == "metresolution"){
    /// apply +sigma shift to met, everything else default
    eleCand = getEleCand(25.0, 2.1, 0);  ///// ele selected
    tauCand = getTauCand(30.0, 2.3, 0 );
    metP4.SetPtEtaPhiE(pfMET ,0,pfMETPhi,pfMET);
    /* if(eleCand.size()>0 && tauCand.size()>0) */
    /*   { */
    /* 	jetCand=getJetCand(eleCand[0], tauCand[0]); */
    /* 	my_njets=jetCand.size(); */
    /* 	metP4 = metSysUnc("resolution"); */
    /*   } */
  }
  else if (uncObject == "metunclustered"){
    /// apply +sigma shift to met, everything else default
    eleCand = getEleCand(25.0, 2.1, 0);  ///// ele selected
    tauCand = getTauCand(30.0, 2.3, 0 );
    metP4.SetPtEtaPhiE(pfMET ,0,pfMETPhi,pfMET);
    //setMyEleTau(eleCand[0], tauCand[0], metP4, shift);    
  }
  else{
    //Setting nominal values
    eleCand = getEleCand(25.0, 2.1, 0);  ///// ele selected
    tauCand = getTauCand(30.0, 2.3, 0 );
    metP4.SetPtEtaPhiE(pfMET ,0,pfMETPhi,pfMET);
    
  }
  
  n_iter ++;
  plot_signal("0" , 1.0);
  
  event_ele = eleCand;
  event_tau = tauCand;
  event_met_p4 = metP4;

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
  //metP4 = event_met_p4;
  metP4.SetPtEtaPhiE(pfMET ,0,pfMETPhi,pfMET);
  //eleCand = getEleCand(25.0,2.1, shift);  ///// ele selected 
  //cout<<"Line number "<<__LINE__<<endl;
  if( eleCand.size() >0 ) 
    { 
      nGoodMuonPassed+=event_weight;
      if(debug)cout<<"this worked Line 526"<<endl;
      /* if(selected_systematic == "nominal") */
      /* 	make_met_plots("a3"); */
      
      //makeTestPlot("c", 0,0,0,event_weight);
      //tauCand = getTauCand(30.0,2.3, shift);
      if( tauCand.size() >0 )
	{
	  nGoodTauPassed+=event_weight;
	  /* if(selected_systematic == "nominal") */
	  /*   make_met_plots("a4"); */

	  make_met_plot = true;
	  setMyEleTau(eleCand[0], tauCand[0], metP4, shift);
	  make_met_plot = false;

	  make_met_corr_plot();
	  // make_met_shapes_plots("1", event_weight);
	  ////////////
	  /* stage = "1"; */
	  /* if (unc_shift == "nominal" ) save_nom(); */
	  /* if(shift ==0 ) fillHist("1", EleIndex, TauIndex, false, event_weight); */
	  /* else           fillUncPlots("1", EleIndex, TauIndex, false, event_weight, shift); */
	  ////////////
	  if ( TriggerSelection(my_eleP4, my_tauP4) )
	    {
	      if(Ztt_selector) 
		{
		  // make_met_shapes_plots("2", event_weight);
		  if (  eleCharge->at(EleIndex) * tau_Charge->at(TauIndex) < 0 
			&& (if_DY_Genmatching(EleIndex, TauIndex)==1 ||  if_DY_Genmatching(EleIndex, TauIndex)==3) ) 
		    {
		      nGoodMuTauPassed+=event_weight;
			       
		      if(debug)cout<<"this worked Line 538"<<endl;

		      //makeTestPlot("e", 0,0,0,event_weight);
		      /////////////
		      /* stage = "2"; */
		      /* if (unc_shift == "nominal" ) save_nom(); */
		      /* if(shift ==0 ) fillHist("2", EleIndex, TauIndex, false, event_weight); */
		      /* else           fillUncPlots("2", EleIndex, TauIndex, false, event_weight, shift); */
		      /////////////
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

			  // make_met_shapes_plots("3", event_weight);
			  ////////////////
			  /* stage = "3"; */
			  /* if (unc_shift == "nominal" ) save_nom(); */
			  /* if(shift ==0 ) fillHist("3", EleIndex, TauIndex, false, event_weight); */
			  /* else           fillUncPlots("3", EleIndex, TauIndex, false, event_weight, shift); */
			  //////////
			  if( thirdLeptonVeto(EleIndex , TauIndex)  )
			    {
			      nPassedThirdLepVeto+=event_weight;
			      //makeTestPlot("g", 0,0,0,event_weight);
			      if( pass_bjet_veto )
				{
				  nPassedBjetVeto+=event_weight;
				  //makeTestPlot("h", 0,0,0,event_weight);
				  //if(tau_DecayMode->at(TauIndex)==5 || tau_DecayMode->at(TauIndex)==6) continue;

				  // make_met_shapes_plots("4", event_weight);
				  ///////////////////
				  /* stage = "4"; */
				  /* if (unc_shift == "nominal" ) save_nom(); */
				  /* if(shift ==0 ) fillHist("4", EleIndex, TauIndex, false, event_weight); */
				  /* else           fillUncPlots("4", EleIndex, TauIndex, false, event_weight, shift); */
				  /////////////////
				  plot_signal("4" , event_weight);
				  
				  double deltaR = my_eleP4.DeltaR(my_tauP4);
				  double mT_eleMet = TMass_F( my_eleP4.Pt(), my_eleP4.Phi(),
							      my_metP4.Pt(), my_metP4.Phi() );
				  double mvis=(my_eleP4+my_tauP4).M();
				  double higgsPt = pTvecsum_F(my_eleP4, my_tauP4, my_metP4);
				  if(higgsPt > 65 && mvis < 125 && my_metP4.Pt() > 105 && deltaR<2.0)
				    plot_signal("5",event_weight);
				  
				  if(deltaR > 0.5 && higgsPt > 65 && mvis < 125 && my_metP4.Pt() > 105 && deltaR<2.0)
				    plot_signal("6", event_weight);
				      
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
