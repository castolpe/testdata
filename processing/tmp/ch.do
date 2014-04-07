use raw/ch-raw.dta, clear

foreach var of varlist _all{
rename `var' `=lower("`var'")'
}

 rename hkind ch01 
 rename hkind_dummy ch02 
 rename hkgeba ch03 
 rename hkgebb ch04 
 rename hkgebc ch05 
 rename hkgebd ch06 
 rename hvj ch07 
 rename hwohn01 ch08 
 rename hm04 ch09 
 rename hnetto ch10 
 rename chhnr chhnr 

label var ch01 "Children"
label var ch02 "Dummy for Number of Children"
label var ch03 "Year of Birth Child A"
label var ch04 "Year of Birth Child B"
label var ch05 "Geburtsjahr Kind C"
label var ch06 "Geburtsjahr Kind C"
label var ch07 "Change of Residence"
label var ch08 "Residential Area"
label var ch09 "Rent in Euro"
label var ch10 "Total Income per Month"
label var chhnr "Current Household Number (=HHNRAKT)"

 lab def  ch01 0 "" 1 "Yes" 2 "No"  
 lab def  ch07 0 "" 1 "Yes" 2 "No"  
 lab def  ch08 0 "" 1 " A mere residential area with predominantly old buildings" 2 " A mere residential area with predominantly new buildings" 3 "Mixed area with appartments and stores/ industrial units" 4 "Commercial area (stores, banks, administration) with few appartments" 5 " Industrial units area with few appartments" 6 ""  

save out/ch.dta, replace
