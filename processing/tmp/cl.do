use raw/cl-raw.dta, clear

foreach var of varlist _all{
rename `var' `=lower("`var'")'
}

 rename lsta1 cl01 
 rename lzug01 cl02 
 rename lzug02 cl03 
 rename lwied cl04 
 rename lgesch1 cl05 
 rename lab021 cl06 
 rename lab031 cl07 
 rename lab041 cl08 
 rename lab051 cl09 
 rename lab061 cl10 
 rename lab071 cl11 
 rename lab081 cl12 
 rename lkno cl13 
 rename lkind cl14 
 rename chhnr chhnr 
 rename persnr persnr 

label var chhnr "Current Household Number (=HHNRAKT)"
label var cl01 "Germany Nativity"
label var cl02 "Moving to Germany"
label var cl03 "Immigrant Group"
label var cl04 "Domicile before 1989"
label var cl05 "Siblings"
label var cl06 "Degree of education,  Apprenticeship (GDR: craftsman degree)"
label var cl07 "Degree of education, Vocational school, business school, health school"
label var cl08 "Degree of education, Technical school, i.e. technican degree, master degree"
label var cl09 "Degree of education, Public officer education"
label var cl10 "Degree of education, University of applied science, university of cooperative ed"
label var cl11 "Degree of education, University degree"
label var cl12 "Degree of education, Other degree"
label var cl13 "Children"
label var cl14 "Number of Children"
label var persnr "Fixed Individual Number"

 lab def  cl01 1 "Yes" 2 "No"  
 lab def  cl03 0 "" 1 "Emigrant, meaning German speaking people from easteuropean countries" 2 " German that has been living overseas for some time" 3 "Citizen of EU member  state" 4 "Asylum seeker or refugee" 5 "Other foreigner"  
 lab def  cl04 1 "German Democratic Republic incl. East-Berlin" 2 "Federal German Republic incl. West-Berlin" 3 "In another country" 4 "Inapplicable, I was born in 1989 or later" 5 "Inapplicable, I was born in 1989 or later"  
 lab def  cl05 1 "Yes" 2 "No"  
 lab def  cl06 1 "Yes" 2 "No"  
 lab def  cl07 1 "Yes" 2 "No"  
 lab def  cl08 1 "Yes" 2 "No"  
 lab def  cl09 1 "Yes" 2 "No"  
 lab def  cl10 1 "Yes" 2 "No"  
 lab def  cl11 1 "Yes" 2 "No"  
 lab def  cl12 1 "Yes" 2 "No"  
 lab def  cl13 0 "" 1 "No, never had children" 2 "Yes"  

save out/cl.dta, replace
