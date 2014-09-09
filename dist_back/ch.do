use dist/ch.dta , clear 
 rename ch01 HKIND 
 rename ch02 HKIND_Dummy 
 rename ch03 HKGEBA 
 rename ch04 HKGEBB 
 rename ch05 HKGEBC 
 rename ch06 HKGEBD 
 rename ch07 HVJ 
 rename ch08 HWOHN01 
 rename ch09 HM04 
 rename ch10 HNETTO 
 rename CHHNR CHHNR 
 saveold raw/ch-raw.dta 

