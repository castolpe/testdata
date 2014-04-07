use raw/al-raw.dta, clear

foreach var of varlist _all{
rename `var' `=lower("`var'")'
}

 rename lsta1 al01 
 rename lzug01 al02 
 rename lzug02 al03 
 rename lwied al04 
 rename lgesch1 al05 
 rename lab021 al06 
 rename lab031 al07 
 rename lab041 al08 
 rename lab051 al09 
 rename lab061 al10 
 rename lab071 al11 
 rename lab081 al12 
 rename lkno al13 
 rename lkind al14 
 rename ahhnr ahhnr 
 rename persnr persnr 

label var ahhnr "Current Household Number(=HHNRAKT)"
label var al01 "Germany Nativity"
label var al02 "Moving to Germany"
label var al03 "Immigrant Group"
label var al04 "Domicile before 1989"
label var al05 "Siblings"
label var al06 "Degree of education,  Apprenticeship (GDR: craftsman degree)"
label var al07 "Degree of education, Vocational school, business school, health school"
label var al08 "Degree of education, Technical school, i.e. technican degree, master degree"
label var al09 "Degree of education, Public officer education"
label var al10 "Degree of education, University of applied science, university of cooperative ed"
label var al11 "Degree of education, University degree"
label var al12 "Degree of education, Other degree"
label var al13 "Children"
label var al14 "Number of Children"
label var persnr "Fixed Individual Number"

 lab def  al01 1 "Yes" 2 "No"  
 lab def  al03 0 "" 1 "Emigrant, meaning German speaking people from easteuropean countries" 2 " German that has been living overseas for some time" 3 "Citizen of EU member  state" 4 "Asylum seeker or refugee" 5 "Other foreigner"  
 lab def  al04 1 "German Democratic Republic incl. East-Berlin" 2 "Federal German Republic incl. West-Berlin" 3 "In another country" 4 "Inapplicable, I was born in 1989 or later" 5 "Inapplicable, I was born in 1989 or later"  
 lab def  al05 1 "Yes" 2 "No"  
 lab def  al06 1 "Yes" 2 "No"  
 lab def  al07 1 "Yes" 2 "No"  
 lab def  al08 1 "Yes" 2 "No"  
 lab def  al09 1 "Yes" 2 "No"  
 lab def  al10 1 "Yes" 2 "No"  
 lab def  al11 1 "Yes" 2 "No"  
 lab def  al12 1 "Yes" 2 "No"  
 lab def  al13 0 "" 1 "No, never had children" 2 "Yes"  

save out/al.dta, replace
