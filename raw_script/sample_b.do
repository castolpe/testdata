clear
version 13

*** Refreshment sample in wave 3 (2003)
** HH-questionnaire

* in HH 13

use raw/ch-raw.dta

*set obs 13
replace HKIND = 2 in 13
replace HKIND_Dummy = 0 in 13
replace HVJ = 2 in 13
replace HWOHN01 = 6 in 13
replace HM04 = 500 in 13
replace HNETTO = 1194 in 13
replace CHHNR = 13 in 13
       

* in HH 14

*set obs 14
replace HKIND = 1 in 14
replace HKIND_Dummy = 2 in 14
replace HKGEBA = 1997 in 14
replace HKGEBB = 1999 in 14
replace HVJ = 1 in 14 
replace HWOHN01 = 6 in 14
replace HM04 = 0 in 14
replace HNETTO = 6157 in 14
replace CHHNR = 14 in 14

saveold raw/ch.dta, replace 

** P-questionnaire

clear
use raw/cp-raw.dta, replace 

* in HH 13, Person 7812

*set obs 21
replace PSEX = 2 in 21
replace PPGEB = 1983 in 21
replace PPNAT = "deutsch" in 21
replace PFAMST = 1 in 21
replace PFS0111 = 2 in 21
replace PFS0211 = 1 in 21
replace PFS0311 = 2 in 21
replace PFS1111 = 2 in 21
replace PFS0411 = 2 in 21
replace PFS0511 = 2 in 21
replace PFS0611 = 2 in 21
replace PFS0711 = 2 in 21
replace PFS0811 = 1 in 21
replace PFS0911 = 2 in 21
replace PFS121 = 1 in 21
replace PFS131 = 2 in 21
replace PFS101 = 2 in 21
replace PFS141 = 2 in 21
replace PZUF01 = 9 in 21
replace PZUF02 = 8 in 21
replace PZUF03 = 8 in 21
replace PZUF04 = 6 in 21
replace PZUF05 = 7 in 21
replace PZUF06 = 7 in 21
replace PZUF07 = 9 in 21
replace PZUF08 = 9 in 21
replace PZUF09 = 9 in 21
replace PZUF10 = . in 21
replace PZUF11 = 10 in 21
replace PBER = "Auszubildende für Bürokommunikation" in 21
replace PVEK012 = 685 in 21
replace PVEK022 = .
replace PPOL1 = 3 in 21
replace PPOL3 = 8 in 21
replace PGR = 168 in 21
replace PKILO = 55 in 21
replace CHHNR = 13 in 21
replace PERSNR = 7812 in 21

 


* in HH 13, Person 7865

*set obs 22
replace PSEX =  1 in 22
replace PPGEB = 1982 in 22
replace PPNAT = "deutsch" in 22
replace PFAMST = 1 in 22
replace PFS0111 = 2 in 22
replace PFS0211 = 1 in 22
replace PFS0311 = 2 in 22
replace PFS1111 = 2 in 22
replace PFS0411 = 2 in 22
replace PFS0511 = 2 in 22
replace PFS0611 = 2 in 22
replace PFS0711 = 2 in 22
replace PFS0811 = 2 in 22
replace PFS0911 = 2 in 22
replace PFS121 = 1 in 22
replace PFS131 = 2 in 22
replace PFS101 = 2 in 22
replace PFS141 = 2 in 22
replace PZUF01 = 10 in 22
replace PZUF02 = 9 in 22
replace PZUF03 = 9 in 22
replace PZUF04 = 6 in 22
replace PZUF05 = 8 in 22
replace PZUF06 = 8 in 22
replace PZUF07 = 9 in 22
replace PZUF08 = 9 in 22
replace PZUF09 = 9 in 22
replace PZUF10 = . in 22
replace PZUF11 = 7 in 22
replace PBER = "Auszubildender Kfz-Mechatroniker" in 22
replace PVEK012 = 890 in 22
replace PVEK022= . in 22
replace PPOL1= 3 in 22
replace PPOL3 = 1 in 22
replace PGR = 192 in 22
replace PKILO = 83 in 22
replace CHHNR =  13 in 22
replace PERSNR  = 7865 in 22


* in HH 14, Person 1307

*set obs 23
replace PSEX = 1 in 23
replace PPGEB = 1954 in 23
replace PPNAT = "niederländisch" in 23
replace PFAMST = 3 in 23
replace PFS0111 = 2 in 23
replace PFS0211 = 2 in 23
replace PFS0311 = 2 in 23
replace PFS1111 = 2 in 23
replace PFS0411 = 1 in 23
replace PFS0511 = 2 in 23
replace PFS0611 = 2 in 23
replace PFS0711 = 2 in 23
replace PFS0811 = 1 in 23
replace PFS0911 = 2 in 23
replace PFS121 = 2 in 23
replace PFS131 = 2 in 23
replace PFS101 = 2 in 23
replace PFS141 = 2 in 23
replace PZUF01 = . in 23
replace PZUF02 = 9 in 23
replace PZUF03 = 6 in 23
replace PZUF04 = 9 in 23
replace PZUF05 = 6 in 23
replace PZUF06 = 8 in 23
replace PZUF07 = 8 in 23
replace PZUF08 = 8 in 23
replace PZUF09 = 9 in 23
replace PZUF10 = 10 in 23
replace PZUF11 = 5 in 23
replace PBER = "Jurist" in 23
replace PVEK012 = 6500 in 23
replace PVEK022= . in 23
replace PPOL1 = 2 in 23
replace PPOL3 = 2 in 23
replace PGR = 189 in 23
replace PKILO = 84 in 23
replace CHHNR = 14 in 23
replace PERSNR = 1307 in 23

* in HH 14, Person 1312

*set obs 24
replace PSEX = 2 in 24
replace PPGEB = 1967 in 24
replace PPNAT = "niederländisch" in 24
replace PFAMST = 3 in 24
replace PFS0111 = 2 in 24
replace PFS0211 = 2 in 24
replace PFS0311 = 2 in 24
replace PFS1111 = 2 in 24
replace PFS0411 = 1 in 24
replace PFS0511 = 2 in 24
replace PFS0611 = 2 in 24
replace PFS0711 = 2 in 24
replace PFS0811 = 2 in 24
replace PFS0911 = 2 in 24
replace PFS121 = 2 in 24
replace PFS131 = 2 in 24
replace PFS101 = 2 in 24
replace PFS141 = 1 in 24
replace PZUF01 = 8 in 24
replace PZUF02 = 8 in 24
replace PZUF03 = 10 in 24
replace PZUF04 = 7 in 24
replace PZUF05 = 6 in 24
replace PZUF06 = 9 in 24
replace PZUF07 = 8 in 24
replace PZUF08 = 5 in 24
replace PZUF09 = 8 in 24
replace PZUF10 = 5 in 24
replace PZUF11 = 9 in 24
replace PBER = "Media Designer" in 24
replace PVEK012 = 1880 in 24
replace PVEK022 = . in 24
replace PPOL1 = 3 in 24
replace PPOL3 = 2 in 24
replace PGR = 164 in 24
replace PKILO = 57 in 24
replace CHHNR = 14 in 24
replace PERSNR = 1312 in 24


saveold raw/cp.dta, replace 

