use raw/bl-raw.dta, clear

foreach var of varlist _all{
rename `var' `=lower("`var'")'
}

 rename lsta1 bl01 
 rename lzug01 bl02 
 rename lzug02 bl03 
 rename lwied bl04 
 rename lgesch1 bl05 
 rename lab021 bl06 
 rename lab031 bl07 
 rename lab041 bl08 
 rename lab051 bl09 
 rename lab061 bl10 
 rename lab071 bl11 
 rename lab081 bl12 
 rename lkno bl13 
 rename lkind bl14 
 rename bhhnr bhhnr 
 rename persnr persnr 

label var bhhnr "Current Household Number =HHNRAKT)"
label var bl01 "Germany Nativity"
label var bl02 "Moving to Germany"
label var bl03 "Immigrant Group"
label var bl04 "Domicile before 1989"
label var bl05 "Siblings"
label var bl06 "Degree of education,  Apprenticeship (GDR: craftsman degree)"
label var bl07 "Degree of education, Vocational school, business school, health school"
label var bl08 "Degree of education, Technical school, i.e. technican degree, master degree"
label var bl09 "Degree of education, Public officer education"
label var bl10 "Degree of education, University of applied science, university of cooperative ed"
label var bl11 "Degree of education, University degree"
label var bl12 "Degree of education, Other degree"
label var bl13 "Children"
label var bl14 "Number of Children"
label var persnr "Fixed Individual Number"

 lab def  bl01 1 "Yes" 2 "No"  
 lab def  bl03 0 "" 1 "Emigrant, meaning German speaking people from easteuropean countries" 2 " German that has been living overseas for some time" 3 "Citizen of EU member  state" 4 "Asylum seeker or refugee" 5 "Other foreigner"  
 lab def  bl04 1 "German Democratic Republic incl. East-Berlin" 2 "Federal German Republic incl. West-Berlin" 3 "In another country" 4 "Inapplicable, I was born in 1989 or later" 5 "Inapplicable, I was born in 1989 or later"  
 lab def  bl05 1 "Yes" 2 "No"  
 lab def  bl06 1 "Yes" 2 "No"  
 lab def  bl07 1 "Yes" 2 "No"  
 lab def  bl08 1 "Yes" 2 "No"  
 lab def  bl09 1 "Yes" 2 "No"  
 lab def  bl10 1 "Yes" 2 "No"  
 lab def  bl11 1 "Yes" 2 "No"  
 lab def  bl12 1 "Yes" 2 "No"  
 lab def  bl13 0 "" 1 "No, never had children" 2 "Yes"  

save out/bl.dta, replace
