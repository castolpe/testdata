use dist/ap.dta , clear 
 rename ap01 PSEX 
 rename ap02 PPGEB 
 rename ap03 PPNAT 
 rename ap04 PFAMST 
 rename ap05 PFS0111 
 rename ap06 PFS0211 
 rename ap07 PFS0311 
 rename ap08 PFS1111 
 rename ap09 PFS0411 
 rename ap10 PFS0511 
 rename ap11 PFS0611 
 rename ap12 PFS0711 
 rename ap13 PFS0811 
 rename ap14 PFS0911 
 rename ap15 PFS121 
 rename ap16 PFS131 
 rename ap17 PFS101 
 rename ap18 PZULE1 
 rename ap19 PZUF01 
 rename ap20 PZUF02 
 rename ap21 PZUF03 
 rename ap22 PZUF04 
 rename ap23 PZUF05 
 rename ap24 PZUF06 
 rename ap25 PZUF07 
 rename ap26 PZUF08 
 rename ap27 PZUF09 
 rename ap28 PZUF10 
 rename ap29 PZUF11 
 rename ap30 PBER 
 rename ap31 PVEK012 
 rename ap32 PVEK022 
 rename ap33 PPOL1 
 rename ap34 PPOL3 
 rename ap35 PGR 
 rename ap36 PKILO 
 rename AHHNR AHHNR 
 rename PERSNR PERSNR 
 saveold raw/ap-raw.dta 
