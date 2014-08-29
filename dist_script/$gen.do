global dist   "H:\clone\testdata2\dist\"
*local p35 "ap35 bp35 cp35"
*local p36 "ap36 bp36 cp36"

clear
version 13 

*** generate BMI in ap bp cp

foreach file in ap bp cp {

	use ${dist}\`file'.dta
	keep ap35 ap36 PERSNR 
	gen BMI = ((ap35/ ap36^2)*10000)
	lab var BMI "Body Mass Index"
	recode BMI (0/19.99 = 1) (20/24.99 = 2) (25/29.99 = 3)(30/50 = 4), generate(BMI_dummy) 
	lab var BMI_dummy "Body Mass Index_dummy"

	lab def BMI_label 1 "Untergewicht" 2 "Normalgewicht" 3 "Übergewicht" 4 "starkes Übergewicht"
	lab val BMI_dummy BMI_label

	drop ap35 ap36 
	save ${dist}\`file'gen.dta, replace
} 

