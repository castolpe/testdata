/* START bp37 */
use data/bp.dta, clear
gen bp37 = bp36/(bp35/100)^2
label variable bp37 "BMI numeric"
keep PERSNR bp37
save tmp/bp37.dta, replace
/* END bp37 */

/* START bp37 */
use tmp/bp37.dta, clear
gen  bp37k = . 
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
save output/bpgen.dta, replace
/* END bp37k */
