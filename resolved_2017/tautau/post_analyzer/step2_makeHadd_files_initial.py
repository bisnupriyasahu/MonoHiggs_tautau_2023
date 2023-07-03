import os
from collections import OrderedDict

filelist=os.listdir("../output")
#filelist=os.listdir("../output_Nosys")
samplelist=[]

mapping = OrderedDict()
for x in sorted(filelist):
    #print x
    if '.root' not in x: continue
    if 'ZpBaryonic' in x or '2HDMa' in x :
        continue
    x = x.replace('.root', '')
    save_name = '_'.join(x.split('_')[:-1])
    if 'SingleElectron' in x:
        save_name = '_'.join(x.split('_')[:-1])
    if '2HDMa' in x or 'Zpbaryonic' in x:
        mapping[x] = [x+'.root']
    else:
        if save_name not in mapping:
            mapping[save_name] = [x+'.root']
        else:
            mapping[save_name].append(x+'.root')

for x in sorted(filelist):
    #print x
    if '.root' not in x: continue
    if 'ZpBaryonic' not in x :
        continue
    x = x.replace('.root', '')
    save_name = x.split('_')
    sp = save_name[-1]
    save_name = 'Signal_ZpBaryonic2017_'+sp
    if save_name not in mapping:
        mapping[save_name] = [x+'.root']
    else:
        mapping[save_name].append(x+'.root')
        
for x in sorted(filelist):
    #print x
    if '.root' not in x: continue
    if '2HDMa' not in x :
        continue
    x = x.replace('.root', '')
    save_name = x.split('_')
    sp = save_name[-1]
    save_name = 'Signal_'+x
    if save_name not in mapping:
        mapping[save_name] = [x+'.root']
    else:
        mapping[save_name].append(x+'.root')
        
               
for k, v in mapping.items():
    print (k, v)


outFile = open("hadd_files.sh", "w")
outFile.write(
"""
#!/bin/bash
set -e 

if [ "$(ls -A files_initial)" ]; then
echo "Take action files_initial/ is not Empty .... removing existing files ....."
rm files_initial/*.root
else
echo " files_initial/ is Empty"
fi

"""
)

for k,v in mapping.items():
    filestr = ''
    for files in v:
        #filestr += '../output_Nosys/'+files+' '
        filestr += '../output/'+files+' '
    outFile.write('hadd files_initial/{}_final.root {}\n'.format(k, filestr))

outFile.write(
"""

"""
)
print("""
output written to hadd_files.sh 
do  ' bash hadd_files.sh '
"""
)
outFile.close()
