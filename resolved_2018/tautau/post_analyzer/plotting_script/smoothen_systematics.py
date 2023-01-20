import ROOT
from fix_systematic_shape import fix_shapes

def GetKeyNames( self, dir = "" ):
    self.cd(dir)
    return [key.GetName() for key in ROOT.gDirectory.GetListOfKeys()]
ROOT.TFile.GetKeyNames = GetKeyNames


def fix_shapes(nom_hist, hist_up, hist_dn):
    from scipy import signal
    smooth_up = []
    smooth_dn = []
    smooth_nom = []    
    for ibin in range(1, nom_hist.GetNbinsX()+1):
        smooth_nom.append(nom_hist.GetBinContent(ibin))
        smooth_up.append(hist_up.GetBinContent(ibin) / nom_hist.GetBinContent(ibin) )
        smooth_dn.append(hist_dn.GetBinContent(ibin) / nom_hist.GetBinContent(ibin) )

    smooth_up = signal.savgol_filter(smooth_up,
                                    5, # window size used for filtering
                                    1), # order of fitted polynomial
        
    smooth_dn = signal.savgol_filter(smooth_dn,
                                    5, # window size used for filtering
                                    1), # order of fitted polynomial
    
    smooth_up = smooth_up[0]
    smooth_dn = smooth_dn[0]
    for ibin in range(1, nom_hist.GetNbinsX()+1):
        average = (abs(smooth_up[ibin-1]* smooth_nom[ibin-1] - smooth_nom[ibin-1]) + abs(smooth_dn[ibin-1]* smooth_nom[ibin-1] - smooth_nom[ibin-1]))/2
        smooth_up[ibin-1] = smooth_nom[ibin-1] + average
        smooth_dn[ibin-1] = smooth_nom[ibin-1] - average
    

    hist_up = hist_up.Clone("up")
    hist_dn = hist_dn.Clone("dn")    
    
    cutoff = 0.15
    print(cutoff)
    for ibin in range(1, nom_hist.GetNbinsX()+1):
        hist_up.SetBinContent(ibin, min(smooth_nom[ibin-1]*(1+cutoff), smooth_up[ibin-1]))
        hist_dn.SetBinContent(ibin, max(smooth_nom[ibin-1]*(1-cutoff), smooth_dn[ibin-1]))
    
    return hist_up, hist_dn


def get_shapes(file_name, channel):
    inFile=ROOT.TFile(filename, "update")
    dir_name = channel
    keylist = inFile.GetKeyNames(dir_name)
    hist_dict = {}
    for hname in keylist:
        if 'data' in hname :
            continue
        
        thist = hname.replace('Up', '')
        thist = thist.replace('Down', '')
        thist = thist.split('_')
        sample_name = ''
        shape_name = ''
        if 'MZp' in thist:
            sample_name = '_'.join(thist[:5])
            shape_name = '_'.join(thist[5:])
        elif '2HDMa' in thist:
            sample_name = '_'.join(thist[:13])
            shape_name = '_'.join(thist[13:])
        else:
            sample_name = thist[0]
            if len(thist) == 1:
                continue
            else:
                shape_name = '_'.join(thist[1:])
        if sample_name not in hist_dict:
            hist_dict[sample_name] = [shape_name]
        else:
            hist_dict[sample_name].append(shape_name)

    inFile.cd(dir_name)
    for k, v in hist_dict.items():
        inFile.cd(dir_name)
        for shape in v:
            if shape == '' :
                continue
            print(v)
            hist_nom = inFile.Get(dir_name+'/'+k)
            hist_up = inFile.Get(dir_name+'/'+k+'_'+shape+'Up')
            hist_dn = inFile.Get(dir_name+'/'+k+'_'+shape+'Down')
            print('-'*20)
            print(dir_name+'/'+k+'_'+shape+'Up')
            print(type(hist_nom), type(hist_up), type(hist_dn))
            hist_up, hist_dn = fix_shapes(hist_nom, hist_up, hist_dn)
            hist_up.SetName(k+'_'+shape+'Up')
            hist_dn.SetName(k+'_'+shape+'Down')
            hist_up.Write()
            hist_dn.Write()
        
        
if __name__=="__main__":
    
    channel = "tautau"
    filename = channel+'.root'
    get_shapes(filename, channel)


