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

Unter Linux muss obiger Inhalt in der Datei "/etc/resolv.conf" ergänzt werden.


Starten der VMs
---------------

Mit

> vagrant up

kann Initial die Umgebung eingerichtet und angestartet werden. Da Vagrant dafü einige Downlaods durchführt wird für das Setup
einige Zeit in Anspruch genommen. Zum Ende dieses Zeitpunktes stehen drei virtuelel Maschinen zur Verfügung die alle mit Puppet bestückt sind.
Allerdings ist Puppet dann noch nicht für den Einsatz konfiguriert.
 
Konfigurieren des Puppet Servers
--------------------------------
Nun sind noch einige Nacharbeiten notwendig um die Puppet Testumgebung aufzubauen. In diesem Schritt richten wir den Puppetserver ein.
auf "puppet.v.bbvsws.de" muss der puppetserver noch gestartet werden. Dies erfolgt folgendermaßen:

> vagrant ssh puppet
> sudo service puppetserver start

Konfigurieren der Puppet Clients
--------------------------------
 
Standardmäßig sind zwei clients eingerichtet. Die folgenden Schritte sind für alle clients zu wiederholen.

####Auf dem Client:

> vagrant ssh client1
> sudo /opt/puppetlabs/bin/puppet agent --test --server puppet.v.bbvsws.de 

####Auf dem Server:

> sudo /opt/puppetlabs/bin/puppet cert list
> sudo /opt/puppetlabs/bin/puppet cert sign <NAME>
 
####Auf dem Client:

> sudo /opt/puppetlabs/bin/puppetdb ssl-setup -f
 
Standardmäßig ist ein automatisches Update der clients nicht eingerichtet, da dies beim Testen stören würde.
Ein Update auf einem Client kann durch den Befehl 
> sudo /opt/puppetlabs/bin/puppet agent --test --server puppet.v.bbvsws.de jederzeit angestoßen werden.
 
Anmerkungen
-----------
 
Es wird Puppet 4.7 installiert. Die allermeisten Tutorials im Internet setzen noch auf eine Puppet Verssion 3 oder kleiner. Damit stimmen in diesen Tutorials 
die Pfade nicht.
Ein korrekte Pfadangabe für Puppet 4.7 findet sich unter:
 
* [Puppetpfadangaben](https://docs.puppet.com/puppet/4.7/reference/dirs_codedir.html)
 

