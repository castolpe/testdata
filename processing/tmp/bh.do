use raw/bh-raw.dta, clear

foreach var of varlist _all{
rename `var' `=lower("`var'")'
}

 rename hkind bh01 
 rename hkind_dummy bh02 
 rename hkgeba bh03 
 rename hkgebb bh04 
 rename hkgebc bh05 
 rename hkgebd bh06 
 rename hvj bh07 
 rename hwohn01 bh08 
 rename hm04 bh09 
 rename hnetto bh10 
 rename bhhnr bhhnr 

label var bh01 "Children"
label var bh02 "Dummy for Number of Children"
label var bh03 "Year of Birth Child A"
label var bh04 "Year of Birth Child B"
label var bh05 "Geburtsjahr Kind C"
label var bh06 "Geburtsjahr Kind C"
label var bh07 "Change of Residence"
label var bh08 "Residential Area"
label var bh09 "Rent in Euro"
label var bh10 "Total Income per Month"
label var bhhnr "Current Household Number (=HHNRAKT)"

 lab def  bh01 0 "" 1 "Yes" 2 "No"  
 lab def  bh07 0 "" 1 "Yes" 2 "No"  
 lab def  bh08 0 "" 1 " A mere residential area with predominantly old buildings" 2 " A mere residential area with predominantly new buildings" 3 "Mixed area with appartments and stores/ industrial units" 4 "Commercial area (stores, banks, administration) with few appartments" 5 " Industrial units area with few appartments" 6 ""  

save out/bh.dta, replace
