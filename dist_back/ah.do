use dist/ah.dta , clear 
 rename ah01 HKIND 
 rename ah02 HKIND_Dummy 
 rename ah03 HKGEBA 
 rename ah04 HKGEBB 
 rename ah05 HKGEBC 
 rename ah06 HKGEBD 
 rename ah07 HVJ 
 rename ah08 HWOHN01 
 rename ah09 HM04 
 rename ah10 HNETTO 
 rename AHHNR AHHNR 
 saveold raw/ah-raw.dta 

