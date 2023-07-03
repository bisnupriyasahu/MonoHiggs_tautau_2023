void mutau_analyzer::selections(float weight, int shift, string uncObject)
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
  std::vector<int> event_mu, event_tau;
  event_mu.clear(); event_tau.clear();
  muCand.clear();
  tauCand.clear();
  aisrtauCand.clear();
  jetCand.clear();
  for (int i = 0; i < nJet; i++)
    jetPt->at(i) = orginal_jetPt[i];
    
  if (uncObject == "tauES"){
    /// apply +sigma shift to tau pt, everything else default
    muCand = getMuCand(26,2.4, 0 );
    tauCand = getTauCand(30.0, 2.3, shift );
    metP4.SetPtEtaPhiE(pfMET ,0,pfMETPhi,pfMET);    
  }
  else if (uncObject == "JES"){
    /// apply +sigma shift to Jet, pfMET_T1JESUp , everything else default
    muCand = getMuCand(26,2.4, 0);  ///// ele selected
    tauCand = getTauCand(30.0, 2.3, 0 );
    metP4.SetPtEtaPhiE(pfMET ,0,pfMETPhi,pfMET);
    if(unc_shift=="up")
      {
      for (int i = 0; i < nJet; i++)
  	jetPt->at(i) = orginal_jetPt[i]*(1 + 1*jetJECUnc->at(i));
      //metP4.SetPtEtaPhiE(pfMET_T1JESUp, 0, pfMETPhi_T1JESUp, pfMET_T1JESUp);
      }
    else if(unc_shift=="down")
      {
  	for (int i = 0; i < nJet; i++)
  	  jetPt->at(i) = orginal_jetPt[i]*(1 - 1*jetJECUnc->at(i));
  	//metP4.SetPtEtaPhiE(pfMET_T1JESDo, 0, pfMETPhi_T1JESDo, pfMET_T1JESDo);
      }
    /* cout<<"setting JES event "<<eventNumber<<"  unc_shift="<<unc_shift<<" sys="<<selected_systematic */
    /* 	<<"  met ="<<metP4.Pt() */
    /* 	<<"\n"<<endl; */
  }
  else if (uncObject == "JER"){
    /// apply +sigma shift to Jet, pfMET_T1JERUp, everything else default
    muCand = getMuCand(26,2.4, 0);  ///// ele selected
    tauCand = getTauCand(30.0, 2.3, 0 );
    metP4.SetPtEtaPhiE(pfMET ,0,pfMETPhi,pfMET);
    if(unc_shift=="up")
      {
  	for (int i = 0; i < nJet; i++)
  	  jetPt->at(i) = jetRawPt->at(i) * jetP4SmearUp->at(i);
  	//metP4.SetPtEtaPhiE(pfMET_T1JERUp, 0, pfMETPhi, pfMET_T1JERUp);
      }
    else if(unc_shift=="down")
      {
  	for (int i = 0; i < nJet; i++)
  	  jetPt->at(i) = jetRawPt->at(i) * jetP4SmearDo->at(i);
  	//metP4.SetPtEtaPhiE(pfMET_T1JERDo, 0, pfMETPhi, pfMET_T1JERDo);
      }
    /* cout<<"setting JER event "<<eventNumber<<"  unc_shift="<<unc_shift<<" sys="<<selected_systematic */
    /* 	<<"  met ="<<metP4.Pt() */
    /* 	<<"\n"<<endl; */
  }
  else if (uncObject == "metresponse"){
    /// apply +sigma shift to met, everything else default
    muCand = getMuCand(26,2.4, 0);  ///// ele selected
    tauCand = getTauCand(30.0, 2.3, 0 );
    metP4.SetPtEtaPhiE(pfMET ,0,pfMETPhi,pfMET);
    /* if (muCand.size()>0 && tauCand.size()>0){ */
    /*   jetCand=getJetCand(muCand[0], tauCand[0]); */
    /*   my_njets=jetCand.size(); */
    /*   metP4 = metSysUnc("response"); */
    /* } */
  }
  else if (uncObject == "metresolution"){
    /// apply +sigma shift to met, everything else default
    muCand = getMuCand(26,2.4, 0);  ///// ele selected
    tauCand = getTauCand(30.0, 2.3, 0 );
    metP4.SetPtEtaPhiE(pfMET ,0,pfMETPhi,pfMET);
    /* if(muCand.size()>0 && tauCand.size()>0) */
    /*   { */
    /* 	jetCand=getJetCand(muCand[0], tauCand[0]); */
    /* 	my_njets=jetCand.size(); */
    /* 	metP4 = metSysUnc("resolution"); */
    /*   } */
  }
  else if (uncObject == "metunclustered"){
    /// apply +sigma shift to met, everything else default
    muCand = getMuCand(26,2.4, 0);  ///// ele selected
    tauCand = getTauCand(30.0, 2.3, 0 );
    metP4.SetPtEtaPhiE(pfMET ,0,pfMETPhi,pfMET);
    /* if (muCand.size()>0 && tauCand.size()>0){ */
    /*   jetCand=getJetCand(muCand[0], tauCand[0]); */
    /*   my_njets=jetCand.size(); */
    /*   //metP4 = metClusteredUnc(); */
    /* } */
  }
  else{
    //Setting nominal values
    muCand = getMuCand(26,2.4, 0);  ///// ele selected
    tauCand = getTauCand(30.0, 2.3, 0 );
    metP4.SetPtEtaPhiE(pfMET ,0,pfMETPhi,pfMET);
  }
  
  event_mu = muCand;
  event_tau = tauCand;
  event_met_p4 = metP4;
  //muCand = getMuCand(26,2.4, shift);
  if( muCand.size() >0 ) 
    { 
      nGoodMuonPassed_dyll+=event_weight;
      //tauCand = getTauCand(30,2.3, shift);
      if( tauCand.size()>0 ) 
	{
	  setMyEleTau(muCand[0], tauCand[0], metP4, shift);
	  printP4values("initial setting  " + uncObject); // helps debug pt values
	  if ( TriggerSelection(my_muP4, my_tauP4) )
	    {
	      //if(Ztt_selector) 
	      if (pass3rdLeptonVeto)
		{
		  nGoodTauPassed_dyll+=event_weight;
		  if ( muCharge->at(MuIndex) * tau_Charge->at(TauIndex) < 0  
		       &&  (if_DY_Genmatching(MuIndex, TauIndex)==1 || if_DY_Genmatching(MuIndex, TauIndex)==2)  )
		    {
		      nGoodMuTauPassed_dyll+=event_weight;
		      //makeTestPlot("e_dyll", 0,0,0,event_weight);
				   
		      if ( MatchTriggerFilter(MuIndex, TauIndex) )
			{
				       
			  applySf=1.0;
			  if(is_MC)
			    applySf=  getScaleFactors( my_muP4.Pt(),
						       my_tauP4.Pt(),
						       my_muP4.Eta(),
						       my_tauP4.Eta(),
						       tau_DecayMode->at(TauIndex),
						       my_genmatching_l2,
						       false  /// this is set to true for fake bakground
						       );
				   
			  //cout<<" sf : "<< applySf <<endl;
			  event_weight = event_weight * applySf;
				   
			  //makeTestPlot("f_dyll", 0,0,0,event_weight);
			  if( thirdLeptonVeto(MuIndex , TauIndex)  )
			    {
			      nPassedThirdLepVeto_dyll+=event_weight;
			      if( pass_bjet_veto )
				{
					      
				  nPassedBjetVeto_dyll+=event_weight;
				  //makeTestPlot("h_dyll", 0,0,0,event_weight);
				  double deltaR =  my_muP4.DeltaR(my_tauP4);
				  if(deltaR > 0.5 )
				    {
				      nDeltaRPassed_dyll+=event_weight;
				      if(is_MC==false)event_weight=1.0;
				      stage = "5_dyll";
				      if (unc_shift == "nominal" ) save_nom();
				      if (shift ==0 ) fillHist("5_dyll",  MuIndex, TauIndex, false, event_weight);
				      else fillUncPlots("5_dyll", MuIndex, TauIndex, false, event_weight, shift);
				      double mT_muMet = TMass_F( my_muP4.Pt(), my_muP4.Phi(),
								 my_metP4.Pt(), my_metP4.Phi() );
				      /* if( mT_muMet < 50 ) */
				      /* 	{ */
				      /* 	  if (shift ==0 ) fillHist("6_dyll", MuIndex, TauIndex, false, event_weight); */
				      /* 	  //makeTestPlot("j_dyll", 0,0,0,event_weight); */
				      /* 	} */
				      //higgs pt > 65,  visible mass < 125, met > 105
				      double mvis=(my_muP4+my_tauP4).M();
				      double higgsPt = (my_muP4+my_tauP4).Pt();
				      //double tot_tr_mass = (my_muP4 + my_tauP4 + my_metP4 ).M();
				      double tot_tr_mass = TMasstaumet_F(my_muP4,my_tauP4,my_metP4);
				      if(higgsPt > 65)
					{
					  //if (shift ==0 ) fillHist("7_dyll", MuIndex, TauIndex, false, event_weight);
					  if(mvis < 125)
					    {
					      //if (shift ==0 ) fillHist("8_dyll", MuIndex, TauIndex, false, event_weight);
					      if(my_metP4.Pt() > 105)
						{
						  stage = "9_dyll";
						  if (unc_shift == "nominal" ) save_nom();
						  //if (shift ==0 ) fillHist("9_dyll", MuIndex, TauIndex, false, event_weight);
						  //else fillUncPlots("9_dyll", MuIndex, TauIndex, false, event_weight, shift);
						  ////////// selects events if not vetoed
						  if(hem_veto()==false)// && deltaR<2.0)
						    {
						      stage = "9b_dyll";
						      if (unc_shift == "nominal" ) save_nom();
						      if(shift ==0 ) fillHist("9b_dyll", MuIndex, TauIndex, false, event_weight);
						      else           fillUncPlots("9b_dyll", MuIndex, TauIndex, false, event_weight, shift);
						      if(deltaR<2.0){
							if(shift ==0 ) fillHist("9c_dyll", MuIndex, TauIndex, false, event_weight);
							else           fillUncPlots("9c_dyll", MuIndex, TauIndex, false, event_weight, shift);
							if(tot_tr_mass > 260)
								{
								if(shift ==0 ) fillHist("9d_dyll", MuIndex, TauIndex, false, event_weight);
								else           fillUncPlots("9d_dyll", MuIndex, TauIndex, false, event_weight, shift);
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

  
  
  
  ////// signal region -  isolated begin
  if(is_MC)
    event_weight=weight;
  else
    event_weight=1.0;
  muCand = event_mu;
  tauCand = event_tau;
  metP4 = event_met_p4;

  //muCand.clear();  tauCand.clear();
  //muCand = getMuCand(20,2.4, shift);  ///// muons selected 
  if( muCand.size() >0 ) 
    { 
      nGoodMuonPassed+=event_weight;
      //tauCand = getTauCand(30,2.3, shift);
      if( tauCand.size()>0 ) 
	{
	  //nGoodTauPassed+=event_weight;
	  setMyEleTau(muCand[0], tauCand[0], metP4, shift);
		       
	  if ( TriggerSelection(my_muP4, my_tauP4) )
	    {
	      nGoodTauPassed+=event_weight;
	      //if(Ztt_selector) 
	      if(pass3rdLeptonVeto)
		{
		  if ( muCharge->at(MuIndex) * tau_Charge->at(TauIndex) < 0  
		       &&  (if_DY_Genmatching(MuIndex, TauIndex)==1 || if_DY_Genmatching(MuIndex, TauIndex)==3)  )
		    {
		      nGoodMuTauPassed+=event_weight;
		      //makeTestPlot("e", 0,0,0,event_weight);
		      
		      if ( MatchTriggerFilter(MuIndex, TauIndex) )
			{
			  
			  //my_muP4 = my_muP4*muRC_sf;
			  applySf=1.0;
			  if(is_MC)
			    applySf=  getScaleFactors( my_muP4.Pt(),
						       my_tauP4.Pt(),
						       my_muP4.Eta(),
						       my_tauP4.Eta(),
						       tau_DecayMode->at(TauIndex),
						       my_genmatching_l2,
						       false  /// this is set to true for fake bakground
						       );
			  event_weight = event_weight * applySf;
			  
			  
			  if( thirdLeptonVeto(MuIndex , TauIndex)  )
			    {
			      nPassedThirdLepVeto+=event_weight;
			      
			      if( pass_bjet_veto )
				{
				  
				  nPassedBjetVeto+=event_weight;
				  //makeTestPlot("h", 0,0,0,event_weight);
				  double deltaR =  my_muP4.DeltaR(my_tauP4);
				  if(deltaR > 0.5 )
				    {
				      nDeltaRPassed+=event_weight;
				      if(is_MC==false)event_weight=1.0;
				      //makeTestPlot("i", 0,0,0,event_weight);
				      if(debug)cout<<"this worked Line 374"<<endl;
				      stage = "5";
				      if (unc_shift == "nominal" ) save_nom();
				      if(shift ==0 ) fillHist("5",  MuIndex, TauIndex, false, event_weight);
				      else fillUncPlots("5", MuIndex, TauIndex, false, event_weight, shift);
				      double mT_muMet = TMass_F( my_muP4.Pt(), my_muP4.Phi(),
								 my_metP4.Pt(), my_metP4.Phi() );
				      /* if( mT_muMet < 50 ) */
				      /* 	{ */
				      /* 	  if(shift ==0 ) fillHist("6", MuIndex, TauIndex, false, event_weight); */
				      /* 	  //makeTestPlot("j", 0,0,0,event_weight); */
				      /* 	} */
				      //higgs pt > 65,  visible mass < 125, met > 105
				      double mvis=(my_muP4+my_tauP4).M();
				      double higgsPt = (my_muP4+my_tauP4).Pt();
				      //double tot_tr_mass = (my_muP4 + my_tauP4 + my_metP4 ).M();
				      double tot_tr_mass = TMasstaumet_F(my_muP4,my_tauP4,my_metP4);
				      if(higgsPt > 65)
					{
					  if(shift ==0 ) fillHist("7", MuIndex, TauIndex, false, event_weight);
					  if(mvis < 125)
					    {
					      //if(shift ==0 ) fillHist("8", MuIndex, TauIndex, false, event_weight);
					      if(my_metP4.Pt() > 105)
						{
						  stage = "9";
						  if (unc_shift == "nominal" ) save_nom();
				      
						  if(shift ==0 ) fillHist("9", MuIndex, TauIndex, false, event_weight);
						  //else fillUncPlots("9", MuIndex, TauIndex, false, event_weight, shift);
						  ////////// selects events if not vetoed
						  if(hem_veto()==false)// && deltaR<2.0)
						    {
						      stage = "9b";
						      if (unc_shift == "nominal" ) save_nom();
						      if(shift ==0 ) fillHist("9b", MuIndex, TauIndex, false, event_weight);
						      else           fillUncPlots("9b", MuIndex, TauIndex, false, event_weight, shift);
						      if(deltaR<2.0){
								if(shift ==0 ) fillHist("9c", MuIndex, TauIndex, false, event_weight);
								else           fillUncPlots("9c", MuIndex, TauIndex, false, event_weight, shift);
								if(tot_tr_mass > 260)
									{
									if(shift ==0 ) fillHist("9d", MuIndex, TauIndex, false, event_weight);
									else           fillUncPlots("9d", MuIndex, TauIndex, false, event_weight, shift);
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

  
  ////// fake background region - antiisolated begin
  if(is_MC)
    event_weight=weight;
  else
    event_weight=1.0;
  muCand.clear(); tauCand.clear(); aisrtauCand.clear(); jetCand.clear();
  
  for (int i = 0; i < nJet; i++)
    jetPt->at(i) = orginal_jetPt[i];
  
  //Setting nominal values
  muCand = getMuCand(26,2.4, 0);  ///// ele selected
  tauCand = getAISRTauCand(30.0, 2.3, 0 );
  metP4.SetPtEtaPhiE(pfMET ,0,pfMETPhi,pfMET);
  
  if(shift!=0 && selected_systematic!="jetFakes")
    return;
  //cout<<"entering fake rate region"<<endl;
  if( muCand.size() >0 ) 
    { 
      nGoodMuonPassed_fr+=event_weight;
      if(debug)cout<<"this worked Line 443"<<endl;
      if( tauCand.size()>0 ) 
	{
	  //nGoodTauPassed_fr+=event_weight;
	  if(debug)cout<<"this worked Line 305"<<endl;
	  setMyEleTau(muCand[0], tauCand[0], metP4, shift);
	  //cout<<"this worked Line "<<__LINE__<<" setting variables for event"<<endl;
	  if ( TriggerSelection(my_muP4, my_tauP4) )
	    {
	      double mt=TMass_F(my_muP4.Pt(),my_muP4.Phi()
				,my_metP4.Pt(), my_metP4.Phi());
	      double mvis=(my_muP4+my_tauP4).M();
	      double higgsPt = (my_muP4+my_tauP4).Pt();
	      double frac_tt=0.01; double frac_qcd=0.24; double frac_w=0.75; 
	      int category=eventCategory(MuIndex , TauIndex, higgsPt) ;
	      getFractions(category, mvis, frac_qcd, frac_w, frac_tt); /// this assigns right values for qcd, w and tt fractions
	      bool xtrg = false;
	      if( passCrossTrigger && my_muP4.Pt()>= 21.0 && my_muP4.Pt()<=25.0 && my_tauP4.Pt() > 32.0 && my_tauP4.Eta() < 2.1) xtrg=true;
	      else if ( my_muP4.Pt()>25.0) xtrg=false;
	      double newFF = FF_weights_withlpt.get_ff( my_tauP4.Pt(), mt, mvis
							, 0 , my_muP4.Pt(), my_metP4.Pt()
							, my_njets, xtrg
							, frac_tt, frac_qcd, frac_w
							, TString(" "));
				      
	      event_weight = event_weight*newFF; 
	      nGoodTauPassed_fr+=event_weight;
	      //if(Ztt_selector) 
	      if (pass3rdLeptonVeto)
		{
		  if ( muCharge->at(MuIndex) * tau_Charge->at(TauIndex) < 0 )
		    {
		      nGoodMuTauPassed_fr+=event_weight;
		      //makeTestPlot("e", 0,0,0,event_weight);
				  
		      if ( MatchTriggerFilter(MuIndex, TauIndex) )
			{
				      
			  if(debug)cout<<"this worked Line 314, SR opp charge passed"<<endl;
				      
			  //my_muP4 = my_muP4*muRC_sf;
			  applySf=1.0;
			  if(is_MC)
			    applySf=  getScaleFactors( my_muP4.Pt(),
						       my_tauP4.Pt(),
						       my_muP4.Eta(),
						       my_tauP4.Eta(),
						       tau_DecayMode->at(TauIndex),
						       my_genmatching_l2,
						       true  /// this is set to true for fake bakground
						       );
				      
			  // if(debug)cout<<" sf : "<<getScaleFactors( EleIndex[0] , TauIndex[0] , false , is_MC , debug ) <<endl;
			  //cout<<" sf : "<< applySf <<endl;
			  event_weight = event_weight * applySf;
			  //event_weight = event_weight* getFR(TauIndex);

			  //cout<<" newFF : "<< newFF <<endl;
			  //makeTestPlot("f_fr", 0,0,0,event_weight);
			  if( thirdLeptonVeto(MuIndex , TauIndex)  )
			    {
			      nPassedThirdLepVeto_fr+=event_weight;
			      if( pass_bjet_veto )
				{
					      
				  nPassedBjetVeto_fr+=event_weight;
				  //makeTestPlot("h_fr", 0,0,0,event_weight);
				  double deltaR =  my_muP4.DeltaR(my_tauP4);
				  if(deltaR > 0.5 )
				    {
				      nDeltaRPassed_fr+=event_weight;
				      //makeTestPlot("i_fr", 0,0,0,event_weight);
				      if(shift ==0 ) fillHist("5_fr",  MuIndex, TauIndex, true, event_weight);
				      else           fillUncPlots("5_fr", MuIndex, TauIndex, true, event_weight, shift);						  
				      double mT_muMet = TMass_F( my_muP4.Pt(), my_muP4.Phi(),
								 my_metP4.Pt(), my_metP4.Phi() );
				      /* if( mT_muMet < 50 ) */
				      /* 	{ */
				      /* 	  if(shift ==0 ) fillHist("6_fr", MuIndex, TauIndex, true, event_weight); */
				      /* 	  //makeTestPlot("j_fr", 0,0,0,event_weight); */
				      /* 	} */
				      //higgs pt > 65,  visible mass < 125, met > 105
				      double mvis=(my_muP4+my_tauP4).M();
				      double higgsPt = (my_muP4+my_tauP4).Pt();
				      //double tot_tr_mass = (my_muP4 + my_tauP4 + my_metP4 ).M();
				      double tot_tr_mass = TMasstaumet_F(my_muP4,my_tauP4,my_metP4);
				      if(higgsPt > 65)
					{
					  //if(shift ==0 ) fillHist("7_fr", MuIndex, TauIndex, true, event_weight);
					  if(mvis < 125)
					    {
					      //if(shift ==0 ) fillHist("8_fr", MuIndex, TauIndex, true, event_weight);
					      if(my_metP4.Pt() > 105)
						{
						  if(shift ==0 ) fillHist("9_fr", MuIndex, TauIndex, true, event_weight);
						  //else           fillUncPlots("9_fr", MuIndex, TauIndex, true, event_weight, shift);
						  ////////// selects events if not vetoed
						  if(hem_veto()==false)// && deltaR<2.0)
						    {
						      stage = "9b_fr";
						      if (unc_shift == "nominal" ) save_nom();
						      if(shift ==0 ) fillHist("9b_fr", MuIndex, TauIndex, true, event_weight);
						      else           fillUncPlots("9b_fr", MuIndex, TauIndex, true, event_weight, shift);
						      if(deltaR<2.0){
							if(shift ==0 ) fillHist("9c_fr", MuIndex, TauIndex, true, event_weight);
							else           fillUncPlots("9c_fr", MuIndex, TauIndex, true, event_weight, shift);
							if(tot_tr_mass > 260)
								{
								if(shift ==0 ) fillHist("9d_fr", MuIndex, TauIndex, true, event_weight);
								else           fillUncPlots("9d_fr", MuIndex, TauIndex, true, event_weight, shift);
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
