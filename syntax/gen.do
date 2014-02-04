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

/* ahgen.dta */
use tmp/ah11.dta
merge 1:1 AHHNR using tmp/ah12.dta, nogenerate
save output/ahgen.dta, replace

/* START ap37 numerisch*/
use data/ap.dta, clear
gen ap37 = ap36/(ap35/100)^2
label variable ap37 "BMI numeric"
keep PERSNR ap37
save tmp/ap37.dta, replace
/* END ap37 */

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
merge 1:m AHHNR using output/ahgen.dta
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

use output/bhgen.dta, clear
gen  hdist = . 
replace hdist = 3 if bh12 == 1
replace hdist = 3 if bh12 == 2
replace hdist = 3 if bh12 == 3
replace hdist = 1 if bh12 == 4
replace hdist = 1 if bh12 == 5
replace hdist = 1 if bh12 == 6
replace hdist = . if bh12 == .
gen hweight2 = hdist/bh12
label variable hweight2 "hweight 2002"
save tmp/hweight2.dta, replace

use output/chgen.dta, clear
gen  hdist = . 
replace hdist = 1 if ch12 == 1
replace hdist = 2 if ch12 == 2
replace hdist = 3 if ch12 == 3
replace hdist = 4 if ch12 == 4
replace hdist = 5 if ch12 == 5
replace hdist = 6 if ch12 == 6
replace hdist = . if ch12 == .
gen hweight2 = hdist/ch12
label variable hweight3 "hweight 2003"
save tmp/hweight3.dta, replace
/* ahhnr .. ?
use tmp/hweight1.dta, clear
merge m:m ??????ß using tmp/weight2.dta
save tmp/weight12.dta, replace

use tmp/weight12.dta, clear
merge m:m PERSNR using tmp/weight3.dta
save output/pweight.dta, replace

