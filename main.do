clear
version 13

* Rohdaten in dist/input kopieren

local filelist: dir raw files "*"
foreach file of local filelist {
	copy raw/`file' dist/input/, replace
}

* main.do für Ordner ./dist/ ausführen

do dist/main.do


* Daten aus dist/output in long/input kopieren

local filelist: dir "dist/output" files "*"
foreach file of local filelist {
	copy dist/output/`file' long/input/, replace
}

do long/main.do




