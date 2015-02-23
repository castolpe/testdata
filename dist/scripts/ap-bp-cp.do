clear
version 13 

// Fixnamen in SOEP-Namen umbenennen

use $input/ap-raw.dta

rename	PSEX	ap01
rename	PPGEB	ap02
rename	PPNAT	ap03
rename	PFAMST	ap04
rename	PFS0111	ap05
rename	PFS0211	ap06
rename	PFS0311	ap07
rename	PFS1111	ap08
rename	PFS0411	ap09
rename	PFS0511	ap10
rename	PFS0611	ap11
rename	PFS0711	ap12
rename	PFS0811	ap13
rename	PFS0911	ap14
rename	PFS121	ap15
rename	PFS131	ap16
rename	PFS101	ap17
rename	PZULE1	ap18
rename	PZUF01	ap19
rename	PZUF02	ap20
rename	PZUF03	ap21
rename	PZUF04	ap22
rename	PZUF05	ap23
rename	PZUF06	ap24
rename	PZUF07	ap25
rename	PZUF08	ap26
rename	PZUF09	ap27
rename	PZUF10	ap28
rename	PZUF11	ap29
rename	PBER	ap30
rename	PVEK012	ap31
rename	PVEK022	ap32
rename	PPOL1	ap33
rename	PPOL3	ap34
rename	PGR		ap35
rename	PKILO	ap36

saveold $output/ap.dta, replace

use $input/bp-raw.dta

rename	PSEX	bp01
rename	PPGEB	bp02
rename	PPNAT	bp03
rename	PFAMST	bp04
rename	PFS0111	bp05
rename	PFS0211	bp06
rename	PFS0311	bp07
rename	PFS1111	bp08
rename	PFS0411	bp09
rename	PFS0511	bp10
rename	PFS0611	bp11
rename	PFS0711	bp12
rename	PFS0811	bp13
rename	PFS0911	bp14
rename	PFS121	bp15
rename	PFS131	bp16
rename	PFS101	bp17
rename	PZULE1	bp18
rename	PZUF01	bp19
rename	PZUF02	bp20
rename	PZUF03	bp21
rename	PZUF04	bp22
rename	PZUF05	bp23
rename	PZUF06	bp24
rename	PZUF07	bp25
rename	PZUF08	bp26
rename	PZUF09	bp27
rename	PZUF10	bp28
rename	PZUF11	bp29
rename	PBER	bp30
rename	PVEK012	bp31
rename	PVEK022	bp32
rename	PPOL1	bp33
rename	PPOL3	bp34
rename	PGR		bp35
rename	PKILO	bp36

saveold $output/bp.dta, replace

use $input/cp-raw.dta 

rename	PSEX	cp01
rename	PPGEB	cp02
rename	PPNAT	cp03
rename	PFAMST	cp04
rename	PFS0111	cp05
rename	PFS0211	cp06
rename	PFS0311	cp07
rename	PFS1111	cp08
rename	PFS0411	cp09
rename	PFS0511	cp10
rename	PFS0611	cp11
rename	PFS0711	cp12
rename	PFS0811	cp13
rename	PFS0911	cp14
rename	PFS121	cp15
rename	PFS131	cp16
rename	PFS101	cp17
rename	PZULE1	cp18
rename	PZUF01	cp19
rename	PZUF02	cp20
rename	PZUF03	cp21
rename	PZUF04	cp22
rename	PZUF05	cp23
rename	PZUF06	cp24
rename	PZUF07	cp25
rename	PZUF08	cp26
rename	PZUF09	cp27
rename	PZUF10	cp28
rename	PZUF11	cp29
rename	PBER	cp30
rename	PVEK012	cp31
rename	PVEK022	cp32
rename	PPOL1	cp33
rename	PPOL3	cp34
rename	PGR		cp35
rename	PKILO	cp36
rename	PFS141	cp37

saveold $output/cp.dta, replace

