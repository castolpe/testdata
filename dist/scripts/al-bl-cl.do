clear
version 13

// Fixnamen in SOEP-Namen umbenennen

use $input/al-raw.dta

rename 	LSTA1	al01
rename 	LZUG01	al02
rename 	LZUG02	al03
rename 	LWIED	al04
rename 	LGESCH1	al05
rename 	LAB021	al06
rename 	LAB031	al07
rename 	LAB041	al08
rename 	LAB051	al09
rename 	LAB061	al10
rename 	LAB071	al11
rename 	LAB081	al12
rename 	LKNO	al13
rename 	LKIND	al14

saveold $output/al.dta, replace

use $input/bl-raw.dta

rename 	LSTA1	bl01
rename 	LZUG01	bl02
rename 	LZUG02	bl03
rename 	LWIED	bl04
rename 	LGESCH1	bl05
rename 	LAB021	bl06
rename 	LAB031	bl07
rename 	LAB041	bl08
rename 	LAB051	bl09
rename 	LAB061	bl10
rename 	LAB071	bl11
rename 	LAB081	bl12
rename 	LKNO	bl13
rename 	LKIND	bl14

saveold $output/bl.dta, replace

use $input/cl-raw.dta

rename 	LSTA1	cl01
rename 	LZUG01	cl02
rename 	LZUG02	cl03
rename 	LWIED	cl04
rename 	LGESCH1	cl05
rename 	LAB021	cl06
rename 	LAB031	cl07
rename 	LAB041	cl08
rename 	LAB051	cl09
rename 	LAB061	cl10
rename 	LAB071	cl11
rename 	LAB081	cl12
rename 	LKNO	cl13
rename 	LKIND	cl14

saveold $output/cl.dta, replace


