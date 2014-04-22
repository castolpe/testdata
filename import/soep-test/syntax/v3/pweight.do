/* START_GEN pweight CODE */
use data/ap.dta, clear
bysort ap01: gen sex = _N
gen sexequal = _N/2
gen weight1 = sexequal/sex
label variable weight1 "pweight 2001"
keep PERSNR weight1
save tmp/weight1.dta, replace

use data/bp.dta, clear
bysort bp01: gen sex = _N
gen sexequal = _N/2
gen weight2 = sexequal/sex
label variable weight2 "pweight 2002"
keep PERSNR weight2
save tmp/weight2.dta, replace

use data/cp.dta, clear
bysort cp01: gen sex = _N
gen sexequal = _N/2
gen weight3 = sexequal/sex
label variable weight3 "pweight 2003"
keep PERSNR weight3
save tmp/weight3.dta, replace

use tmp/weight1.dta, clear
merge m:m PERSNR using tmp/weight2.dta, nogenerate
save tmp/weight12.dta, replace


use tmp/weight12.dta, clear
merge m:m PERSNR using tmp/weight3.dta, nogenerate
save output/pweight.dta, replace
/* END_GEN pweight */
