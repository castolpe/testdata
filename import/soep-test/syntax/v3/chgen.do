/* START ch11 */
use data/ch.dta, clear
egen ch11 = mean(ch10)
label variable ch11 "Durchschnittsnettoeinkommen"
keep CHHNR ch11
save tmp/ch11.dta, replace
/* END ch11 */

/* START ch12 */
use data/cp.dta, clear
bysort CHHNR: egen pers = count(PERSNR) 
merge m:m CHHNR using data/ch.dta
gen ch12 = pers + ch02
label variable ch12 "Haushaltsgröße"
keep CHHNR ch12
save tmp/ch12.dta, replace
/* END ch12 */

/* START bhgen.dta */
use tmp/ch11.dta
merge m:m CHHNR using tmp/ch12.dta, nogenerate
bysort CHHNR : keep if _n == 1
save output/chgen.dta, replace
/* END bhgen.dta */
