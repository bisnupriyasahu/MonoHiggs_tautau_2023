import os
import subprocess
import argparse
parser = argparse.ArgumentParser()
parser.add_argument("--verbose", help="increase output verbosity",
                    action="store_true")
parser.add_argument("-rd", help="print REDIGI files",
                    action="store_true")
parser.add_argument("-aod", help="print AOD files",
                    action="store_true")
parser.add_argument("-mini", help="print Miniaod files",
                    action="store_true")
args = parser.parse_args()
if args.verbose:
    print("verbosity turned on")



def retreive_xsec(cmd):
    i = 1
    nfile = '-000'+str(i)
    while i<10:
        #print 'checking  -000',i
        try :
            output = subprocess.check_output(cmd, shell=True, universal_newlines=True)
            #print('.............from ............\n', cmd)
            return output
        except:
            nfile = '-000'+str(i)
            i += 1
            nfile_next = '-000'+str(i)
            cmd = cmd.replace(nfile, nfile_next)
            continue
            #return subprocess.check_output(cmd, shell=True, universal_newlines=True)
    print('.............from ............\n', cmd, '.......................')
    

def get_xsec():
    """
    sample command:
    grep Overall cross-section summary /nfs_scratch/ms/gensim_2017_2/submit_2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_200_MH4_100_MH2_200_MHC_200/submit_2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_200_MH4_100_MH2_200_MHC_200-0001/submit_2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_200_MH4_100_MH2_200_MHC_200-0001.out  -A 3 

    """
    parent = '/nfs_scratch/ms/gensim_2018/'
    os.popen('ls '+parent+'* -d > sample_list.txt')

    print('Parent dir -- '+parent)
    with open('sample_list.txt', 'r') as samplefile:
        for sample in samplefile:
            sample = sample.rstrip().split('/')[-1]
            commandtoexecute = 'grep "Overall cross-section summary" /nfs_scratch/ms/gensim_2018/{sample}/{sample}-0001/{sample}-0001.out  -A 3'.format(sample=sample)
            print(sample)
            print(retreive_xsec(commandtoexecute))
            #print('In {} , \n {}'.format(sample, output))



get_xsec()
