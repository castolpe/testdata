use dist/bh.dta , clear 
 rename bh01 HKIND 
 rename bh02 HKIND_Dummy 
 rename bh03 HKGEBA 
 rename bh04 HKGEBB 
 rename bh05 HKGEBC 
 rename bh06 HKGEBD 
 rename bh07 HVJ 
 rename bh08 HWOHN01 
 rename bh09 HM04 
 rename bh10 HNETTO 
 rename BHHNR BHHNR 
 saveold raw/bh-raw.dta 

