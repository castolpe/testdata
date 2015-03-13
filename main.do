clear
version 13

* Copy raw data to ./dist/input

local filelist: dir raw files "*"
foreach file of local filelist {
	copy raw/`file' dist/input/, replace
}

*  Run main.do for ./dist/ dirctory 

cd ./dist 
do main.do


* Copy data from ./dist/output to ./long/input

cd ..

local filelist: dir "dist/output" files "*"
foreach file of local filelist {
	copy dist/output/`file' long/input/, replace
}

* Run main.do for ./long/ directory

cd ./long
do main.do




