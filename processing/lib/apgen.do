/* START ap37 */ 
use out/ap.dta, clear
gen ap37 = ap36/(ap35/100)^2
label variable ap37 "BMI numeric"
keep persnr ap37
save tmp/ap37.dta, replace
/* END ap37 */

/* START ap37k */
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
save out/apgen.dta, replace
/* END ap37k */
