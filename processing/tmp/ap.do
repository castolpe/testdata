use raw/ap-raw.dta, clear

foreach var of varlist _all{
rename `var' `=lower("`var'")'
}

 rename psex ap01 
 rename ppgeb ap02 
 rename ppnat ap03 
 rename pfamst ap04 
 rename pfs0111 ap05 
 rename pfs0211 ap06 
 rename pfs0311 ap07 
 rename pfs1111 ap08 
 rename pfs0411 ap09 
 rename pfs0511 ap10 
 rename pfs0611 ap11 
 rename pfs0711 ap12 
 rename pfs0811 ap13 
 rename pfs0911 ap14 
 rename pfs121 ap15 
 rename pfs131 ap16 
 rename pfs101 ap17 
 rename pzule1 ap18 
 rename pzuf01 ap19 
 rename pzuf02 ap20 
 rename pzuf03 ap21 
 rename pzuf04 ap22 
 rename pzuf05 ap23 
 rename pzuf06 ap24 
 rename pzuf07 ap25 
 rename pzuf08 ap26 
 rename pzuf09 ap27 
 rename pzuf10 ap28 
 rename pzuf11 ap29 
 rename pber ap30 
 rename pvek012 ap31 
 rename pvek022 ap32 
 rename ppol1 ap33 
 rename ppol3 ap34 
 rename pgr ap35 
 rename pkilo ap36 
 rename ahhnr ahhnr 

label var ahhnr "Current Household Number (=HHNRAKT)"
label var ap01 "Sex"
label var ap02 "Year of Birth"
label var ap03 "Nationality"
label var ap04 "Civil Status"
label var ap05 "Family Changes, Married"
label var ap06 "Family Changes, Moved together with partner"
label var ap07 "Family Changes, Child was born"
label var ap08 "Family changes,  Child entered household"
label var ap09 "Family changes, Daughter/son left household"
label var ap10 "Family changes, Seperated from partner/spouse"
label var ap11 "Family changes, Divorced"
label var ap12 "Family changes, Partner/ spouse passed away"
label var ap13 "Family changes,  Father passed away"
label var ap14 "Family changes, Mother passed away"
label var ap15 "Family changes, Another person in household passed away"
label var ap16 "Family changes, Child passed away"
label var ap17 "Family changes, other changes"
label var ap18 "Satisfaction"
label var ap19 "Satisfaction with your health"
label var ap20 "Satisfaction with your sleep?"
label var ap21 "Satisfaction (in case of employment) with your work?"
label var ap22 "Satisfaction (if you are doing household chores) with the chores in your househo"
label var ap23 "Satisfaction with your household income?"
label var ap24 "Satisfaction with your personal income?"
label var ap25 "Satisfaction with your accomodation?"
label var ap26 "Satisfaction with your leisure time?"
label var ap27 "Satisfaction with your family life?"
label var ap28 "Satisfaction (in case of having children in pre-school age) with the existing po"
label var ap29 "Satisfaction with the democacy how it is persisting in Germany?"
label var ap30 "with the democacy how it is persisting in Germany?"
label var ap31 "Income/ Wage (amount)"
label var ap32 "Income/ Selfemployment (amount)"
label var ap33 "Interest in Politics"
label var ap34 "Party"
label var ap35 "Body height"
label var ap36 "Body weight"

 lab def  ap01 1 "male" 2 "female"  
 lab def  ap04 1 "Married, cohabiting" 2 "Married, permanently separated" 3 "Single" 4 "Divorced" 5 "Widowed"  
 lab def  ap05 1 "Yes" 2 "No"  
 lab def  ap06 1 "Yes" 2 "No"  
 lab def  ap07 1 "Yes" 2 "No"  
 lab def  ap08 1 "Yes" 2 "No"  
 lab def  ap09 1 "Yes" 2 "No"  
 lab def  ap10 1 "Yes" 2 "No"  
 lab def  ap11 1 "Yes" 2 "No"  
 lab def  ap12 1 "Yes" 2 "No"  
 lab def  ap13 1 "Yes" 2 "No"  
 lab def  ap14 1 "Yes" 2 "No"  
 lab def  ap15 1 "Yes" 2 "No"  
 lab def  ap16 1 "Yes" 2 "No"  
 lab def  ap17 1 "Yes" 2 "No"  
 lab def  ap18 0 "0 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 1 "1 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 2 "2 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 3 "3 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 4 "4 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 5 "5 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 6 "6 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 7 "7 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 8 "8 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 9 "9 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 10 "10 Satisfaction: "0" not satisfied at all, "10" throughout satisfied"  
 lab def  ap19 0 "0 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 1 "1 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 2 "2 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 3 "3 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 4 "4 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 5 "5 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 6 "6 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 7 "7 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 8 "8 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 9 "9 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 10 "10 Satisfaction: "0" not satisfied at all, "10" throughout satisfied"  
 lab def  ap20 0 "0 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 1 "1 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 2 "2 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 3 "3 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 4 "4 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 5 "5 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 6 "6 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 7 "7 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 8 "8 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 9 "9 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 10 "10 Satisfaction: "0" not satisfied at all, "10" throughout satisfied"  
 lab def  ap21 0 "0 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 1 "1 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 2 "2 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 3 "3 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 4 "4 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 5 "5 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 6 "6 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 7 "7 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 8 "8 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 9 "9 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 10 "10 Satisfaction: "0" not satisfied at all, "10" throughout satisfied"  
 lab def  ap22 0 "0 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 1 "1 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 2 "2 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 3 "3 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 4 "4 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 5 "5 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 6 "6 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 7 "7 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 8 "8 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 9 "9 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 10 "10 Satisfaction: "0" not satisfied at all, "10" throughout satisfied"  
 lab def  ap23 0 "0 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 1 "1 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 2 "2 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 3 "3 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 4 "4 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 5 "5 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 6 "6 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 7 "7 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 8 "8 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 9 "9 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 10 "10 Satisfaction: "0" not satisfied at all, "10" throughout satisfied"  
 lab def  ap24 0 "0 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 1 "1 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 2 "2 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 3 "3 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 4 "4 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 5 "5 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 6 "6 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 7 "7 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 8 "8 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 9 "9 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 10 "10 Satisfaction: "0" not satisfied at all, "10" throughout satisfied"  
 lab def  ap25 0 "0 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 1 "1 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 2 "2 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 3 "3 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 4 "4 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 5 "5 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 6 "6 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 7 "7 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 8 "8 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 9 "9 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 10 "10 Satisfaction: "0" not satisfied at all, "10" throughout satisfied"  
 lab def  ap26 0 "0 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 1 "1 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 2 "2 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 3 "3 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 4 "4 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 5 "5 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 6 "6 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 7 "7 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 8 "8 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 9 "9 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 10 "10 Satisfaction: "0" not satisfied at all, "10" throughout satisfied"  
 lab def  ap27 0 "0 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 1 "1 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 2 "2 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 3 "3 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 4 "4 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 5 "5 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 6 "6 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 7 "7 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 8 "8 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 9 "9 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 10 "10 Satisfaction: "0" not satisfied at all, "10" throughout satisfied"  
 lab def  ap28 0 "0 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 1 "1 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 2 "2 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 3 "3 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 4 "4 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 5 "5 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 6 "6 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 7 "7 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 8 "8 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 9 "9 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 10 "10 Satisfaction: "0" not satisfied at all, "10" throughout satisfied"  
 lab def  ap29 0 "0 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 1 "1 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 2 "2 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 3 "3 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 4 "4 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 5 "5 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 6 "6 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 7 "7 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 8 "8 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 9 "9 Satisfaction: "0" not satisfied at all, "10" throughout satisfied" 10 "10 Satisfaction: "0" not satisfied at all, "10" throughout satisfied"  
 lab def  ap33 1 " Very strong" 2 "Strong" 3 "Not very strong" 4 "Not at all"  
 lab def  ap34 1 "SPD" 2 "CDU" 3 "CSU" 4 "FDP" 5 "Bündnis 90 / Die Grünen" 6 "Die Linke" 7 "DVU / Republikaner / NPD" 8 "Others"  

save out/ap.dta, replace
