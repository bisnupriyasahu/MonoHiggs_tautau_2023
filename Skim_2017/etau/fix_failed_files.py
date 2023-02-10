


# /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraB_0000/Ntuple_data2017_MET_EraB_286.root
# /hdfs/store/user/jmadhusu/data2017_31Mar2018_27Aug2022/MET/crab_job_MET_EraB/220919_005522/0000/Ntuple_data2017_MET_EraB_286.root

era_map = {
'B':
'220919_005522',

'C':
'220919_005551',

'D':
'220919_005620',

'E':
'220919_005648',

'F':
'220919_005716',
}



fin = open('failed_files.txt', 'r')
fout = open('run_fix.sh', 'w')

sources = {}
lines = fin.readlines()
for iline, line in enumerate(lines):
    line = line.strip()
    print(line)
    destination = '/'.join(line.split('/')[:-1])
    file_name = line.split('/')[-1]
    era = file_name.split('_')[3].replace('Era', '')
    idx = line.split('/')[-2].split('_')[-1]
    source_file = '/hdfs/store/user/jmadhusu/data2017_31Mar2018_27Aug2022/MET/crab_job_MET_Era'+era+'/'+era_map[era]+'/'+idx+'/'+file_name
    print(source_file)
    print()
    sources[iline] = [source_file, destination+'/']


heading_script = "./rootcom skimm_mt_2017 analyze_mutau"
out_string = "./analyze_mutau {infile} {outfile} -1 1000 2017 MC {sample_name}"

fout.write(heading_script +' \n\n')
for k,v in sources.items():
    line = v[0]
    infile = line
    outfile = line.split('/')[-1]
    sample_name = outfile.replace('.root', '')
    fout.write(out_string.format(infile=infile, outfile=outfile, sample_name=sample_name)+' \n')
    fout.write('mv '+outfile+' '+v[1]+' \n')

fout.close()


    
