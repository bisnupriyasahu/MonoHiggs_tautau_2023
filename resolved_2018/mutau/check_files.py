

import os


os.popen('ls *.root > tmp.txt')

tmplist = []
with open('tmp.txt', 'r') as ftmp:
    for line in ftmp:
        line = line.rstrip()
        tmplist.append(line)

os.remove('tmp.txt')
#print(tmplist)


os.popen('ls output/*.root > tmp.txt')

with open('tmp.txt', 'r') as ftmp:
    for line in ftmp:
        line = line.rstrip()
        line = line.split('/')[1]
        if line  not in tmplist:
            print 'Extra file found ... ' , line  


os.remove('tmp.txt')
