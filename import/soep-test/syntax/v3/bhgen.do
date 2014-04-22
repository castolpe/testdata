/* START_GEN bh11 CODE */
use data/bh.dta, clear
egen bh11 = mean(bh10)
label variable bh11 "Durchschnittsnettoeinkommen"
keep BHHNR bh11
save tmp/bh11.dta, replace
/* END_GEN bh11 */

/* START_GEN bh12 CODE */
use data/bp.dta, clear
bysort BHHNR: egen pers = count(PERSNR) 
merge m:1 BHHNR using data/bh.dta
gen bh12 = pers + bh02
label variable bh12 "Haushaltsgröße"
keep BHHNR bh12
save tmp/bh12.dta, replace
/* END_GEN bh12 */

/* START_GEN bhgen.dta CODE */
use tmp/bh11.dta
merge m:m BHHNR using tmp/bh12.dta, nogenerate
bysort BHHNR : keep if _n == 1
save output/bhgen.dta, replace
/* END_GEN bhgen.dta */
