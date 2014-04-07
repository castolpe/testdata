/* START bh11 */
use out/bh.dta, clear
egen bh11 = mean(bh10)
label variable bh11 "Durchschnittsnettoeinkommen"
keep bhhnr bh11
save tmp/bh11.dta, replace
/* END bh11 */

/* START bh12 */
use out/bp.dta, clear
bysort bhhnr: egen pers = count(persnr) 
merge m:1 bhhnr using out/bh.dta
gen bh12 = pers + bh02
label variable bh12 "Haushaltsgröße"
keep bhhnr bh12
save tmp/bh12.dta, replace
/* END bh12 */

/* START bhgen.dta */
use tmp/bh11.dta
merge m:m bhhnr using tmp/bh12.dta, nogenerate
bysort bhhnr : keep if _n == 1
save out/bhgen.dta, replace
/* END bhgen.dta */
