clear
version 13

* Main.do ./dist

* Rename Variables (Fixnames -> SOEP standard)
do scripts/ah-bh-ch.do
do scripts/ap-bp-cp.do
do scripts/al-bl-cl.do

* Generated datasets + weights
do scripts/hgen.do
do scripts/pgen.do 
do scripts/pweight.do
do scripts/hweight.do



