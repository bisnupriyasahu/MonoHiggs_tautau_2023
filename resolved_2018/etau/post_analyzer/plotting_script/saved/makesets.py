

slist = []
with open('flist') as infile:
    for sample in infile:
        sample = sample.strip()
        #writeString=""" '{s}' : ['{s}' , '{s}' , '0' ],""".format(s=sample)
        slist.append( 'signal_'+sample   )
        #print(writeString)


print slist
