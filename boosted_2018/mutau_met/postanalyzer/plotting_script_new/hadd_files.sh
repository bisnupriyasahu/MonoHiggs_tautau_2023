\


limit(){
    hadd -f f_mutau_initial.root files_nominal/*tot_TMass_full*.root
    hadd -f f_mutau_up.root files_up/*tot_TMass_full*.root
    hadd -f f_mutau_down.root files_down/*tot_TMass_full*.root
}

hadd_each(){   
    #declare -a plotList=("muPt" "muEta" "muPhi" "tauPt" "tauEta" "tauPhi" "tauIso" "tauDecayMode" "tauCharge" "deltaR" "higgsPt" "nJet" "visMass" "mT_muMet" "trigger" "genMatch" "met" "metPhi" "deltaPhi" "deltaEta" "metLongXaxis" "tot_TMass" "tot_TMass_full" "delptaPhi_HptMet") 
    declare -a plotList=("muPt" "muEta" "muPhi" "tauPt" "tauEta" "tauPhi" "delptaPhi_HptMet")
    for i in "${plotList[@]}"
    do
	hadd f_${i}_initial.root sample/*${i}.root
	hadd f_${i}_up.root sample/*${i}_up.root
	hadd f_${i}_down.root sample/*${i}_down.root
    done
}
hadd_selected(){   
    #declare -a plotList=("muPt" "muEta" "tauPt" "tauEta" "deltaR" "higgsPt" "nJet" "visMass" "met" "metPhi" "deltaPhi" "deltaEta" "metLongXaxis" "tot_TMass" "tot_TMass_full" "delptaPhi_HptMet") 
    declare -a plotList=("tot_TMass" "tot_TMass_full")
    for i in "${plotList[@]}"
    do
	hadd f_${i}_initial.root sample/*${i}.root
	hadd f_${i}_up.root sample/*${i}_up.root
	hadd f_${i}_down.root sample/*${i}_down.root
    done
}
hadd_mutau(){
    hadd -f f_mutau_initial.root sample/*tot_TMass_full.root
    hadd -f f_mutau_up.root sample/*tot_TMass_full_up.root
    hadd -f f_mutau_down.root sample/*tot_TMass_full_down.root
}


mupt(){

    hadd -f f_muPt_initial.root sample/*muPt.root
    hadd -f f_muPt_up.root sample/*muPt_up.root
    hadd -f f_muPt_down.root sample/*muPt_down.root
}

all(){
    hadd_selected
    hadd_mutau
}

"$@"
