use raw/ah-raw.dta, clear

foreach var of varlist _all{
rename `var' `=lower("`var'")'
}

 rename hkind ah01 
 rename hkind_dummy ah02 
 rename hkgeba ah03 
 rename hkgebb ah04 
 rename hkgebc ah05 
 rename hkgebd ah06 
 rename hvj ah07 
 rename hwohn01 ah08 
 rename hm04 ah09 
 rename hnetto ah10 
 rename ahhnr ahhnr 

label var ah01 "Children"
label var ah02 "Dummy for Number of Children"
label var ah03 "Year of Birth Child A"
label var ah04 "Year of Birth Child B"
label var ah05 "Geburtsjahr Kind C"
label var ah06 "Geburtsjahr Kind C"
label var ah07 "Change of Residence"
label var ah08 "Residential Area"
label var ah09 "Rent in Euro"
label var ah10 "Total Income per Month"
label var ahhnr "Current Household number (=HHNRAKT)"

 lab def  ah01 0 "" 1 "Yes" 2 "No"  
 lab def  ah07 0 "" 1 "Ja" 2 "Nein"  
 lab def  ah08 0 "" 1 " A mere residential area with predominantly old buildings" 2 " A mere residential area with predominantly new buildings" 3 "Mixed area with appartments and stores/ industrial units" 4 "Commercial area (stores, banks, administration) with few appartments" 5 " Industrial units area with few appartments"  

save out/ah.dta, replace
