--- 
layout: post
title: "Typhoid Adware: anche i pc prenderanno il tifo."
meta: 
  wordbooker_options: "a:9:{s:18:\"wordbook_noncename\";s:10:\"cda5a46d23\";s:18:\"wordbook_page_post\";s:15:\"131388540210117\";s:18:\"wordbook_orandpage\";s:1:\"1\";s:23:\"wordbook_default_author\";s:1:\"1\";s:23:\"wordbook_extract_length\";s:3:\"256\";s:19:\"wordbook_actionlink\";s:3:\"300\";s:26:\"wordbooker_publish_default\";s:2:\"on\";s:18:\"wordbook_attribute\";s:7:\"%title%\";s:29:\"wordbooker_status_update_text\";s:35:\": New blog post :  %title% - %link%\";}"
  _edit_last: "1"
  WP-Ellie: a:1:{s:12:"remove_thumb";s:0:"";}
tags: 
- adware
- featured
- malware
- security- troyan
- typhoid
- typhoid adware
- virus
---
Lo scorso maggio il team di ricercatori guidato dal professor [John Aycock][paper-aycock] ha presentato all'EICAR (conferenza annuale sull' IT-Security) un interessante sistema per diffondere adware e malware all'interno di reti poco protette.  
  
<a href="http://www.flickr.com/photos/99527366@N00/4092671973/" title="Yahoo! & Times Square Alliance Free WiFi" target="_blank"><img src="http://farm3.static.flickr.com/2766/4092671973_1c788caa39.jpg" alt="Yahoo! & Times Square Alliance Free WiFi" border="0" /></a>  
<small><a href="http://creativecommons.org/licenses/by/2.0/" title="Attribution License" target="_blank"><img src="http://www.lastknight.com/wp-content/plugins/photo-dropper/images/cc.png" alt="Creative Commons License" border="0" width="16" height="16" align="absmiddle" /></a> <a href="http://www.photodropper.com/photos/" target="_blank">photo</a> credit: <a href="http://www.flickr.com/photos/99527366@N00/4092671973/" title="Yodel Anecdotal" target="_blank">Yodel Anecdotal</a></small>
  
Come tutti ben sappiamo, gli adware sono quei programmi che spesso arrivano sul nostro computer sotto le mentite spoglie di giochini o screen saver e ci infastidiscono durante la navigazione pubblicizzando prodotti di varia natura (e che possiamo eliminare con FoolDNS Community).  
  
"Typhoid adware" è il nome di questo nuovo tipo di infezione che è mutuato dal nome della prima paziente identificata negli Stati Uniti come portatrice sana di febbre tifoide, Mary Mallon altrimenti detta Typhoid Mary. Questa signora contagiò 47 vittime prima di capire di essere malata.  
  
L'idea dei ricercatori Canadesi è abbastanza semplice: un attacco "Man in the middle" in cui un PC già infetto, fingendo di essere un gateway, eroga agli altri utenti di una rete pagine web, script e video modificati ad hoc. L'attacco è subdolo perchè il vettore del contagio (il finto gateway) non noterà anomalie, mentre le altre vittime (inondate dagli ads) cercheranno invano programmi malevoli sui propri computer.
  
Perchè vale la pena approfondire questo argomento?  
Perchè si tratta di una minaccia di semplice realizzazione con la quale probabilmente ci dovremo confrontare.  
  
Mentre saremo nel nostro internet cafè preferito (o in qualsiasi altro luogo abbastanza affollato), potremmo notare layer piuttosto invadenti che si sovrappongono alle pagine che visitiamo, o video pubblicitari che precedono i filmati di youtube.  
  
[Il lavoro del professor Aycock e dei suoi collaboratori][paper-aycock] si è soffermato su un solo (seppur abbastanza frequente) scenario: ARP spoofing e modifica dei contenuti web su reti non protette.  
  
Come molti sapranno, l'[ARP][arp-wikipedia] (Address Resolution Protocol) è quel protocollo a cui è demandato il compito di effettuare una corrispondenza tra gli IP ed i MAC address in una rete locale.  
L' ARP cache poisoning (letteralmente "avvelenamento della cache ARP") è una tecnica che consiste nell'inviare messaggi forgiati in modo da confondere gli apparati di rete, che inoltreranno presso l'attaccante il traffico destinato ad altri.  
  
I tool utilizzati dai ricercatori Canadesi per realizzare questo "proof of concept" sono alla portata di tutti:  

* arpspoof (package dsniff nei repository Debian/Ubuntu), per avvelenare le tabelle ARP;
* TinyProxy, semplice proxy HTTP scritto in Python all'interno del quale si possono implementare le funzioni per la modifica dei contenuti web;
* iptables, per redirigere il traffico verso i reali destinatari.
  
Ovviamente l'ARP spoofing è solo uno dei possibili modi di implementare un typhoid adware.  
Esistono molti altri attacchi della categoria "Man in the middle" (come lo switch port stealing, icmp redirect, evil twin) applicabili o meno a seconda della topologia della rete e tutti [ampiamente documentati][oilpj-mitm].  
  
A questo proposito, è interessante notare come una nuova feature di Windows 7, il [Virtual Wi-fi][vwifi], ben si presti ad un attacco "Evil twin", in cui l' ignaro "portatore sano" potrebbe esporre una propria rete "fasulla" con lo stesso SSID della rete legittima. 
  
L'overhead dovuto all'intercettazione del traffico, modifica dei contenuti ed inoltro verso i reali destinatari è tutto sommato accettabile: nei test effettuati dai ricercatori si aggira intorno ai 3 secondi nel caso in cui l'attaccante voglia modificare un video richiesto su youtube, molto meno, invece, se ci si limita ad iniettare testo nelle pagine HTML [1].  
  
**Come possiamo difenderci?**  
  
In reti  dove vi siano una buona cultura della sicurezza ed amministratori competenti, il typhoid adware ha poche speranze.  
Esistono diversi tool che consentono di rilevare buona parte delle tipologie di attacco note, ma spesso gli amministratori di rete non approfondiscono queste tematiche (sigh!): stiamo parlando di reti spesso improvvisate, per cui resta una larga fetta di luoghi a rischio che probabilmente frequentiamo.  
  
Nel caso specifico dell'ARP poisoning, l'utilizzo di [tabelle statiche][contromisure-arp] vanificherebbe l'attacco, ma in reti grandi con un elevato turnover di utenti questa contromisura è impraticabile.  
L'utilizzo di un buon firewall è utile per non divenire vettori inconsapevoli del contagio, ma è completamente inutile nel caso in cui dobbiamo difenderci dagli ads.  
Prestiamo attenzione agli access point "aperti", nei quali spesso ci fiondiamo senza pensarci neanche mezza volta e nei luoghi affollati, facciamo caso alla potenza del segnale, che non può essere "Ottimo" se l'access point è lontano!
In attesa che i produttori di antivirus prendano in seria considerazione questo tipo di minaccia non ci resta che alzare un po' il livello di allerta, quindi prudenza e buon senso! Siete stati avvertiti ;-)  
  
<i> Articolo in collaborazione con **Giuseppe Saviano**</i>

[1] : i pc "vittima" ed "attaccante inconsapevole" usati per i test sono rispettivamente:

* 1.5 GHz Intel Celeron, 2 Gb RAM, Ubuntu Linux 8.04, 100 Mbps Ethernet, 802.11g wireless.
* 1.8 GHz Intel Core2 Duo, 3 Gb RAM, Ubuntu Linux 9.04, 100 Mbps Ethernet, 802.11b/g wireless.
* Maggiori dettagli su test e metriche sono riportati nel [paper][paper-aycock] oggetto dell'articolo.

[paper-aycock]: http://pages.cpsc.ucalgary.ca/~aycock/papers/eicar10.pdf
[arp-wikipedia]: http://it.wikipedia.org/wiki/Address_Resolution_Protocol
[vwifi]: http://www.istartedsomething.com/20090516/windows-7-native-virtual-wifi-technology-microsoft-research/
[contromisure-arp]: http://it.wikipedia.org/wiki/ARP_poisoning#Contromisure
[oilpj-mitm]: http://www.oilproject.org/EVENT188 
