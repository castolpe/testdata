/* START ah11 */
use out/ah.dta, clear
egen ah11 = mean(ah10)
label variable ah11 "Durchschnittsnettoeinkommen"
keep ahhnr ah11
save tmp/ah11.dta, replace
/* END ah11*/

/* START ah12 */
use out/ap.dta, clear
bysort ahhnr: egen pers = count(persnr) 
merge m:1 ahhnr using out/ah.dta
gen ah12 = pers + ah02
label variable ah12 "Haushaltsgröße"
keep ahhnr ah12
save tmp/ah12.dta, replace
/* END ah12 */ 

/* START ahgen.dta */
use tmp/ah11.dta
merge m:m ahhnr using tmp/ah12.dta, nogenerate
bysort ahhnr : keep if _n == 1
save out/ahgen.dta, replace
/* END ahgen */
