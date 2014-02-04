cd C:/Users/lzhu/Desktop/Stata

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
/* END ap37 */


/* START bhgen.dta*/
use data/bh.dta, clear
egen bh11 = mean(bh10)
label variable bh11 "Durchschnittsnettoeinkommen"
keep BHHNR bh11
save tmp/bh11.dta, replace

use data/bp.dta, clear
bysort BHHNR: egen pers = count(PERSNR) 
merge m:1 BHHNR using data/bh.dta
gen bh12 = pers + bh02
label variable bh12 "Haushaltsgröße"
keep BHHNR bh12
save tmp/bh12.dta, replace

use tmp/bh11.dta
merge m:m BHHNR using tmp/bh12.dta, nogenerate
bysort BHHNR : keep if _n == 1
save output/bhgen.dta, replace
/* END bhgen.dta*/

/* START chgen.dta*/
use data/ch.dta, clear
egen ch11 = mean(ch10)
label variable ch11 "Durchschnittsnettoeinkommen"
keep CHHNR ch11
save tmp/ch11.dta, replace

use data/cp.dta, clear
bysort CHHNR: egen pers = count(PERSNR) 
merge m:m CHHNR using data/ch.dta
gen ch12 = pers + ch02
label variable ch12 "Haushaltsgröße"
keep CHHNR ch12
save tmp/ch12.dta, replace

use tmp/ch11.dta
merge m:m CHHNR using tmp/ch12.dta, nogenerate
bysort CHHNR : keep if _n == 1
save output/chgen.dta, replace
/* END chgen.dta*/


/* START ap37 numerisch*/
use data/ap.dta, clear
gen ap37 = ap36/(ap35/100)^2
label variable ap37 "BMI numeric"
keep PERSNR ap37
save tmp/ap37.dta, replace

/* START ap37 kategorial */
use tmp/ap37.dta, clear
gen  ap37k = . 
replace ap37k = 1 if ap37 < 15
replace ap37k = 2 if ap37 >=15 & ap37 < 16
replace ap37k = 3 if ap37 >=16 & ap37 < 18.5
replace ap37k = 4 if ap37 >=18.5 & ap37 < 25
replace ap37k = 5 if ap37 >=25 & ap37 < 30
replace ap37k = 6 if ap37 >=30 & ap37 < 35
replace ap37k = 7 if ap37 >=35 & ap37 < 40
replace ap37k = 8 if ap37 >=40
replace ap37k = . if ap37 == .
label variable ap37k "BMI categorical"
lab def ap37k 1 "Very severely underweight" 2 "Severely underweight" 3 "Underweight" 4 "Normal(healthy weight)" 5 "Overweight" 6 "Obese Class I (Moderately obese)" 7 "Obese Class II (Severely obese" 8 "Obese Class III (Very severely obese)" 
label values ap37k ap37k
save output/apgen.dta, replace
/* END ap37 */

/* START pweight */
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
/* END pweight */


/* START hweight */
use data/ah.dta, clear
merge 1:1 AHHNR using output/ahgen.dta, nogenerate
gen  hdist = . 
replace hdist = 3 if ah12 == 1
replace hdist = 3 if ah12 == 2
replace hdist = 3 if ah12 == 3
replace hdist = 1 if ah12 == 4
replace hdist = 1 if ah12 == 5
replace hdist = 1 if ah12 == 6
replace hdist = . if ah12 == .
bysort ah12: gen hnumber = _N
gen hweight1 = hdist/hnumber
label variable hweight1 "hweight 2001"
keep AHHNR hweight1
sort AHHNR
gen HHNR = _n
save tmp/hweight1.dta, replace

use output/bhgen.dta, clear
merge 1:1 BHHNR using output/bhgen.dta, nogenerate
gen  hdist = . 
replace hdist = 3 if bh12 == 1
replace hdist = 3 if bh12 == 2
replace hdist = 3 if bh12 == 3
replace hdist = 1 if bh12 == 4
replace hdist = 1 if bh12 == 5
replace hdist = 1 if bh12 == 6
replace hdist = . if bh12 == .
bysort bh12: gen hnumber = _N
gen hweight2 = hdist/hnumber
label variable hweight2 "hweight 2002"
keep BHHNR hweight2
sort BHHNR
gen HHNR = _n
save tmp/hweight2.dta, replace


use output/chgen.dta, clear
merge 1:1 CHHNR using output/chgen.dta, nogenerate
gen  hdist = . 
replace hdist = 4 if ch12 == 1
replace hdist = 2 if ch12 == 2
replace hdist = 3 if ch12 == 3
replace hdist = 1 if ch12 == 4
replace hdist = 2 if ch12 == 5
replace hdist = 1 if ch12 == 6
replace hdist = . if ch12 == .
bysort ch12: gen hnumber = _N
gen hweight3 = hdist/hnumber
label variable hweight3 "hweight 2003"
keep CHHNR hweight3
sort CHHNR
gen HHNR = _n
save tmp/hweight3.dta, replace


use tmp/hweight1.dta, clear
merge 1:1 HHNR  using tmp/hweight2.dta, nogenerate
save tmp/hweight12.dta, replace
use tmp/hweight12.dta, clear
merge 1:1 HHNR using tmp/hweight3.dta, nogenerate
keep HHNR hweight1 hweight2 hweight3
save output/hweight.dta, replace

/* END hweight */


