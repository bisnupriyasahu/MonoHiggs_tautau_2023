
import ROOT
from os import path, listdir
import csv




def GetKeyNames( self, dir = "" ):
    self.cd(dir)
    return [key.GetName() for key in ROOT.gDirectory.GetListOfKeys()]
ROOT.TFile.GetKeyNames = GetKeyNames

mc_samples = ['ZTTjet', 'ZLLjet', 'TT', 'otherMC', 'STT', 'VVT']

def get_integral():

    outfile = open('event_count.csv', 'a')
    outfile_writer = csv.writer(outfile, delimiter=',')
    
    outfile_writer.writerow(['channel', 'mutau'])
    outfile_writer.writerow(['Sample name', 'events'])
    
    infile_name = "f_tot_TMass_full_initial.root"
    infile = ROOT.TFile(infile_name, "READ")
    
    #tot_TMass_full_9
    rootdir = 'tot_TMass_full_9'
    keyList = infile.GetKeyNames(rootdir)
    print keyList
    #for h in keyList:
    for h in mc_samples:
        tmp = infile.Get(rootdir+'/'+ h + '_tot_TMass_full_9')
        print tmp.Integral()
        outfile_writer.writerow([h , round(tmp.Integral(), 3) ])
    for h in sorted(keyList):
        if 'MZp' in h or '2HDM' in h:
            tmp = infile.Get(rootdir+'/'+ h )
            print tmp.Integral()
            save_name = h.replace('_tot_TMass_full_9', '')
            outfile_writer.writerow([h , round(tmp.Integral(), 3) ])


if __name__ == '__main__':
    get_integral()
