global dist   "H:\clone\testdata2\dist\"



clear
version 13 

*** generate BMI in ap bp cp

foreach file in ap bp cp {
		
		use ${dist}\`file'.dta
		
		gen BMI = (`file' 35/`file' 36^2*1000)
		lab var BMI "Body Mass Index"
		recode BMI (0/19.99 = 1) (20/24.99 = 2) (25/29.99 = 3)(30/100 = 4), generate(BMI_dummy) 
		lab var BMI_dummy "Body Mass Index_dummy"

		lab def BMI_label 1 "Untergewicht" 2 "Normalgewicht" 3 "Übergewicht" 4 "starkes Übergewicht"
		lab val BMI_dummy BMI_label

		keep PERSNR BMI BMI_dummy

	save ${dist}\`file'gen.dta, replace
} 
