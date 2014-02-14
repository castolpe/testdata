/* START hweight */
use data/ah.dta, clear
merge 1:1 AHHNR using output/ahgen.dta, nogenerate
gen  hdist = . 
replace hdist = 3 if ah12 == 1
replace hdist = 3 if ah12 == 2
replace hdist = 3 if ah12 == 3
replace hdist = 1 if ah12 == 4
replace hdist = 1 if ah12 == 5
replace hdist = 1 if ah12 == 6
replace hdist = . if ah12 == .
bysort ah12: gen hnumber = _N
gen hweight1 = hdist/hnumber
label variable hweight1 "hweight 2001"
keep AHHNR hweight1
sort AHHNR
gen HHNR = _n
save tmp/hweight1.dta, replace

use output/bhgen.dta, clear
merge 1:1 BHHNR using output/bhgen.dta, nogenerate
gen  hdist = . 
replace hdist = 3 if bh12 == 1
replace hdist = 3 if bh12 == 2
replace hdist = 3 if bh12 == 3
replace hdist = 1 if bh12 == 4
replace hdist = 1 if bh12 == 5
replace hdist = 1 if bh12 == 6
replace hdist = . if bh12 == .
bysort bh12: gen hnumber = _N
gen hweight2 = hdist/hnumber
label variable hweight2 "hweight 2002"
keep BHHNR hweight2
sort BHHNR
gen HHNR = _n
save tmp/hweight2.dta, replace


use output/chgen.dta, clear
merge 1:1 CHHNR using output/chgen.dta, nogenerate
gen  hdist = . 
replace hdist = 4 if ch12 == 1
replace hdist = 2 if ch12 == 2
replace hdist = 3 if ch12 == 3
replace hdist = 1 if ch12 == 4
replace hdist = 2 if ch12 == 5
replace hdist = 1 if ch12 == 6
replace hdist = . if ch12 == .
bysort ch12: gen hnumber = _N
gen hweight3 = hdist/hnumber
label variable hweight3 "hweight 2003"
keep CHHNR hweight3
sort CHHNR
gen HHNR = _n
save tmp/hweight3.dta, replace


use tmp/hweight1.dta, clear
merge 1:1 HHNR  using tmp/hweight2.dta, nogenerate
save tmp/hweight12.dta, replace
use tmp/hweight12.dta, clear
merge 1:1 HHNR using tmp/hweight3.dta, nogenerate
keep HHNR hweight1 hweight2 hweight3
save output/hweight.dta, replace

/* END hweight */
