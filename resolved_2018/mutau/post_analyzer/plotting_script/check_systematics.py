
import ROOT
from sys import path
# import argparse
# parser = argparse.ArgumentParser()
from prettytable import PrettyTable
import time

def checkHistogram(f, histogram):
    isthere=  f.GetListOfKeys().Contains(histogram)
    #print(isthere)
    return isthere


def GetKeyNames( self, dir = "" ):
    self.cd(dir)
    return [key.GetName() for key in ROOT.gDirectory.GetListOfKeys()]
ROOT.TFile.GetKeyNames = GetKeyNames


def get_syst(channel = ''):
    rootFile =  ROOT.TFile(channel+'.root',"r")
    tdir = channel
    samples_list = ['ZTTjet', 'ZLLjet', 'jetFakes', 'TT', 'STT', 'VVT', 'otherMC']
    signal_samples=['MH3_200_MH4_100', 'MH3_200_MH4_150', 'MH3_300_MH4_100', 'MH3_300_MH4_150', 'MH3_400_MH4_100', 'MH3_400_MH4_150', 'MH3_400_MH4_200', 'MH3_400_MH4_250', 'MH3_500_MH4_150', 'MH3_500_MH4_200', 'MH3_500_MH4_250', 'MH3_500_MH4_300', 'MH3_600_MH4_100', 'MH3_600_MH4_150', 'MH3_600_MH4_200', 'MH3_600_MH4_250', 'MH3_600_MH4_300', 'MH3_600_MH4_350', 'MH3_600_MH4_400', 'MH3_600_MH4_500', 'MH3_700_MH4_250', 'MH3_700_MH4_300', 'MH3_700_MH4_350', 'MH3_700_MH4_400', 'MH3_800_MH4_250', 'MH3_800_MH4_300', 'MH3_800_MH4_350', 'MH3_800_MH4_500', 'MH3_900_MH4_300', 'MH3_900_MH4_350', 'MH3_900_MH4_400', 'MH3_900_MH4_500']
    hist_list = rootFile.GetKeyNames(channel)
    shape_dict = {}
    for h in hist_list:
        if 'MH3' in h or 'data' in h: continue
        h = h.replace('Down', '')
        h = h.replace('Up', '')
        tmp_name = h.split('_')
        sample_name = tmp_name[0]
        syst_name = '_'.join(tmp_name[1:])
        if syst_name in shape_dict:
            if sample_name not in shape_dict[syst_name]:
                shape_dict[syst_name].append(sample_name)
        else:
            shape_dict[syst_name] = [sample_name]

    print 'Systematics mapping .................'
    for key in sorted(shape_dict):
        print """ '{}' : {} , """.format(key , shape_dict[key])
        

    
    for shape in shape_dict:
        for sample in shape_dict[shape]:
            #print tdir+'/'+sample , tdir+'/'+sample+'_'+shape+'Up' , tdir+'/'+sample+'_'+shape+'Down'
            nominal_hist = rootFile.Get(tdir+'/'+sample)
            up_hist   =  rootFile.Get(tdir+'/'+sample+'_'+shape+'Up')
            down_hist =  rootFile.Get(tdir+'/'+sample+'_'+shape+'Down')
            nominal_integral = nominal_hist.Integral()
            try:
                up_integral = up_hist.Integral()
                down_integral = down_hist.Integral()
                up_percent = 100 * abs(nominal_integral- up_integral)/nominal_integral 
                down_percent = 100 * abs(nominal_integral- down_integral)/nominal_integral
                print  "Integral for "+sample + "     " + shape
                t = PrettyTable(['Down ', 'Nominal', 'Up'])
                t.add_row([down_integral   , nominal_integral, up_integral])
                t.add_row(['% change', 0               , '% change'])
                t.add_row([down_percent    , 0               , up_percent])
                print(t)
                print "\n"
                
            except:
                print  "check this {}  {}".format(sample, shape)

    for signal in signal_samples:
        nominal_hist = rootFile.Get(tdir+'/'+signal)
        up_hist   =  rootFile.Get(tdir+'/'+signal+'_'+shape+'Up')
        down_hist =  rootFile.Get(tdir+'/'+signal+'_'+shape+'Down')
        nominal_integral = nominal_hist.Integral()
        try:
            up_integral = up_hist.Integral()
            down_integral = down_hist.Integral()
            up_percent = 100 * abs(nominal_integral- up_integral)/nominal_integral 
            down_percent = 100 * abs(nominal_integral- down_integral)/nominal_integral
            print  "Integral for "+ signal + "     " + shape
            t = PrettyTable(['Down ', 'Nominal', 'Up'])
            t.add_row([down_integral, nominal_integral, up_integral])
            t.add_row(['% change', 0               , '% change'])
            t.add_row([down_percent , 0               , up_percent])
            print(t)
            print "\n"
            
        except:
            print  "check this {}  {}".format(sample, shape)




if __name__=="__main__":
    get_syst('etau')


