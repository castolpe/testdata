clear
version 13

// Fixnamen in SOEP-Namen umbenennen

use "raw\ah-raw.dta"

rename	HKIND	ah01
rename	HKIND_Dummy	ah02
rename	HKGEBA	ah03
rename	HKGEBB	ah04
rename	HKGEBC	ah05
rename	HKGEBD	ah06
rename	HVJ		ah07
rename	HWOHN01	ah08
rename	HM04	ah09
rename	HNETTO	ah10


saveold "dist\ah.dta", replace

use "raw\bh-raw.dta"

rename	HKIND	bh01
rename	HKIND_Dummy	bh02
rename	HKGEBA	bh03
rename	HKGEBB	bh04
rename	HKGEBC	bh05
rename	HKGEBD	bh06
rename	HVJ		bh07
rename	HWOHN01	bh08
rename	HM04	bh09
rename	HNETTO	bh10


saveold "dist\bh.dta", replace

use "raw\ch-raw.dta" 

rename	HKIND	ch01
rename	HKIND_Dummy	ch02
rename	HKGEBA	ch03
rename	HKGEBB	ch04
rename	HKGEBC	ch05
rename	HKGEBD	ch06
rename	HVJ		ch07
rename	HWOHN01	ch08
rename	HM04	ch09
rename	HNETTO	ch10


saveold "dist\ch.dta", replace
