




root_mapping = { 1.0 : "1000_100",  #  MZp, 1000 , MChi, 100
                 2.0 : "1000_1" , #  MZp, 1000 , MChi, 1
                 3.0 : "1000_200" , #  MZp, 1000 , MChi, 200
                 4.0 :"1000_400", #  MZp, 1000 , MChi, 400
                 5.0 :"1000_600" , #  MZp, 1000 , MChi, 600
                 6.0 : "1000_800" , #  MZp, 1000 , MChi, 800
                 7.0:  "100_1" ,  #  MZp, 100 , MChi, 1
                 8.0 : "100_50" , #  MZp, 100 , MChi, 50
                 9.0 : "1500_100" , #  MZp, 1500 , MChi, 100
                 10.0 : "1500_1" , #  MZp, 1500 , MChi, 1
                 11.0 : "1500_200" ,# MZp, 1500 , MChi, 200
                 12.0 : "1500_400", #  MZp, 1500 , MChi, 400
                 13.0 : "1500_600" ,  #   MZp, 1500 , MChi, 600
                 14.0 : "1500_800" ,  #   MZp, 1500 , MChi, 800
                 15.0 : "2000_100" ,  #   MZp, 2000 , MChi, 100
                 16.0 : "2000_1" ,  #   MZp, 2000 , MChi, 1
                 17.0 : "2000_200" ,  #   MZp, 2000 , MChi, 200
                 18.0 : "2000_400" ,  #   MZp, 2000 , MChi, 400
                 19.0 : "2000_600" ,  #   MZp, 2000 , MChi, 600
                 20.0 : "2000_800" ,  #   MZp, 2000 , MChi, 800
                 21.0 : "200_100" ,  #   MZp, 200 , MChi, 100
                 22.0 : "200_150" ,  #   MZp, 200 , MChi, 150
                 23.0 : "200_1" ,  #   MZp, 200 , MChi, 1
                 24.0 : "200_50" ,  #   MZp, 200 , MChi, 50
                 25.0 : "2500_100" ,  #   MZp, 2500 , MChi, 100
                 26.0 : "2500_1" ,  #   MZp, 2500 , MChi, 1
                 27.0 : "2500_200" ,  #   MZp, 2500 , MChi, 200
                 28.0 : "2500_400" ,  #   MZp, 2500 , MChi, 400
                 29.0 : "2500_600" ,  #   MZp, 2500 , MChi, 600
                 30.0 : "2500_800" ,  #   MZp, 2500 , MChi, 800
                 31.0 : "3000_100" ,  #   MZp, 3000 , MChi, 100
                 32.0 : "3000_1" ,  #   MZp, 3000 , MChi, 1
                 33.0 : "3000_200" ,  #   MZp, 3000 , MChi, 200
                 34.0 : "300_150" ,  #   MZp, 300 , MChi, 150
                 35.0 : "3500_100" ,  #   MZp, 3500 , MChi, 100
                 36.0 : "3500_1" ,  #   MZp, 3500 , MChi, 1
                 37.0 : "350_50" ,  #   MZp, 350 , MChi, 50
                 38.0 : "500_100" ,  #   MZp, 500 , MChi, 100
                 39.0 : "500_1" ,  #   MZp, 500 , MChi, 1
                 40.0 : "500_200" ,  #   MZp, 500 , MChi, 200
                 41.0 : "500_400" ,  #   MZp, 500 , MChi, 400
                 42.0 : "650_50" ,  #   MZp, 650 , MChi, 50
                 43.0 : "800_50" ,  #  MZp, 800 , MChi, 50  
             }
def get_xsec(key = 1.0):
    mapping = {}
    with open('ZpBxsection.txt') as infile:
        lines = infile.readlines()
        for line in lines:
            line = line.split()
            #print line
            signal_parameter = line[0].split('_')
            MZp = signal_parameter[1].replace('MZp', '')
            MChi = signal_parameter[2].replace('MChi', '')
            if root_mapping[key] == MZp+'_'+MChi:
                label = 'MZp_'+str(MZp)+'_MChi_'+str(MChi)
                return label , float(line[4])
        

    #print(mapping)
    return 1.0


if __name__=="__main__":
    res = []
    x = []
    y = []
    for i in range(1, 44):
        label, xsec =  get_xsec(i)
        #print "'Zpbaryonic_{idx}' : [ 'Zpbaryonic_{idx}' , '{l}' , 0 ] , ".format(idx=i, l=label)
        label = label.split('_')
        #print "MonoHiggs_ZpB --med {a} --ps {b} --year 2018 --chn all".format(a=label[1], b=label[3])
        res.append('ZprimeBaryonic_mzp'+label[1]+'_mchi'+label[3])
        #x.append(int(label[1]))
        #y.append(int(label[3]))
        
    print(res)
    #print x
    #print y
