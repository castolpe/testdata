clear
version 13

* Main.do f�r Ordner ./dist/

*Fixnamen in SOEP-Namen umbennenen 
do dist/scripts/ah-bh-ch.do
do dist/scripts/ap-bp-cp.do
do dist/scripts/al-bl-cl.do

* Generierte Datens�tze + Gewichte
do dist/scripts/hgen.do
do dist/scripts/pgen.do 
do dist/scripts/pweight.do
do dist/scripts/hweight.do



