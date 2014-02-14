/* START ah11 */
use data/ah.dta, clear
egen ah11 = mean(ah10)
label variable ah11 "Durchschnittsnettoeinkommen"
keep AHHNR ah11
save tmp/ah11.dta, replace
/* END ah11*/

/* START ah12 */
use data/ap.dta, clear
bysort AHHNR: egen pers = count(PERSNR) 
merge m:1 AHHNR using data/ah.dta
gen ah12 = pers + ah02
label variable ah12 "Haushaltsgröße"
keep AHHNR ah12
save tmp/ah12.dta, replace
/* END ah12 */ 

/* START ahgen.dta */
use tmp/ah11.dta
merge m:m AHHNR using tmp/ah12.dta, nogenerate
bysort AHHNR : keep if _n == 1
save output/ahgen.dta, replace
/* END ahgen */
