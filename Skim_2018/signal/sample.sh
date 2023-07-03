


for isp in {1..43}
do
    echo "./analyse_signal root://cmsxrootd.hep.wisc.edu:1094/a/b.root b_b_${isp}.root -1 1000 2017 a b ${isp}"

    echo "xrdcp b_b_${isp}.root root://cmsxrootd.hep.wisc.edu:1094//store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/signal/b/ "
  
    echo "rm b_b_${isp}.root "
    echo " "
done

