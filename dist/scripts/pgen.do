clear 
version 13

/* START ap37 */
use $output/ap.dta, clear
gen ap37 = ap36/(ap35/100)^2
label variable ap37 "BMI numeric"
keep PERSNR ap37
saveold $temp/ap37.dta, replace
/* END ap37 */

/* START ap37k */
use $temp/ap37.dta, clear
gen ap37k = .
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
saveold $output/apgen.dta, replace
/* END ap37k */



/* START bp37 */
use $output/bp.dta, clear
gen bp37 = bp36/(bp35/100)^2
label variable bp37 "BMI numeric"
keep PERSNR bp37
saveold $temp/bp37.dta, replace
/* END bp37 */

/* START bp37 */
use $temp/bp37.dta, clear
gen bp37k = .
replace bp37k = 1 if bp37 < 15
replace bp37k = 2 if bp37 >=15 & bp37 < 16
replace bp37k = 3 if bp37 >=16 & bp37 < 18.5
replace bp37k = 4 if bp37 >=18.5 & bp37 < 25
replace bp37k = 5 if bp37 >=25 & bp37 < 30
replace bp37k = 6 if bp37 >=30 & bp37 < 35
replace bp37k = 7 if bp37 >=35 & bp37 < 40
replace bp37k = 8 if bp37 >=40
replace bp37k = . if bp37 == .
label variable bp37k "BMI categorical"
lab def bp37k 1 "Very severely underweight" 2 "Severely underweight" 3 "Underweight" 4 "Normal(healthy weight)" 5 "Overweight" 6 "Obese Class I (Moderately obese)" 7 "Obese Class II (Severely obese" 8 "Obese Class III (Very severely obese)"
label values bp37k bp37k
saveold $output/bpgen.dta, replace
/* END bp37k */


/* START cp38*/
use $output/cp.dta, clear
gen cp38 = cp36/(cp35/100)^2
label variable cp38 "BMI numeric"
keep PERSNR cp38
saveold $temp/cp38.dta, replace
/* END cp38*/

/* START cp38k */
use $temp/cp38.dta, clear
gen cp38k = .
replace cp38k = 1 if cp38 < 15
replace cp38k = 2 if cp38 >=15 & cp38 < 16
replace cp38k = 3 if cp38 >=16 & cp38 < 18.5
replace cp38k = 4 if cp38 >=18.5 & cp38 < 25
replace cp38k = 5 if cp38 >=25 & cp38 < 30
replace cp38k = 6 if cp38 >=30 & cp38 < 35
replace cp38k = 7 if cp38 >=35 & cp38 < 40
replace cp38k = 8 if cp38 >=40
replace cp38k = . if cp38 == .
label variable cp38k "BMI categorical"
lab def cp38k 1 "Very severely underweight" 2 "Severely underweight" 3 "Underweight" 4 "Normal(healthy weight)" 5 "Overweight" 6 "Obese Class I (Moderately obese)" 7 "Obese Class II (Severely obese" 8 "Obese Class III (Very severely obese)"
label values cp38k cp38k
saveold $output/cpgen.dta, replace
/* END cp38k */
