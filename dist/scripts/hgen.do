clear 
version 13

/* START ah11 */
use $output/ah.dta, clear
egen ah11 = mean(ah10)
label variable ah11 "Durchschnittsnettoeinkommen"
keep AHHNR ah11
saveold $temp/ah11.dta, replace
/* END ah11*/

/* START ah12 */
use $output/ap.dta, clear
bysort AHHNR: egen pers = count(PERSNR) 
merge m:1 AHHNR using $output/ah.dta
gen ah12 = pers + ah02
label variable ah12 "Haushaltsgr??e"
keep AHHNR ah12
saveold $temp/ah12.dta, replace
/* END ah12 */ 

/* START ahgen.dta */
use $temp/ah11.dta
merge m:m AHHNR using $temp/ah12.dta, nogenerate
bysort AHHNR : keep if _n == 1
saveold $output/ahgen.dta, replace
/* END ahgen */

********************************************************************************

/* START bh11 */
use $output/bh.dta, clear
egen bh11 = mean(bh10)
label variable bh11 "Durchschnittsnettoeinkommen"
keep BHHNR bh11
saveold $temp/bh11.dta, replace
/* END bh11 */


/* START bh12 */
use $output/bp.dta, clear
bysort BHHNR: egen pers = count(PERSNR)
merge m:1 BHHNR using $output/bh.dta
gen bh12 = pers + bh02
label variable bh12 "Haushaltsgröße"
keep BHHNR bh12
saveold $temp/bh12.dta, replace
/* END bh12 */

/* START bhgen.dta */
use $temp/bh11.dta
merge m:m BHHNR using $temp/bh12.dta, nogenerate
bysort BHHNR : keep if _n == 1
saveold $output/bhgen.dta, replace
/* END bhgen.dta */


********************************************************************************

/* START ch11 */
use $output/ch.dta, clear
egen ch11 = mean(ch10)
label variable ch11 "Durchschnittsnettoeinkommen"
keep CHHNR ch11
saveold $temp/ch11.dta, replace
/* END ch11 */

/* START ch12 */
use $output/cp.dta, clear
bysort CHHNR: egen pers = count(PERSNR)
merge m:m CHHNR using $output/ch.dta
gen ch12 = pers + ch02
label variable ch12 "Haushaltsgröße"
keep CHHNR ch12
saveold $temp/ch12.dta, replace
/* END ch12 */

/* START chgen.dta */
use $temp/ch11.dta
merge m:m CHHNR using $temp/ch12.dta, nogenerate
bysort CHHNR : keep if _n == 1
saveold $output/chgen.dta, replace
/* END chgen.dta */
