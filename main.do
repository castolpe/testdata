clear
version 13


// Mögliche Fehler werden zur Simulation eingebaut
// Aufwuchssample B in Welle C hinzugefügt


do raw_script\hid_mistakes.do
do raw_script\sample_b.do



// Fixnamen in SOEP-Namen umbenennen
// BMI-Datensatz generieren


do dist_script\ah-bh-ch.do
do dist_script\ap-bp-cp.do
do dist_script\hgen.do
*do dist_script\pgen.do
do dist_script\pweight.do
do dist_script\hweight.do



// Long-Datensatz


do long_script\hl.do
do long_script\pl.do




