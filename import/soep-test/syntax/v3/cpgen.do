/* START bmi */
use data/cp.dta, clear
gen cp37 = cp36/(cp35/100)^2
label variable cp37 "BMI numeric"
keep PERSNR cp37
save tmp/cp37.dta, replace
/* END bmi */ 

/* START cp37k */
use tmp/cp37.dta, clear
gen  cp37k = . 
replace cp37k = 1 if cp37 < 15
replace cp37k = 2 if cp37 >=15 & cp37 < 16
replace cp37k = 3 if cp37 >=16 & cp37 < 18.5
replace cp37k = 4 if cp37 >=18.5 & cp37 < 25
replace cp37k = 5 if cp37 >=25 & cp37 < 30
replace cp37k = 6 if cp37 >=30 & cp37 < 35
replace cp37k = 7 if cp37 >=35 & cp37 < 40
replace cp37k = 8 if cp37 >=40
replace cp37k = . if cp37 == .
label variable cp37k "BMI categorical"
lab def cp37k 1 "Very severely underweight" 2 "Severely underweight" 3 "Underweight" 4 "Normal(healthy weight)" 5 "Overweight" 6 "Obese Class I (Moderately obese)" 7 "Obese Class II (Severely obese" 8 "Obese Class III (Very severely obese)" 
label values cp37k cp37k
save output/cpgen.dta, replace
/* END cp37k */
