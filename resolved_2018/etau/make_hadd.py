





outstr  = "hadd zprime_combined/Signal_Zpbaryonic2018_{idx}.root zprime/Signal_Zpbaryonic2018_*_{idx}.root \n"


with open('hadd_zprime.sh', 'w') as outfile:
    for i in range(1, 44):
        outfile.write(outstr.format(idx=i))



