use raw/cp-raw.dta, clear

foreach var of varlist _all{
rename `var' `=lower("`var'")'
}

 rename psex cp01 
 rename ppgeb cp02 
 rename ppnat cp03 
 rename pfamst cp04 
 rename pfs0111 cp05 
 rename pfs0211 cp06 
 rename pfs0311 cp07 
 rename pfs1111 cp08 
 rename pfs0411 cp09 
 rename pfs0511 cp10 
 rename pfs0611 cp11 
 rename pfs0711 cp12 
 rename pfs0811 cp13 
 rename pfs0911 cp14 
 rename pfs121 cp15 
 rename pfs131 cp16 
 rename pfs101 cp17 
 rename pzule1 cp18 
 rename pzuf01 cp19 
 rename pzuf02 cp20 
 rename pzuf03 cp21 
 rename pzuf04 cp22 
 rename pzuf05 cp23 
 rename pzuf06 cp24 
 rename pzuf07 cp25 
 rename pzuf08 cp26 
 rename pzuf09 cp27 
 rename pzuf10 cp28 
 rename pzuf11 cp29 
 rename pber cp30 
 rename pvek012 cp31 
 rename pvek022 cp32 
 rename ppol1 cp33 
 rename ppol3 cp34 
 rename pgr cp35 
 rename pkilo cp36 
 rename chhnr chhnr 
 rename persnr persnr 

label var chhnr "Current Household Number (=HHNRAKT)"
label var cp01 "Sex"
label var cp02 "Year of Birth"
label var cp03 "Nationality"
label var cp04 "Civil Status"
label var cp05 "Family Changes, Married"
label var cp06 "Family Changes, Moved together with partner"
label var cp07 "Family Changes, Child was born"
label var cp08 "Family changes,  Child entered household"
label var cp09 "Family changes, Daughter/son left household"
label var cp10 "Family changes, Seperated from partner/spouse"
label var cp11 "Family changes, Divorced"
label var cp12 "Family changes, Partner/ spouse passed away"
label var cp13 "Family changes,  Father passed away"
label var cp14 "Family changes, Mother passed away"
label var cp15 "Family changes, Another person in household passed away"
label var cp16 "Family changes, Child passed away"
label var cp17 "Family changes, other changes"
label var cp18 "Satisfaction"
label var cp19 "Satisfaction with your health"
label var cp20 "Satisfaction with your sleep?"
label var cp21 "Satisfaction (in case of employment) with your work?"
label var cp22 "Satisfaction (if you are doing household chores) with the chores in your househo"
label var cp23 "Satisfaction with your household income?"
label var cp24 "Satisfaction with your personal income?"
label var cp25 "Satisfaction with your accomodation?"
label var cp26 "Satisfaction with your leisure time?"
label var cp27 "Satisfaction with your family life?"
label var cp28 "Satisfaction (in case of having children in pre-school age) with the existing po"
label var cp29 "Satisfaction with the democacy how it is persisting in Germany?"
label var cp30 "with the democacy how it is persisting in Germany?"
label var cp31 "Income/ Wage (amount)"
label var cp32 "Income/ Selfemployment (amount)"
label var cp33 "Interest in Politics"
label var cp34 "Party"
label var cp35 "Body height"
label var cp36 "Body weight"
label var persnr "Fixed Individual Number"

 lab def  cp01 1 "male" 2 "female"  
 lab def  cp04 1 "Married, cohabiting" 2 "Married, permanently separated" 3 "Single" 4 "Divorced" 5 "Widowed"  
 lab def  cp05 1 "Yes" 2 "No"  
 lab def  cp06 1 "Yes" 2 "No"  
 lab def  cp07 1 "Yes" 2 "No"  
 lab def  cp08 1 "Yes" 2 "No"  
 lab def  cp09 1 "Yes" 2 "No"  
 lab def  cp10 1 "Yes" 2 "No"  
 lab def  cp11 1 "Yes" 2 "No"  
 lab def  cp12 1 "Yes" 2 "No"  
 lab def  cp13 1 "Yes" 2 "No"  
 lab def  cp14 1 "Yes" 2 "No"  
 lab def  cp15 1 "Yes" 2 "No"  
 lab def  cp16 1 "Yes" 2 "No"  
 lab def  cp17 1 "Yes" 2 "No"  
 lab def  cp18 0 "0 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 1 "1 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 2 "2 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 3 "3 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 4 "4 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 5 "5 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 6 "6 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 7 "7 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 8 "8 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 9 "9 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 10 "10 Satisfaction: "0" not satisfied at all, "10" throughout satisfied"  
 lab def  cp19 0 "0 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 1 "1 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 2 "2 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 3 "3 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 4 "4 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 5 "5 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 6 "6 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 7 "7 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 8 "8 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 9 "9 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 10 "10 Satisfaction: "0" not satisfied at all, "10" throughout satisfied"  
 lab def  cp20 0 "0 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 1 "1 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 2 "2 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 3 "3 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 4 "4 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 5 "5 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 6 "6 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 7 "7 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 8 "8 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 9 "9 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 10 "10 Satisfaction: "0" not satisfied at all, "10" throughout satisfied"  
 lab def  cp21 0 "0 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 1 "1 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 2 "2 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 3 "3 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 4 "4 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 5 "5 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 6 "6 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 7 "7 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 8 "8 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 9 "9 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 10 "10 Satisfaction: "0" not satisfied at all, "10" throughout satisfied"  
 lab def  cp22 0 "0 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 1 "1 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 2 "2 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 3 "3 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 4 "4 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 5 "5 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 6 "6 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 7 "7 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 8 "8 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 9 "9 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 10 "10 Satisfaction: "0" not satisfied at all, "10" throughout satisfied"  
 lab def  cp23 0 "0 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 1 "1 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 2 "2 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 3 "3 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 4 "4 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 5 "5 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 6 "6 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 7 "7 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 8 "8 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 9 "9 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 10 "10 Satisfaction: "0" not satisfied at all, "10" throughout satisfied"  
 lab def  cp24 0 "0 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 1 "1 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 2 "2 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 3 "3 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 4 "4 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 5 "5 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 6 "6 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 7 "7 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 8 "8 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 9 "9 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 10 "10 Satisfaction: "0" not satisfied at all, "10" throughout satisfied"  
 lab def  cp25 0 "0 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 1 "1 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 2 "2 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 3 "3 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 4 "4 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 5 "5 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 6 "6 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 7 "7 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 8 "8 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 9 "9 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 10 "10 Satisfaction: "0" not satisfied at all, "10" throughout satisfied"  
 lab def  cp26 0 "0 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 1 "1 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 2 "2 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 3 "3 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 4 "4 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 5 "5 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 6 "6 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 7 "7 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 8 "8 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 9 "9 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 10 "10 Satisfaction: "0" not satisfied at all, "10" throughout satisfied"  
 lab def  cp27 0 "0 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 1 "1 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 2 "2 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 3 "3 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 4 "4 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 5 "5 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 6 "6 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 7 "7 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 8 "8 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 9 "9 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 10 "10 Satisfaction: "0" not satisfied at all, "10" throughout satisfied"  
 lab def  cp28 0 "0 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 1 "1 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 2 "2 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 3 "3 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 4 "4 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 5 "5 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 6 "6 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 7 "7 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 8 "8 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 9 "9 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 10 "10 Satisfaction: "0" not satisfied at all, "10" throughout satisfied"  
 lab def  cp29 0 "0 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 1 "1 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 2 "2 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 3 "3 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 4 "4 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 5 "5 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 6 "6 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 7 "7 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 8 "8 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 9 "9 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 10 "10 Satisfaction: "0" not satisfied at all, "10" throughout satisfied"  
 lab def  cp33 1 " Very strong" 2 "Strong" 3 "Not very strong" 4 "Not at all"  
 lab def  cp34 1 "SPD" 2 "CDU" 3 "CSU" 4 "FDP" 5 "Bündnis 90 / Die Grünen" 6 "Die Linke" 7 "DVU / Republikaner / NPD" 8 "Others"  

save out/cp.dta, replace
