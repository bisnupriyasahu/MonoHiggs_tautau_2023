





for i in {1..43}
do
    hadd signal_dr_zprime/Zpbaryonic_${i}.root signal_dr_zprime/Zpbaryonic_*_${i}.root 
    
done



