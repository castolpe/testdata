// BMI 

clear

use "data\03-long\de\pl_caro.dta", clear
keep pgr pkilo PERSNR wave psex pgeb
gen BMI = ((pkilo/pgr^2)*10000)
lab var BMI "Body Mass Index"
recode BMI (0/19.99 = 1) (20/24.99 = 2) (25/29.99 = 3)(30/50 = 4), generate(BMI_dummy) 
lab var BMI_dummy "Body Mass Index_dummy"

lab def BMI_label 1 "Untergewicht" 2 "Normalgewicht" 3 "Übergewicht" 4 "starkes Übergewicht"
lab val BMI_dummy BMI_label

save "data\03-long\de\pl_gen_caro.dta", replace







//recode BMI (0/18 = 1) (19/24 = 2) (25/30 = 3)(31/50 = 4) if psex==1,(0/19 = 1) (20/24 = 2) (25/30 = 3)(31/50 = 4) if psex==2, 
