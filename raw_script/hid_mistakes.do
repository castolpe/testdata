clear
version 13


*** Hide mistakes in raw-data

** for HH-dataset

clear
use raw\bh-raw.dta 
recode HVJ (1=2)(2=1)
save raw\bh-raw.dta, replace 

clear
use raw\ch-raw.dta 
recode HVJ (1=2)(2=1)
save raw\ch-raw.dta, replace 


** for P-dataset

clear
use raw\ap-raw.dta
recode PSEX (1=2) (2=1)
save raw\ap-raw.dta, replace 


clear
use raw\bp-raw.dta
recode PSEX (1=2) (2=1)
save raw\bp-raw.dta, replace 


clear
use raw\cp-raw.dta

replace PPOL3 = 9 in 10
replace PPOL3 = 9 in 9
*lab def PPOL3 1 "SPD" 2 "CDU" 3 "CSU" 4 "FDP" 5 "Bündnis 90 / Die Grünen" 6 "Die Linke" 9 "Piraten"
lab val PPOL3 PPOL3

lab var PFS121 "familiäre Veränderungen, Kind ist verstorben"
lab var PFS141 "familiäre Veränderungen, Haustier eingezogen"
lab val PFS141 JaNein

replace PFS141 = 1 in 1
replace PFS141 = 1 in 2
replace PFS141 = 1 in 3
replace PFS141 = 1 in 4
replace PFS141 = 2 in 5
replace PFS141 = 2 in 6
replace PFS141 = 2 in 7
replace PFS141 = 2 in 8
replace PFS141 = 2 in 9
replace PFS141 = 2 in 10
replace PFS141 = 1 in 11
replace PFS141 = 2 in 12
replace PFS141 = 2 in 13
replace PFS141 = 2 in 14
replace PFS141 = 2 in 15
replace PFS141 = 2 in 16
replace PFS141 = 2 in 17
replace PFS141 = 2 in 18
replace PFS141 = 2 in 19
replace PFS141 = 2 in 20


save raw\cp-raw.dta, replace
 
/* Sonstige Fehler

PZULE fehlt in cp
PZUF XX Skala von 1-11 statt 0-10 in allen Wellen
