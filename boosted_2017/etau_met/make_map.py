

f_samples = open('samples.txt', 'r')
f_trg = open('trg_files', 'r')

sample_lines = f_samples.readlines()
trg_lines = f_trg.readlines()

for sample in sample_lines:
    sample = sample.strip().split(' ')[1]
    for trg_line in trg_lines:
        trg_line = trg_line.strip().replace('.root', '')
        if trg_line in sample and trg_line.split('_')[0]== sample.split('_')[0]:
            if '_ext' in trg_line and '_ext' in sample:
                print(""" {{"{}", "{}"}}, """.format(sample, trg_line+'.root'))
            elif '_ext' not in trg_line and '_ext' not in sample:
                print(""" {{"{}", "{}"}}, """.format(sample, trg_line+'.root'))
            
            
            

f_samples = open('samples_signal.txt', 'r')
f_trg = open('trg_files', 'r')

sample_lines = f_samples.readlines()
trg_lines = f_trg.readlines()

for sample in sample_lines:
    idx = sample.strip().split(' ')[1].split('_')[-1]
    sample = sample.strip().split(' ')[1]
    for trg_line in trg_lines:
        trg_line = trg_line.strip().replace('.root', '')
        if trg_line == 'Signal_ZpBaryonic2017_'+idx:
            print(""" {{"{}", "{}"}}, """.format(sample, trg_line+'.root'))