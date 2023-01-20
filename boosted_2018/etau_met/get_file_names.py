

out_list = set()

with open('sample_list', encoding= 'unicode_escape') as f:
    text = f.read()
    # print(text)
    text = text.split('\n')
    for line in text:
        if 'Error' not in line:
            continue
        if '/hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/' in line:
            line = line.split(' ')
            line = [ x for x in line if '.root' in x]
            out_file_name = line[0]
            if ',' in out_file_name:
                out_file_name.replace(',', '')
            out_list.add(out_file_name)
            #print()
    
for f_to_check in out_list:
    print(f_to_check)