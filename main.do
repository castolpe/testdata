clear
version 13


// raw - Aufwuchssample B + Fehler in Rohdaten eingebaut

*do raw_script\sample_b.do
*do raw_script\hid_mistakes.do

STOP

// dist - Fixnamen in SOEP-Namen ändern + Generierungen + Gewichte

do dist_script\ah-bh-ch.do
do dist_script\ap-bp-cp.do
do dist_script\al-bl-cl.do
do dist_script\hgen.do
do dist_script\pgen.do 
do dist_script\pweight.do
do dist_script\hweight.do


STOP

// long - Long-Datensatz

do long_script\hl.do
do long_script\pl.do




