import math




event = 100
err_arr = [ 0.05, 0.05, 0.05, 0.05, 0.05 ]


up_arr = []
dn_arr = []
for err in err_arr:
    nEvents = event
    up = event * (1+err)
    dn = event * (1-err)
    print "nominal = {} , up = {} , dn = {} ".format(nEvents, up, dn)
    up = up/nEvents
    dn = dn/nEvents
    up_arr.append(up)
    dn_arr.append(dn)


print up_arr , dn_arr
print 'up_new  = ', [unc**2 for unc in up_arr]
up_new = 1+ math.sqrt( sum( unc**2 for unc in up_arr) )
dn_new = 1- math.sqrt( sum( unc**2 for unc in dn_arr) )
print up_new
print dn_new 
print 'finally ' , event + up_new , event + dn_new



print math.sqrt(5) * 1.05


