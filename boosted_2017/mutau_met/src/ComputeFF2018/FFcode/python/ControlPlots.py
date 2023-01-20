#!/usr/bin/env python

import argparse
import os
import ComputeFF2018.FFcode.Subtract_prompt as Subtract_prompt
import ComputeFF2018.FFcode.Subtract_prompt_tt as Subtract_prompt_tt
import ComputeFF2018.FFcode.Create_fake_tt as Create_fake_tt

def ControlPlots(args):
    #figure out where to find our files
    if args.year == "2016":
        if args.channel == "mt":
            path = '/data/ccaillol/smhmt2016_svfitted_12oct/'
        if args.channel == "et":
            path = '/data/ccaillol/smhet2016_svfitted_12oct/'
        if args.channel == "tt":
            path = '/data/ccaillol/smhtt2016_12oct/'
    elif args.year == "2017":
        if args.channel == "mt":
            path = '/data/ccaillol/smhmt2017_svfitted_12oct/'
        if args.channel == "et":
            path = '/data/ccaillol/smhet2017_svfitted_12oct/'
        if args.channel == "tt":
            path = '/data/ccaillol/smhtt2017_12oct/'
    elif args.year == "2018":
        if args.channel == "mt":
            path = '/data/ccaillol/smhmt2018_svfitted_12oct/'
        if args.channel == "et":
            path = '/data/ccaillol/smhet2018_svfitted_12oct/'
        if args.channel == "tt":
            path = '/data/ccaillol/smhtt2018_12oct/'
    #figure out our executable and our output directory
    if args.channel == 'mt':
        executable = "ControlPlots_mt"
        outputPath = os.environ['CMSSW_BASE']+'/src/ComputeFF2018/files_control_mt/'
    elif args.channel == 'et':
        executable = "ControlPlots_et"
        outputPath = os.environ['CMSSW_BASE']+'/src/ComputeFF2018/files_control_et/'
    elif args.channel == 'tt':
        executable = "ControlPlots_tt"
        outputPath = os.environ['CMSSW_BASE']+'/src/ComputeFF2018/files_control_tt/'

    #define the commands and arguments to be run.
    if args.year == '2018':
        commandParams = [
            [executable,path+'DataA.root',outputPath+'DataA.root','data_obs','data_obs',args.year],
            [executable,path+'DataB.root',outputPath+'DataB.root','data_obs','data_obs',args.year],
            [executable,path+'DataC.root',outputPath+'DataC.root','data_obs','data_obs',args.year],
            [executable,path+'DataD.root',outputPath+'DataD.root','data_obs','data_obs',args.year],
            [executable,path+'DY.root',outputPath+'DYincl.root','DY','DY',args.year],
            [executable,path+'DY1.root',outputPath+'DY1.root','DY','DY',args.year],
            [executable,path+'DY2.root',outputPath+'DY2.root','DY','DY',args.year],
            [executable,path+'DY3.root',outputPath+'DY3.root','DY','DY',args.year],
            [executable,path+'DY4.root',outputPath+'DY4.root','DY','DY',args.year],
            [executable,path+'TTToHadronic.root',outputPath+'TTToHadronic.root','TTToHadronic','TT',args.year],
            [executable,path+'TTTo2L2Nu.root',outputPath+'TTTo2L2Nu.root',' TTTo2L2Nu','TT',args.year],
            [executable,path+'TTToSemiLeptonic.root',outputPath+'TTToSemiLeptonic.root','TTToSemiLeptonic','TT',args.year],
            [executable,path+'WW.root',outputPath+'WW.root','WW','VV',args.year],
            [executable,path+'WZ.root',outputPath+'WZ.root','WZ','VV',args.year],
            [executable,path+'ZZ.root',outputPath+'ZZ.root','ZZ','VV',args.year],
            [executable,path+'ST_t_antitop.root',outputPath+'ST_t_antitop.root','ST_t_antitop','ST',args.year],
            [executable,path+'ST_t_top.root',outputPath+'ST_t_top.root','ST_t_top','ST',args.year],
            [executable,path+'ST_tW_antitop.root',outputPath+'ST_tW_antitop.root','ST_tW_antitop','ST',args.year],
            [executable,path+'ST_tW_top.root',outputPath+'ST_tW_top.root','ST_tW_top','ST',args.year],
        ]
        if args.channel == "et" or args.channel=="mt":
            commandParams.append([executable,path+'Wall.root',outputPath+'W.root','W','W',args.year])
        haddFiles = {
            "Data.root": [outputPath+"DataA.root",outputPath+"DataB.root",outputPath+"DataC.root",outputPath+"DataD.root"],
            "DY.root": [outputPath+"DYincl.root",outputPath+"DY1.root",outputPath+"DY2.root",outputPath+"DY3.root",outputPath+"DY4.root"],
            "TT.root": [outputPath+"TTToHadronic.root",outputPath+"TTToSemiLeptonic.root",outputPath+"TTTo2L2Nu.root"],
            "VV.root": [outputPath+"WW.root",outputPath+"WZ.root",outputPath+"ZZ.root",outputPath+"ST_t_antitop.root",outputPath+"ST_t_top.root",outputPath+"ST_tW_antitop.root",outputPath+"ST_tW_top.root"]
        }
    elif args.year == '2017':
        commandParams = [
            [executable,path+'DataB.root',outputPath+'DataB.root','data_obs','data_obs',args.year],
            [executable,path+'DataC.root',outputPath+'DataC.root','data_obs','data_obs',args.year],
            [executable,path+'DataD.root',outputPath+'DataD.root','data_obs','data_obs',args.year],
            [executable,path+'DataE.root',outputPath+'DataE.root','data_obs','data_obs',args.year],
            [executable,path+'DataF.root',outputPath+'DataF.root','data_obs','data_obs',args.year],
            [executable,path+'DY.root',outputPath+'DYincl.root','DY','DY',args.year],
            [executable,path+'DY1.root',outputPath+'DY1.root','DY','DY',args.year],
            [executable,path+'DY2.root',outputPath+'DY2.root','DY','DY',args.year],
            [executable,path+'DY3.root',outputPath+'DY3.root','DY','DY',args.year],
            [executable,path+'DY4.root',outputPath+'DY4.root','DY','DY',args.year],
            [executable,path+'TTToHadronic.root',outputPath+'TTToHadronic.root','TTToHadronic','TT',args.year],
            [executable,path+'TTTo2L2Nu.root',outputPath+'TTTo2L2Nu.root',' TTTo2L2Nu','TT',args.year],
            [executable,path+'TTToSemiLeptonic.root',outputPath+'TTToSemiLeptonic.root','TTToSemiLeptonic','TT',args.year],
            [executable,path+'WW.root',outputPath+'WW.root','WW','VV',args.year],
            [executable,path+'WZ.root',outputPath+'WZ.root','WZ','VV',args.year],
            [executable,path+'ZZ.root',outputPath+'ZZ.root','ZZ','VV',args.year],
            [executable,path+'ST_t_antitop.root',outputPath+'ST_t_antitop.root','ST_t_antitop','ST',args.year],
            [executable,path+'ST_t_top.root',outputPath+'ST_t_top.root','ST_t_top','ST',args.year],
            [executable,path+'ST_tW_antitop.root',outputPath+'ST_tW_antitop.root','ST_tW_antitop','ST',args.year],
            [executable,path+'ST_tW_top.root',outputPath+'ST_tW_top.root','ST_tW_top','ST',args.year],
            ]
        if args.channel == "et" or args.channel=="mt":
            commandParams.append([executable,path+'Wall.root',outputPath+'W.root','W','W',args.year])
        haddFiles={
            'Data.root': [outputPath+'DataB.root',outputPath+'DataC.root',outputPath+'DataD.root',outputPath+'DataE.root',outputPath+'DataF.root'],
            "DY.root": [outputPath+"DYincl.root",outputPath+"DY1.root",outputPath+"DY2.root",outputPath+"DY3.root",outputPath+"DY4.root"],
            "TT.root": [outputPath+"TTToHadronic.root",outputPath+"TTToSemiLeptonic.root",outputPath+"TTTo2L2Nu.root"],
            "VV.root": [outputPath+"WW.root",outputPath+"WZ.root",outputPath+"ZZ.root",outputPath+"ST_t_antitop.root",outputPath+"ST_t_top.root",outputPath+"ST_tW_antitop.root",outputPath+"ST_tW_top.root"]
            }
    elif args.year == '2016':
        commandParams = [
            [executable,path+'DataB.root',outputPath+'DataB.root','data_obs','data_obs',args.year],
            [executable,path+'DataC.root',outputPath+'DataC.root','data_obs','data_obs',args.year],
            [executable,path+'DataD.root',outputPath+'DataD.root','data_obs','data_obs',args.year],
            [executable,path+'DataE.root',outputPath+'DataE.root','data_obs','data_obs',args.year],
            [executable,path+'DataF.root',outputPath+'DataF.root','data_obs','data_obs',args.year],
            [executable,path+'DataG.root',outputPath+'DataG.root','data_obs','data_obs',args.year],
            [executable,path+'DataH.root',outputPath+'DataH.root','data_obs','data_obs',args.year],
            [executable,path+'DY.root',outputPath+'DYincl.root','DY','DY',args.year],
            [executable,path+'DY1.root',outputPath+'DY1.root','DY','DY',args.year],
            [executable,path+'DY2.root',outputPath+'DY2.root','DY','DY',args.year],
            [executable,path+'WW.root',outputPath+'WW.root','WW','VV',args.year],
            [executable,path+'WZ.root',outputPath+'WZ.root','WZ','VV',args.year],
            [executable,path+'ZZ.root',outputPath+'ZZ.root','ZZ','VV',args.year],
            [executable,path+'ST_t_antitop.root',outputPath+'ST_t_antitop.root','ST_t_antitop','ST',args.year],
            [executable,path+'ST_t_top.root',outputPath+'ST_t_top.root','ST_t_top','ST',args.year],
            [executable,path+'ST_tW_antitop.root',outputPath+'ST_tW_antitop.root','ST_tW_antitop','ST',args.year],
            [executable,path+'ST_tW_top.root',outputPath+'ST_tW_top.root','ST_tW_top','ST',args.year],
            [executable,path+'ggH125.root',outputPath+'ggH_htt125.root','ggH_htt125','ggH_htt125',args.year],
            ]
        if args.channel=="mt" or args.channel=="et":
            commandParams.append([executable,path+'Wall.root',outputPath+'W.root','W','W',args.year])
        if args.channel == "mt":
            commandParams.append([executable,'/data/aloeliger/SMHTT/smhmt2016_svfitted_25aug/DY3.root',outputPath+'DY3.root','DY','DY',args.year])
            commandParams.append([executable,'/data/aloeliger/SMHTT/smhmt2016_svfitted_25aug/DY4.root',outputPath+'DY4.root','DY','DY',args.year])
            commandParams.append([executable,'/data/aloeliger/SMHTT/smhmt2016_svfitted_25aug/TT.root',outputPath+'TT.root','TT','TT',args.year])
        elif args.channel == "et" or args.channel=="tt":
            commandParams.append([executable,path+'DY3.root',outputPath+'DY3.root','DY','DY',args.year])
            commandParams.append([executable,path+'DY4.root',outputPath+'DY4.root','DY','DY',args.year])
            commandParams.append([executable,path+'TT.root',outputPath+'TT.root','TT','TT',args.year])
        haddFiles ={
            'Data.root': [outputPath+'DataB.root',outputPath+'DataC.root',outputPath+'DataD.root',outputPath+'DataE.root',outputPath+'DataF.root',outputPath+'DataG.root',outputPath+'DataH.root'],
            "DY.root": [outputPath+"DYincl.root",outputPath+"DY1.root",outputPath+"DY2.root",outputPath+"DY3.root",outputPath+"DY4.root"],
            "VV.root": [outputPath+"WW.root",outputPath+"WZ.root",outputPath+"ZZ.root",outputPath+"ST_t_antitop.root",outputPath+"ST_t_top.root",outputPath+"ST_tW_antitop.root",outputPath+"ST_tW_top.root"]
            }
    #Run all sets
    for command in commandParams:
        commandString = ''
        for element in command:
            commandString+=element+' '
        os.system(commandString)
    #hadd them
    for haddedFile in haddFiles:
        haddCommand = "hadd -f "+outputPath+haddedFile+' '
        for inputFile in haddFiles[haddedFile]:
            haddCommand+=inputFile+' '
        os.system(haddCommand)

    ##create the fake file
    #fakeCommand="Create_fake_tt.py --directory files_control_tt"
    #os.system(fakeCommand)
    Create_fake_tt.Create_fake_tt(outputPath)

    #make the final control file
    finalFFCommand = 'hadd -f control_'+args.channel+'.root '
    finalFFCommand+=outputPath+'Data.root '
    finalFFCommand+=outputPath+'DY.root '    
    if args.channel=="et" or args.channel=="mt":
      finalFFCommand+=outputPath+"W.root "
    finalFFCommand+=outputPath+'TT.root '
    finalFFCommand+=outputPath+'VV.root '
    finalFFCommand+=outputPath+'Fake.root '
    os.system(finalFFCommand)
if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Master control plots making script")
    parser.add_argument('--channel','-c',nargs="?",choices=['mt','et','tt'],help="Which channel?",required=True)
    parser.add_argument('--year','-y',nargs="?",choices=["2016","2017","2018"],help="Which year?",required=True)

    args=parser.parse_args()
    ControlPlots(args)
