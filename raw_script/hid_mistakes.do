clear
version 13


*** Hide mistakes in raw-data

** for HH-dataset

clear
cd C:\Users\cstolpe\Desktop\testdata\
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
lab def PPOL3 1 "SPD" 2 "CDU" 3 "CSU" 4 "FDP" 5 "B�ndnis 90 / Die Gr�nen" 6 "Die Linke" 9 "Piraten"
lab val PPOL3 PPOL3

lab var PFS121 "famili�re Ver�nderungen, Kind ist verstorben"
gen PFS141 = .
lab var PFS141 "famili�re Ver�nderungen, Haustier eingezogen"
lab val PFS141 JaNein

save raw\cp-raw.dta, replace
 
/* Sonstige Fehler

PZULE fehlt in cp
PZUF XX Skala von 1-11 statt 0-10 in allen Wellen
