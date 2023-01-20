import ROOT


fw = ROOT.TFile("sf_files/htt_scalefactors_legacy_2018.root")
w =  fw.Get("w")



weight_set = {}
for pt in range(0, 151):
    for mass in range(0, 151):
        w.var("z_gen_pt").setVal(pt)
        w.var("z_gen_mass").setVal(mass)
        weight = w.function("zptmass_weight_nom").getVal()
        #weight_set.add(weight)
        weight_set[(pt, mass)] = weight
            


print "weight = " , weight_set
