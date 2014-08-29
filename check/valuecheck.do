clear
version 13  


//Excel-Master, Umsteigeschlüssel old-var/new-var
import excel check\varcheck_p.xlsx, sheet ("`file'")firstrow clear
save temp\ap_check.dta, replace

//AP an Excel-Master spielen
use dist\ap.dta, clear
metacollapse
gen controll_value = value
gen controll_labelname =labelname
*gen controll_vartype = vartype
*gen c_varlabel = varlabel
rename varname old_var //Anpassung an Excel-Strukturtabelle
merge m:1 old_var using temp/ap_check.dta
drop _merge
save temp\ap_varcheck.dta,replace


clear
use long\pl.dta
metacollapse
rename valuelabel new_valuelabel 
*rename value new_value
rename varname new_var //Anpassung an Excel-Strukturtabelle

merge m:m new_var value using temp\ap_varcheck.dta 
drop minimum mean stddev quartile1 median quartile3 frequency valid invalid unique
gen fehler = .
lab var fehler "Label-Differenz"

replace fehler =0 if new_valuelabel == valuelabel & controll_value == value & labelname == controll_labelname // gleich
*replace fehler =1 if(new_valuelabel != valuelabel) // fehlerhaft
replace fehler =2 if old_var == "" & valuelabel =="" & controll_value == . // neues Item?
replace fehler =3 if new_valuelabel != valuelabel & vartype == 0 & controll_vartype ==0 // Strings nicht vergleichbar
replace fehler =4 if new_valuelabel ="<no value label>" & (valuelabel ="") & (controll_labelname="") //neue Ausprägung in long, die noch nicht in ap war

save temp/ap_valuelabel_compare.dta, replace


















// für bp

clear
//Excel-Master, Umsteigeschlüssel old-var/new-var
import excel data\04-temp\ap_tab_new.xlsx, sheet("Tabelle2") firstrow clear
save data\04-temp\bp_tab_new.dta, replace

//BP an Excel-Master spielen
use data\02-dist\de\bp.dta, clear
des, replace
rename name old_var //Anpassung an Excel-Strukturtabelle
*save ah_des.dta, replace
merge 1:1 old_var using data\04-temp\bp_tab_new.dta
drop _merge
save data\04-temp\bp_ka.dta,replace


clear
use data\03-long\de\pl_caro.dta
des, replace
*rename varlab new_varlab
rename name new_var //Anpassung an Excel-Strukturtabelle

merge 1:m new_var using data\04-temp\bp_ka.dta

gen fehler = .
lab var fehler "Value-Label-Vergleich"
replace fehler =0 if varlab == new_varlab // Label gleich
replace fehler =1 if (varlab != new_varlab) // Label verschieden
replace fehler =2 if (varlab =="" & old_var=="") //Variable fehlt in wide
replace fehler =3 if (new_varlab =="" & new_var=="") //Variable fehlt in long


save data\04-temp\bp_label_compare.dta, replace


// für cp

clear
//Excel-Master, Umsteigeschlüssel old-var/new-var
import excel data\04-temp\ap_tab_new.xlsx, sheet("Tabelle3") firstrow clear
save data\04-temp\cp_tab_new.dta, replace

//CP an Excel-Master spielen
use data\02-dist\de\cp.dta, clear
des, replace
rename name old_var //Anpassung an Excel-Strukturtabelle
*save ah_des.dta, replace
merge 1:1 old_var using data\04-temp\cp_tab_new.dta
drop _merge
save data\04-temp\cp_ka.dta,replace


clear
use data\03-long\de\pl_caro.dta
des, replace
rename varlab new_varlab
rename name new_var //Anpassung an Excel-Strukturtabelle

merge 1:m new_var using data\04-temp\cp_ka.dta

gen fehler = .
lab var fehler "Label-Differenz"
*lab def fehler 0 "gleich" 1 "fehler" 2 "einzelnes Label" 3 "keine Label" 
*lab val fehler fehler

replace fehler =0 if varlab == new_varlab // Label gleich
replace fehler =1 if (varlab != new_varlab) // Label verschieden
replace fehler =2 if (varlab =="" & old_var=="") //Variable fehlt in wide
replace fehler =3 if (new_varlab =="" & new_var=="") //Variable fehlt in long
*replace fehler =4 if (



*replace fehler =2 if (varlab =="" | new_varlab ==""& old_var != new_var)
*replace fehler =3 if (varlab =="" & new_varlab =="" & new_var=="")

save data\04-temp\cp_label_compare.dta, replace



