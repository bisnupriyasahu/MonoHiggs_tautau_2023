void tautau_analyzer::selections(float weight, int shift, string uncObject)
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
  int event_tau1, event_tau2;
  int index_tau1, index_tau2;
  index_tau1 = index_tau1 = -1;
  tau1Cand.clear(); tau2Cand.clear();
  jetCand.clear();
  for (int i = 0; i < nJet; i++)
    jetPt->at(i) = orginal_jetPt[i];


  //if(!is_MC) cout<<"filling DATA "<<__LINE__<<endl;


  if (uncObject == "tau1ES"){
    /// apply +sigma shift to tau pt, everything else default
    index_tau1 = getTau1Cand(55.0, 2.1, shift );
    index_tau2 = getTau2Cand(40.0, 2.1, index_tau1 , 0 );
    metP4.SetPtEtaPhiE(pfMET ,0,pfMETPhi,pfMET);    
  }
  else if (uncObject == "tau2ES"){
    /// apply +sigma shift to tau pt, everything else default
    index_tau1 = getTau1Cand(55.0, 2.1, 0 );
    index_tau2 = getTau2Cand(40.0, 2.1, index_tau1 , shift );
    metP4.SetPtEtaPhiE(pfMET ,0,pfMETPhi,pfMET);    
  }
  else if (uncObject == "JES"){
    /// apply +sigma shift to Jet, pfMET_T1JESUp , everything else default
    index_tau1 = getTau1Cand(55.0, 2.1, 0 );
    index_tau2 = getTau2Cand(40.0, 2.1, index_tau1 ,0 );
    //metP4.SetPtEtaPhiE(pfMET ,0,pfMETPhi,pfMET);
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
	metP4.SetPtEtaPhiE(pfMET ,0,pfMETPhi,pfMET);
      }
  }
  else if (uncObject == "JER"){
    /// apply +sigma shift to Jet, pfMET_T1JERUp, everything else default
    index_tau1 = getTau1Cand(55.0, 2.1, 0 );
    index_tau2 = getTau2Cand(40.0, 2.1, index_tau1 , 0 );

    if(unc_shift=="up")
      {
  	for (int i = 0; i < nJet; i++)
  	  jetPt->at(i) = jetRawPt->at(i) * jetP4SmearUp->at(i);
  	//metP4.SetPtEtaPhiE(pfMET_T1JERUp, 0, pfMETPhi, pfMET_T1JERUp);
	metP4.SetPtEtaPhiE(pfMET ,0,pfMETPhi,pfMET);
      }
    else if(unc_shift=="down")
      {
  	for (int i = 0; i < nJet; i++)
  	  jetPt->at(i) = jetRawPt->at(i) * jetP4SmearDo->at(i);
  	//metP4.SetPtEtaPhiE(pfMET_T1JERDo, 0, pfMETPhi, pfMET_T1JERDo);
	metP4.SetPtEtaPhiE(pfMET ,0,pfMETPhi,pfMET);
      }
  }
  else if (uncObject == "metresolution"){
    index_tau1 = getTau1Cand(55.0, 2.1, 0 );
    index_tau2 = getTau2Cand(40.0, 2.1, index_tau1 ,0 );
    metP4.SetPtEtaPhiE(pfMET ,0,pfMETPhi,pfMET);
  }
  else if (uncObject == "metresponse"){
    /// apply +sigma shift to met, everything else default
    index_tau1 = getTau1Cand(55.0, 2.1, 0 );
    index_tau2 = getTau2Cand(40.0, 2.1, index_tau1 ,0 );
    metP4.SetPtEtaPhiE(pfMET ,0,pfMETPhi,pfMET);
  }
  else if (uncObject == "metunclustered"){
    /// apply +sigma shift to met, everything else default
    index_tau1 = getTau1Cand(55.0, 2.1, 0 );
    index_tau2 = getTau2Cand(40.0, 2.1, index_tau1 ,0 );
    metP4.SetPtEtaPhiE(pfMET ,0,pfMETPhi,pfMET);
    /* if (index_tau1 > 0 && index_tau2 > 0 ){ */
    /*   jetCand=getJetCand(index_tau1, index_tau2); */
    /*   my_njets=jetCand.size(); */
    //metP4 = metClusteredUnc();
    //}
  }
  else{
    //Setting nominal values
    index_tau1 = getTau1Cand(55.0, 2.1, 0 );
    index_tau2 = getTau2Cand(40.0, 2.1, index_tau1 ,0 );
    metP4.SetPtEtaPhiE(pfMET ,0,pfMETPhi,pfMET);
  }

  event_tau1 = index_tau1;
  event_tau2 = index_tau2;
  event_met_p4 = metP4;
  //if(!is_MC) cout<<"filling DATA "<<__LINE__<<endl;  
  if( index_tau1 > -1 && index_tau2 > -1 )
    {
      // cout<<"coming in selection 1 "<<endl;      
      if (shift ==0 ) nGoodTauPassed+=event_weight;
      setMyEleTau(index_tau1, index_tau2, metP4, shift);
      //if(!is_MC) cout<<"filling DATA "<<__LINE__<<endl;
      /* cout<<"this worked Line "<<__LINE__<<endl; */
      /* cout<<"tau indices : "<<Tau1Index<<" "<<Tau2Index<<endl; */
      /* cout<<"tau pt      : "<<my_tau1P4.Pt()<<" "<<my_tau2P4.Pt()<<endl; */
      if ( TriggerSelection(my_tau1P4, my_tau2P4) )
      {
	//cout<<"coming in selection  2 "<<endl;
	if (shift ==0 ) nGoodTau1Passed+=event_weight;
	//if(Ztt_selector) 
	{

	  if ( (tau_Charge->at(Tau1Index) * tau_Charge->at(Tau2Index) ) < 0   )
	    {

	      if(shift==0)nGoodMuonPassed+=event_weight;		   		   
	      
	      if(debug)cout<<"this worked Line 538"<<endl;
	      if ( MatchTriggerFilter(Tau1Index, Tau2Index) )
		{
		  //cout<<"coming in selection 3 "<<endl;
		  if (shift ==0 ) fillHist("2",   Tau1Index, Tau2Index, my_tau1P4, my_tau2P4, false, event_weight);
		  //if (shift ==0 ) fillHist("2",  Tau1Index, Tau2Index, false, event_weight);
		  //cout<<"this worked Line "<<__LINE__<<endl;
		  applySf=1.0;
		  //cout<<"coming in selection 4 "<<endl;
		  if(is_MC)
		    applySf=  getScaleFactors( my_tau1P4.Pt(),
					       my_tau2P4.Pt(),
					       my_tau1P4.Eta(),
					       my_tau2P4.Eta(),
					       tau_DecayMode->at(Tau1Index),
					       tau_DecayMode->at(Tau2Index),
					       my_genmatching_l1,
					       my_genmatching_l2,
					       false  /// this is set to true for fake bakground
					       );
		  // if(debug)cout<<" sf : "<<getScaleFactors( EleIndex[0] , TauIndex[0] , false , is_MC , debug ) <<endl;
		  event_weight = event_weight * applySf;
		  if(shift==0)	nGoodMuTauPassed+=event_weight;			       		  
		  //fillHist("3",  Tau1Index, Tau2Index, false, event_weight);
		  //if( pass3rdLeptonVeto  )
		    {
		      //  cout<<"coming in selection 5 "<<endl;
		      //if (shift ==0 ) fillHist("2",   Tau1Index, Tau2Index, my_tau1P4, my_tau2P4, false, event_weight);
		      if(shift==0)nPassedThirdLepVeto+=event_weight;		 
		      //if( pass_bjet_veto )
			{
			  if (shift ==0 ) fillHist("3",   Tau1Index, Tau2Index, my_tau1P4, my_tau2P4, false, event_weight);
			  if(shift==0)nPassedBjetVeto+=event_weight;
			  double deltaR = my_tau1P4.DeltaR(my_tau2P4);
			  if(deltaR > 0.5 )
			    {
			      if (shift ==0 ) fillHist("4",   Tau1Index, Tau2Index, my_tau1P4, my_tau2P4, false, event_weight);
			      //if (shift ==0 ) fillHist("5",   Tau1Index, Tau2Index, my_tau1P4, my_tau2P4, false, event_weight);
			      if(shift==0)nDeltaRPassed+=event_weight;
			      //if(is_MC==false)event_weight=1.0;
			      if(debug)cout<<"this worked Line 558"<<endl;
			      //cout<<" checking "<<__LINE__<<endl; 
			      // cout<<"tau indices : "<<Tau1Index<<" "<<Tau2Index<<endl; 
			      stage = "5";
			      printP4values("5");
			      if (unc_shift == "nominal" ) save_nom();
			      if (shift ==0 ) fillHist("5",   Tau1Index, Tau2Index, my_tau1P4, my_tau2P4, false, event_weight);
			      else fillUncPlots("5", Tau1Index, Tau2Index, false, event_weight, shift);
			      //makeTestPlot("i", 0,0,0,event_weight);
			      double mvis=(my_tau1P4+my_tau2P4).M();
			      double higgsPt = (my_tau1P4+my_tau2P4).Pt();

			      double tot_tr_mass = TMasstaumet_F(my_tau1P4, my_tau2P4 , my_metP4 );
			      //cout<<"coming before higgspt: "<<nHiggsptPassed<<endl;
			      if(higgsPt > 65)
				{

				  if(shift==0)nHiggsptPassed+=event_weight;			
				  if (shift ==0 ) fillHist("7",  Tau1Index, Tau2Index, my_tau1P4, my_tau2P4, false, event_weight);

				  // cout<<"coming after higgspt: "<<nHiggsptPassed<<endl;
				  if(mvis < 125)
				    {
				      if(shift==0)nMVisssPassed+=event_weight;
				      if (shift ==0 ) fillHist("8",  Tau1Index, Tau2Index, my_tau1P4, my_tau2P4, false, event_weight);
				      else fillUncPlots("8", Tau1Index, Tau2Index, false, event_weight, shift);
				      if(my_metP4.Pt() > 105)
					{
					  if(shift==0)nMETPassed+=event_weight;
					  stage = "9";
					  if (unc_shift == "nominal" ) save_nom();
					  if (shift ==0 ) fillHist("9",  Tau1Index, Tau2Index, my_tau1P4, my_tau2P4, false, event_weight);
					  //else fillUncPlots("9", Tau1Index, Tau2Index, false, event_weight, shift);
					  ////////// selects events if not vetoed
					  if(hem_veto()==false)// && deltaR<2.0)
					    {
					      if(shift==0)nhemvetopassed+=event_weight;
					      stage = "9b";
					      if (unc_shift == "nominal" ) save_nom();
					      if(shift ==0 ) fillHist("9b",  Tau1Index, Tau2Index, my_tau1P4, my_tau2P4, false, event_weight);
					      else           fillUncPlots("9b", Tau1Index, Tau2Index, false, event_weight, shift);
					      if(deltaR<2.0)
						{
						  if(shift ==0 ) fillHist("9c",  Tau1Index, Tau2Index, my_tau1P4, my_tau2P4, false, event_weight);
						  else           fillUncPlots("9c", Tau1Index, Tau2Index, false, event_weight, shift);
						  if(tot_tr_mass > 260)
						    {
						      if(shift ==0 ) fillHist("9d",  Tau1Index, Tau2Index, my_tau1P4, my_tau2P4, false, event_weight);
						      else           fillUncPlots("9d", Tau1Index, Tau2Index, false, event_weight, shift);
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
    }


  
  if(debug)cout<<"fake background region - antiisolated begin "<<__LINE__<<endl;
  if(is_MC)
    event_weight=weight;
  else
    event_weight=1.0;
  tau1Cand.clear();
  
  for (int i = 0; i < nJet; i++)
    jetPt->at(i) = orginal_jetPt[i];
  

  if(shift!=0 && selected_systematic!="jetFakes")
    return;
 
  bool tautauSelected=false;
  int leadingtau = -1; int subleadingtau = -1;
  std::vector<int> tauCand; tauCand.clear();
  tauCand = getTauCand_noID(40.0,2.1 , shift);  ///// taus selected
  /* index_tau1 = get1TauCand_noID(40.0, 2.1, 0 ); */
  /* index_tau2 = get2TauCand_noID(40.0, 2.1, 0 ); */

  metP4.SetPtEtaPhiE(pfMET ,0,pfMETPhi,pfMET);
  if( tauCand.size()>=2 )
    {
      nGoodMuonPassed_fr+=event_weight;
      //makeTestPlot("c_fr", 0,0,0,event_weight);
      if(debug)cout<<"this worked Line "<<__LINE__<<endl;
      assignTauIndices(tauCand , leadingtau, subleadingtau);  // select iso and anti-iso taus -> subleading & leading taus
      if( tauCand.size()>=2 && leadingtau>-1 && subleadingtau>-1 ) 
	{ 
	  setMyEleTau(leadingtau, subleadingtau, metP4, shift); 
	  double mt=TMass_F(my_tau2P4.Pt(),my_tau2P4.Phi()
			    ,my_metP4.Pt(), my_metP4.Phi());
	  double mvis=(my_tau1P4+my_tau2P4).M();
	  double higgsPt = (my_tau1P4+my_tau2P4).Pt();
	  double newFF = 1.0;
	  newFF = FF_weights_withlpt.get_ff( my_tau1P4.Pt(), mt, mvis
					     , 0 , my_tau2P4.Pt(), my_metP4.Pt()
					     , my_njets, 0
					     , 0, 0 , 0
					     , TString(" "));
		      
	  /* if (mvis<80 && mvis>30 && newFF>1.0) */
	  /*   newFF = abs(1 - newFF); */
	  //
	  event_weight = event_weight * newFF;
	  //	  nGoodTauPassed_fr+=event_weight;
	  /* if(mvis<80 && mvis>30) */
	  /*   cout<<" FF_weight = "<< newFF <<endl; */
	  if ( TriggerSelection(my_tau1P4, my_tau2P4) )
	  {
	    //if(Ztt_selector)
	    {
	      nGoodTauPassed_fr+=event_weight;	
	      if ( tau_Charge->at(Tau1Index)*tau_Charge->at(Tau2Index)<0 )
		{				  
		  nGoodMuTauPassed_fr+=event_weight;
		  //makeTestPlot("e_fr", 0,0,0,event_weight);
		  if ( MatchTriggerFilter(Tau1Index, Tau2Index) )
		  {
				      
		    applySf=1.0;
		    if(is_MC)
		      applySf=  getScaleFactors( my_tau1P4.Pt(),
						 my_tau2P4.Pt(),
						 my_tau1P4.Eta(),
						 my_tau2P4.Eta(),
						 tau_DecayMode->at(Tau1Index),
						 tau_DecayMode->at(Tau2Index),
						 my_genmatching_l1,
						 my_genmatching_l2,
						 true  /// this is set to true for fake bakground
						 );
				  
		    event_weight = event_weight * applySf;
		    if(shift ==0 ) fillHist("1_fr", Tau1Index, Tau2Index, my_tau1P4, my_tau2P4, true, event_weight);	    
		    //if( pass3rdLeptonVeto  )
		      {
			//if(shift ==0 ) fillHist("2_fr", Tau1Index, Tau2Index, my_tau1P4, my_tau2P4, true, event_weight);
			nPassedThirdLepVeto_fr+=event_weight;
			//if( pass_bjet_veto )
			  {
			    // if(shift ==0 ) fillHist("3_fr", Tau1Index, Tau2Index, my_tau1P4, my_tau2P4, true, event_weight);
			    nPassedBjetVeto_fr+=event_weight;
			    
			    double deltaR = my_tau1P4.DeltaR(my_tau2P4);
			    if(deltaR > 0.5 )
			      {
				nDeltaRPassed_fr+=event_weight;
				//makeTestPlot("i_fr", 0,0,0,event_weight);
				if(debug)cout<<"this worked Line 442"<<endl;
				stage = "5_fr";
				if(shift ==0 )fillHist("5_fr", Tau1Index, Tau2Index, my_tau1P4, my_tau2P4, true, event_weight);
				else fillUncPlots("5_fr", Tau1Index, Tau2Index, true, event_weight, shift);
				double mvis=(my_tau1P4+my_tau2P4).M();
				double higgsPt = (my_tau1P4+my_tau2P4).Pt();
				double tot_tr_mass = TMasstaumet_F(my_tau1P4, my_tau2P4 , my_metP4 );
				if(higgsPt > 65)
				  {
				    nHiggsptPassed_fr+=event_weight;			
				    if(shift ==0 ) fillHist("7_fr", Tau1Index, Tau2Index, my_tau1P4, my_tau2P4, true, event_weight);
				    if(mvis < 125)
				      {
					nMVisssPassed_fr+=event_weight;
					if(shift ==0 ) fillHist("8_fr", Tau1Index, Tau2Index, my_tau1P4, my_tau2P4, true, event_weight);
					else fillUncPlots("8_fr", Tau1Index, Tau2Index, true, event_weight, shift);
					if(my_metP4.Pt() > 105)
					  {
					    nMETPassed_fr+=event_weight;
					    stage = "9_fr";
					    if(shift ==0 ) fillHist("9_fr", Tau1Index, Tau2Index, my_tau1P4, my_tau2P4, true, event_weight);
					    //else fillUncPlots("9_fr", Tau1Index, Tau2Index, true, event_weight, shift);
					    ////////// selects events if not vetoed
					    if(hem_veto()==false)// && deltaR<2.0)
					      {
						nhemvetopassed_fr+=event_weight;
						stage = "9b_fr";
						if (unc_shift == "nominal" ) save_nom();
						if(shift ==0 ) fillHist("9b_fr", Tau1Index, Tau2Index, my_tau1P4, my_tau2P4, true, event_weight);
						else           fillUncPlots("9b_fr", Tau1Index, Tau2Index, true, event_weight, shift);
						if(deltaR<2.0){
						  if(shift ==0 ) fillHist("9c_fr", Tau1Index, Tau2Index, my_tau1P4, my_tau2P4, true, event_weight);
						  else           fillUncPlots("9c_fr", Tau1Index, Tau2Index, true, event_weight, shift);
						  if(tot_tr_mass > 260)
						    {
						      if(shift ==0 ) fillHist("9d_fr", Tau1Index, Tau2Index, my_tau1P4, my_tau2P4, true, event_weight);
						      else           fillUncPlots("9d_fr", Tau1Index, Tau2Index, true, event_weight, shift);
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
	}
    }
}

////// fake rate anti isolated region end
