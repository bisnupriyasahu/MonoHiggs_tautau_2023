import ROOT as R
import os


path = '/hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/signal/'
samples = os.listdir(path)

count = 0
good_count = 0

def isvalid(file_name):
    try :
        fin = R.TFile.Open(file_name)
        nevents = fin.Get('nEvents')
        ttree = fin.Get('eventTree')
        integral = nevents.Integral()
        nEntries = ttree.GetEntries()
        if nEntries<=0:
            fin.Close()
            return False
        for i in range(1, min(5, nEntries)):
            ttree.GetEntry(i)
        for event in ttree :
            taupt = event.tau_Pt
        fin.Close()
        return True
    except OSError as error :
        print("\n\n####################", file_name)
        fout = open('failed_files.txt', 'a')
        fout.write(file_name+' \n')
        fout.close()
        return False
    except :
        fout = open('failed_files.txt', 'a')
        fout.write(file_name+' \n')
        fout.close()
        return False


for sample in samples:
    if '.root' not in sample:
        continue
    fullname = path+sample
    print('######################### '+fullname)
    if not isvalid(fullname):
        print("error in file")


print("All done")

