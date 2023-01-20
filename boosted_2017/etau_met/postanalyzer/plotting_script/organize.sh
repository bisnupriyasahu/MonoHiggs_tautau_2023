set -e


# declare -a plotList=("muPt" "muEta" "muPhi" "tauPt" "tauEta" "tauPhi" "tauIso" "tauDecayMode" "tauCharge" "deltaR" "higgsPt" "nJet" "visMass" "mT_muMet" "trigger" "genMatch" "met" "metPhi" "deltaPhi" "deltaEta" "metLongXaxis" "tot_TMass" "tot_TMass_full") 
#declare -a plotList=("muPt" "muEta" "tauPt" "tauEta" "deltaR" "higgsPt" "nJet" "visMass" "met" "metPhi" "metLongXaxis" "tot_TMass" "tot_TMass_full" "delptaPhi_HptMet") 
declare -a plotList=("metFull")

for j in "${plotList[@]}"
do 
    python get_zll.py --hist $j
    python get_small_mc.py --hist $j
    python get_jetFakes.py --hist $j
    python get_jetFakes_unc.py --hist $j

done
