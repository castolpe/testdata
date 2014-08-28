clear
version 13 

*** create h-long-data

use process\output1\de\ah.dta

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

save process\scripts2\meta\ah.dta, replace

clear
use process\output1\de\bh.dta

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

save process\scripts2\meta\bh.dta, replace

clear
use process\output1\de\ch.dta

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

save process\scripts2\meta\ch.dta, replace

append using process\scripts2\meta\ah.dta process\scripts2\meta\bh.dta 

sort HHNR wave

save process\output2\hl.dta, replace


