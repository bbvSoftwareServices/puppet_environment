Aufsetzen der Puppet Umgebung
=============================

Dieses Projekt benötigt zur Installation folgende Komponenten für einen erfolgreichen Anfang:
 
 - [virtualbox](https://www.virtualbox.org/wiki/Downloads "Virtualbox Download")
 - [vagrant](www.virtualbox.org/wiki/Downloads "Vagrant Download")
 
 Desweiteren ist es Notwendig im Hostsystem mehrere IP Adressen einzutragen, damit die Umgebung erfolgreich funktioniert.
 
Windows 10
----------

Unter Windows 10 muss die Datei "C:\Windows\System\32\drivers\etc\hosts"  angepasst werden.
Folgender Inhalt sollte dort ergänzt werden : 

>192.168.179.12 puppet.v.bbvsws.de
>192.168.179.13 client1.v.bbvsws.de
>192.168.179.14 client2.v.bbvsws.de

Linux
-----

Unter Linxu muss obiger Inhalt in der Datei "/etc/resolv.conf" ergänzt werden.


Starten der VMs
---------------

Mit

> vagrant up

kann Initial die Umgebung eingerichtet und angestartet werden. Da Vagrant dafü einige Downlaods durchführt wird für das Setup
einige Zeit in Anspruch genommen. Zum Ende dieses Zeitpunktes stehen drei virtuelel Maschinen zur Verfügung die alle mit Puppet bestückt sind.
Allerdings ist Puppet dann noch nicht für den Einsatz konfiguriert.
 
Konfigurieren des Puppet Servers
--------------------------------
 

