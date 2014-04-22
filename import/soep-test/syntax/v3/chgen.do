/* START_GEN ch11 CODE */
use data/ch.dta, clear
egen ch11 = mean(ch10)
label variable ch11 "Durchschnittsnettoeinkommen"
keep CHHNR ch11
save tmp/ch11.dta, replace
/* END_GEN ch11 */

/* START_GEN ch12 CODE */
use data/cp.dta, clear
bysort CHHNR: egen pers = count(PERSNR) 
merge m:m CHHNR using data/ch.dta
gen ch12 = pers + ch02
label variable ch12 "Haushaltsgröße"
keep CHHNR ch12
save tmp/ch12.dta, replace
/* END_GEN ch12 */

/* START_GEN bhgen.dta CODE */
use tmp/ch11.dta
merge m:m CHHNR using tmp/ch12.dta, nogenerate
bysort CHHNR : keep if _n == 1
save output/chgen.dta, replace
/* END_GEN bhgen.dta */
