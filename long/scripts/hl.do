clear
version 13 

*** create h-long-data

do long/pathway.do

use $input/ah.dta

gen wave = 2001
lab var wave "Welle"

rename ah01 hkind
rename ah02 hkind_dummy
rename ah03 hgeb_a
rename ah04 hgeb_b
rename ah05 hgeb_c
rename ah06 hgeb_d
rename ah07 hwwechsel
rename ah08 hwgegend
rename ah09 hmiete
rename ah10 hnetto
rename AHHNR HHNR

saveold $temp/ah.dta, replace

clear
use $input/bh.dta

gen wave = 2002
lab var wave "Welle"

rename bh01 hkind
rename bh02 hkind_dummy
rename bh03 hgeb_a
rename bh04 hgeb_b
rename bh05 hgeb_c
rename bh06 hgeb_d
rename bh07 hwwechsel
rename bh08 hwgegend
rename bh09 hmiete
rename bh10 hnetto
rename BHHNR HHNR

saveold $temp/bh.dta, replace

clear
use $input/ch.dta

gen wave = 2003
lab var wave "Welle"

rename ch01 hkind
rename ch02 hkind_dummy
rename ch03 hgeb_a
rename ch04 hgeb_b
rename ch05 hgeb_c
rename ch06 hgeb_d
rename ch07 hwwechsel
rename ch08 hwgegend
rename ch09 hmiete
rename ch10 hnetto
rename CHHNR HHNR

saveold $temp/ch.dta, replace

append using $temp/ah.dta $temp/bh.dta 

sort HHNR wave

saveold $output/hl.dta, replace


