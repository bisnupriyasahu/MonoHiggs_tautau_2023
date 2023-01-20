


infile_name = 'zpt.txt'
infile = open(infile_name,'r')


max_zpt = -1000000
min_zpt = 1000000

res = []
for line in infile:
    line = line.strip()
    line = line.split()
    if 'zpt' in line[0]:
        #print(line)
        value = float(line[1])
        res.append(value)
        if value > max_zpt : 
            max_zpt = value
        elif value < min_zpt : 
            min_zpt = value



print(min_zpt, max_zpt)
print(min(res) , max(res) )

mean = sum(res) / len(res)
variance = sum([((x - mean) ** 2) for x in res]) / len(res)
stddev = variance ** 0.5
  
# Printing result
print "Mean = ", str(mean)
print "Standard deviation = " + str(stddev)
print "minimum = " + str(min(res))
print "maximum = " + str(max(res))
