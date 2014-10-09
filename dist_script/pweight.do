clear
version 13

/* START pweight */

use dist/ap.dta, clear
bysort ap01: gen sex = _N
gen sexequal = _N/2
gen weight1 = sexequal/sex
label variable weight1 "pweight 2001"
keep PERSNR weight1
saveold temp/weight1.dta, replace

use dist/bp.dta, clear
bysort bp01: gen sex = _N
gen sexequal = _N/2
gen weight2 = sexequal/sex
label variable weight2 "pweight 2002"
keep PERSNR weight2
saveold temp/weight2.dta, replace

use dist/cp.dta, clear
bysort cp01: gen sex = _N
gen sexequal = _N/2
gen weight3 = sexequal/sex
label variable weight3 "pweight 2003"
keep PERSNR weight3
saveold temp/weight3.dta, replace

use temp/weight1.dta, clear
merge m:m PERSNR using temp/weight2.dta, nogenerate
saveold temp/weight12.dta, replace
use temp/weight12.dta, clear
merge m:m PERSNR using temp/weight3.dta, nogenerate
saveold dist/pweight.dta, replace
/* END pweight */
