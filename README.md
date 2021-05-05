# SzoftverFejl_zh

Föld körül keringő űrhajót szimulálja a program , föld körül 4 pont van megadva azokat elérve vált a következőre. 

Space-el megállítható az idő, és újraindítható .

Miközben megy az idő ESC-el előhívható az új pont hozzáadó menü. Pontokat a motor saját koordináta rendszere 
szerint kell megadni , példák vannak rá a menüben. ha a Föld másik feléről akarunk pontot megadni érdemes nem azonnal oda menni , hanem beiktatni egy
köztes pontot , mivel két pont között lineárisan próbál eljutni különböző változtatásokkal amik megadják a röpplyát, szóval ha a a Föld másik felére írna be pontot
akkor megpróbál a földön átmenni egyenesen , ami pedig nincsen megengedve , és ezért megáll egy helyben. 

Telepítés: executable mappában van a futtatható állomány , további teendő ezzel nincsen. 

Futtatáshoz nem szükséges más program , a programot Godot 3.3 - ban írtam. 
