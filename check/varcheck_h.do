clear
version 13

global p 		"H:\clone\testdata2\dist\"
global temp 	"H:\clone\testdata2\temp\"
global l		"H:\clone\testdata2\long\"
global check	"H:\clone\testdata2\check\"

*** P-Datens�tze werden �ber einen Umsteigeschl�ssel (Excel-Datei)
*** mit Long-Datensatz zusammengespielt, abgeglichen und auf
*** Fehler in den Var-Labels gepr�ft

foreach file in ah bh ch {

	import excel ${check}\varcheck_h.xlsx, sheet ("`file'")firstrow clear
	save ${temp}\`file'_check.dta, replace

	use ${p}\`file'.dta
	des, replace 
	rename name old_var 
	merge 1:1 old_var using ${temp}\`file'_check.dta
	drop _merge
	save ${temp}\`file'_varcheck.dta,replace
	
	clear
	use ${l}\hl.dta
	des, replace
	rename varlab new_varlab
	rename name new_var 
	
	merge 1:m new_var using ${temp}\`file'_varcheck.dta

	gen fehler = .
	lab var fehler "Label-Differenz"
	replace fehler =0 if varlab == new_varlab // gleich
	replace fehler =1 if (varlab!= new_varlab) // fehler
	replace fehler =2 if (varlab =="" | new_varlab ==""& old_var != new_var) //einzelnes Label
	replace fehler =3 if (varlab =="" & new_varlab =="" & new_var=="") // keine Label
	save ${temp}\`file'_varcheck.dta, replace
	
}


