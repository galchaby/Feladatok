# BVA feladat:

•	Bemenet  
o	integer, az életkor  
•	Kimenet:  
o	Ha a felhasználó 1-17 év között van: “Nem vagy jogosult a vásárlásra”  
o	Ha a felhasználó 18-59 év között van: “Üdvözlünk a boltban”  
o	Ha a felhasználó 60+ év között van: “Üdvözlünk a boltban, keresd a kedvezményeket”  

# Ekvivalencia osztályok feladat:

Elsőverzió  
•	Bemenet  
o	integer, az életkor  
•	Kimenet  
o	1-14: “A kategória”  
o	15-25: “B kategória”  
o	26-60: “C kategória”  
o	60+: “D kategória”  

Másodikverzió  
•	Bemenet  
o	integer, az életkor  
o	integer, a kereset  
•	Kimenet – fenti kategóriák kiegészítve 1-3 számmal, pl A2 vagy D3  
o	0 és 100’000 között: 1  
o	100’000 és 1’000’000 között: 2  
o	1’000’000 felett: 3  

# Döntési tábla feladat:  

Egy vállalatnál a következőképpen számítják ki az eves bónuszt. A figyelembevett tényezők a cégnél eltöltött idő, pozíció és teljesítmény. A lehetséges pozíciók a mérnök, középvezető és felsővezető (ha tranzisztorokat gyártanánk, lehetne félvezető is, de nem azt gyártunk). A teljesítményeket alulteljesített és túlteljesített kategóriákba sorolják. A cégnél eltöltött idő 0-10, 10-20 és 20+ kategóriákra bomlik. Alulteljesítés esetén nem jár bónusz, ha 0-10 kategóriába esik. A mérnök alapbónusz 20%, a középvezető 35%, a felsővezető pedig 50%. 10-20 kategóriabónusz 15%-ot, 20+ kategória pedig bónusz 30+-ot kap, ha túlteljesített.
•	Bemenet  
o	integer, cégnél eltöltöt tidő  
o	string, a pozíció  
o	bool, teljesítmény TRUE-túlteljesített, FALSE-alulteljesített  
•	Kimenet  
o	Bónusz  

# Állapot átmenet feladat: 

A garázskapunk állapotait jelenítsük meg kódban a következőképpen:
1.	Zárt állapotból indulunk (ezt ki is írjuk)
2.	Kiírjuk, hogy milyen új bemenetet adhatunk az ajtónak következőleg (plusz kilépés opció)
3.	Felhasználó beírja az új bemenetet
4.	Beolvassuk az új bemenetet
5.	Kiírjuk az új állapotot és hogy milyen bemenetet adhatunk az ajtónak következőleg (plusz kilépés opció)
6.	Ezeket addig csináljuk, amíg kilépünk a scriptből
