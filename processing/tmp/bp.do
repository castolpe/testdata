use raw/bp-raw.dta, clear

foreach var of varlist _all{
rename `var' `=lower("`var'")'
}

 rename psex bp01 
 rename ppgeb bp02 
 rename ppnat bp03 
 rename pfamst bp04 
 rename pfs0111 bp05 
 rename pfs0211 bp06 
 rename pfs0311 bp07 
 rename pfs1111 bp08 
 rename pfs0411 bp09 
 rename pfs0511 bp10 
 rename pfs0611 bp11 
 rename pfs0711 bp12 
 rename pfs0811 bp13 
 rename pfs0911 bp14 
 rename pfs121 bp15 
 rename pfs131 bp16 
 rename pfs101 bp17 
 rename pzule1 bp18 
 rename pzuf01 bp19 
 rename pzuf02 bp20 
 rename pzuf03 bp21 
 rename pzuf04 bp22 
 rename pzuf05 bp23 
 rename pzuf06 bp24 
 rename pzuf07 bp25 
 rename pzuf08 bp26 
 rename pzuf09 bp27 
 rename pzuf10 bp28 
 rename pzuf11 bp29 
 rename pber bp30 
 rename pvek012 bp31 
 rename pvek022 bp32 
 rename ppol1 bp33 
 rename ppol3 bp34 
 rename pgr bp35 
 rename pkilo bp36 
 rename bhhnr bhhnr 
 rename persnr persnr 

label var bhhnr "Current Household Number (=HHNRAKT)"
label var bp01 "Sex"
label var bp02 "Year of Birth"
label var bp03 "Nationality"
label var bp04 "Civil Status"
label var bp05 "Family Changes, Married"
label var bp06 "Family Changes, Moved together with partner"
label var bp07 "Family Changes, Child was born"
label var bp08 "Family changes,  Child entered household"
label var bp09 "Family changes, Daughter/son left household"
label var bp10 "Family changes, Seperated from partner/spouse"
label var bp11 "Family changes, Divorced"
label var bp12 "Family changes, Partner/ spouse passed away"
label var bp13 "Family changes,  Father passed away"
label var bp14 "Family changes, Mother passed away"
label var bp15 "Family changes, Another person in household passed away"
label var bp16 "Family changes, Child passed away"
label var bp17 "Family changes, other changes"
label var bp18 "Satisfaction"
label var bp19 "Satisfaction with your health"
label var bp20 "Satisfaction with your sleep?"
label var bp21 "Satisfaction (in case of employment) with your work?"
label var bp22 "Satisfaction (if you are doing household chores) with the chores in your househo"
label var bp23 "Satisfaction with your household income?"
label var bp24 "Satisfaction with your personal income?"
label var bp25 "Satisfaction with your accomodation?"
label var bp26 "Satisfaction with your leisure time?"
label var bp27 "Satisfaction with your family life?"
label var bp28 "Satisfaction (in case of having children in pre-school age) with the existing po"
label var bp29 "Satisfaction with the democacy how it is persisting in Germany?"
label var bp30 "with the democacy how it is persisting in Germany?"
label var bp31 "Income/ Wage (amount)"
label var bp32 "Income/ Selfemployment (amount)"
label var bp33 "Interest in Politics"
label var bp34 "Party"
label var bp35 "Body height"
label var bp36 "Body weight"
label var persnr "Fixed Individual Number"

 lab def  bp01 1 "male" 2 "female"  
 lab def  bp04 1 "Married, cohabiting" 2 "Married, permanently separated" 3 "Single" 4 "Divorced" 5 "Widowed"  
 lab def  bp05 1 "Yes" 2 "No"  
 lab def  bp06 1 "Yes" 2 "No"  
 lab def  bp07 1 "Yes" 2 "No"  
 lab def  bp08 1 "Yes" 2 "No"  
 lab def  bp09 1 "Yes" 2 "No"  
 lab def  bp10 1 "Yes" 2 "No"  
 lab def  bp11 1 "Yes" 2 "No"  
 lab def  bp12 1 "Yes" 2 "No"  
 lab def  bp13 1 "Yes" 2 "No"  
 lab def  bp14 1 "Yes" 2 "No"  
 lab def  bp15 1 "Yes" 2 "No"  
 lab def  bp16 1 "Yes" 2 "No"  
 lab def  bp17 1 "Yes" 2 "No"  
 lab def  bp18 0 "0 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 1 "1 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 2 "2 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 3 "3 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 4 "4 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 5 "5 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 6 "6 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 7 "7 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 8 "8 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 9 "9 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 10 "10 Satisfaction: "0" not satisfied at all, "10" throughout satisfied"  
 lab def  bp19 0 "0 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 1 "1 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 2 "2 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 3 "3 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 4 "4 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 5 "5 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 6 "6 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 7 "7 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 8 "8 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 9 "9 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 10 "10 Satisfaction: "0" not satisfied at all, "10" throughout satisfied"  
 lab def  bp20 0 "0 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 1 "1 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 2 "2 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 3 "3 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 4 "4 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 5 "5 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 6 "6 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 7 "7 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 8 "8 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 9 "9 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 10 "10 Satisfaction: "0" not satisfied at all, "10" throughout satisfied"  
 lab def  bp21 0 "0 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 1 "1 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 2 "2 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 3 "3 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 4 "4 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 5 "5 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 6 "6 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 7 "7 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 8 "8 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 9 "9 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 10 "10 Satisfaction: "0" not satisfied at all, "10" throughout satisfied"  
 lab def  bp22 0 "0 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 1 "1 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 2 "2 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 3 "3 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 4 "4 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 5 "5 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 6 "6 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 7 "7 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 8 "8 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 9 "9 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 10 "10 Satisfaction: "0" not satisfied at all, "10" throughout satisfied"  
 lab def  bp23 0 "0 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 1 "1 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 2 "2 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 3 "3 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 4 "4 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 5 "5 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 6 "6 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 7 "7 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 8 "8 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 9 "9 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 10 "10 Satisfaction: "0" not satisfied at all, "10" throughout satisfied"  
 lab def  bp24 0 "0 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 1 "1 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 2 "2 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 3 "3 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 4 "4 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 5 "5 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 6 "6 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 7 "7 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 8 "8 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 9 "9 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 10 "10 Satisfaction: "0" not satisfied at all, "10" throughout satisfied"  
 lab def  bp25 0 "0 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 1 "1 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 2 "2 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 3 "3 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 4 "4 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 5 "5 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 6 "6 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 7 "7 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 8 "8 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 9 "9 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 10 "10 Satisfaction: "0" not satisfied at all, "10" throughout satisfied"  
 lab def  bp26 0 "0 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 1 "1 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 2 "2 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 3 "3 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 4 "4 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 5 "5 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 6 "6 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 7 "7 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 8 "8 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 9 "9 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 10 "10 Satisfaction: "0" not satisfied at all, "10" throughout satisfied"  
 lab def  bp27 0 "0 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 1 "1 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 2 "2 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 3 "3 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 4 "4 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 5 "5 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 6 "6 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 7 "7 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 8 "8 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 9 "9 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 10 "10 Satisfaction: "0" not satisfied at all, "10" throughout satisfied"  
 lab def  bp28 0 "0 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 1 "1 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 2 "2 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 3 "3 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 4 "4 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 5 "5 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 6 "6 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 7 "7 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 8 "8 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 9 "9 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 10 "10 Satisfaction: "0" not satisfied at all, "10" throughout satisfied"  
 lab def  bp29 0 "0 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 1 "1 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 2 "2 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 3 "3 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 4 "4 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 5 "5 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 6 "6 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 7 "7 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 8 "8 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 9 "9 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 10 "10 Satisfaction: "0" not satisfied at all, "10" throughout satisfied"  
 lab def  bp33 1 " Very strong" 2 "Strong" 3 "Not very strong" 4 "Not at all"  
 lab def  bp34 1 "SPD" 2 "CDU" 3 "CSU" 4 "FDP" 5 "Bündnis 90 / Die Grünen" 6 "Die Linke" 7 "DVU / Republikaner / NPD" 8 "Others"  

save out/bp.dta, replace
