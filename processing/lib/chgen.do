/* START ch11 */
use out/ch.dta, clear
egen ch11 = mean(ch10)
label variable ch11 "Durchschnittsnettoeinkommen"
keep chhnr ch11
save tmp/ch11.dta, replace
/* END ch11 */

/* START ch12 */
use out/cp.dta, clear
bysort chhnr: egen pers = count(persnr) 
merge m:m chhnr using out/ch.dta
gen ch12 = pers + ch02
label variable ch12 "Haushaltsgröße"
keep chhnr ch12
save tmp/ch12.dta, replace
/* END ch12 */

/* START bhgen.dta */
use tmp/ch11.dta
merge m:m chhnr using tmp/ch12.dta, nogenerate
bysort chhnr : keep if _n == 1
save out/chgen.dta, replace
/* END bhgen.dta */
