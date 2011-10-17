--- 
layout: post
title: "Wardriving a Milano: WarBiking nella metropoli"
meta: 
  aktt_tweeted: "1"
  autometa: wardriving kismac netsutmbler warbiking web wpa ssid milano wireless wan lan accesspoint access point wardrive warbike macosx kismet cantenna wep
tags: 
- security
---
![](http://www.lastknight.com/download/20071003_01.jpg)
  
Avevo promesso già prima di VON di pubblicare qualche risultato del survey cittadino di Milano in bicicletta che avevo effettuato qualche settimana fa. Ho atteso qualche tempo per poter dare il **materiale completo** più qualche chicca del **filmato** dei nodi Open direttametne su Google Earth.  
Dopo la conferenza a VON assieme a Raoul Chiesa e Alessio Pennasilico mi sono messo tranquillo ed ho elaborato con calma il prodotto finale...  
  
Con qualche ritardo ma spero apprezzato ecco qui il **megapost con tutti i dati** necessari, che spero diffonderà un po' di luce su un punto di ricerca, quello delle reti wireless e della loro disseminazione, che sembra avere da ciascuno **punti di vista differenti** e dati difformi sul quantità, dislocazione servizi e chi più ne ha più ne metta.  
  
<!--more-->

Il punto di partenza è stato quello di riprendere il lavoro svolto da un paio di amici, Yvette Agostini e Fabio Pietrosanti che per Portel nel 2002 avevano già effettuato un **survey cittadino** di Milano ottenendo i seguenti risultati:  

>Un'auto, tre antenne di cui una direzionale, due portatili con sistema operativo Linux: un week-end a caccia di reti Wi-Fi insicure, con risultati allarmanti.
Complici le insicurezze delle reti senza fili, Portel ha scovato in una sola ora **18 reti**, di cui **12 senza il Wep** (Wired Equivalent Privacy, l'attuale meccanismo di protezione delle reti senza fili).  
> [articolo su Portel](http://www.portel.it/news/10-2002/a-caccia-delle-reti-wireless-insicure-a-milano.html)
  
Com'è la situazione **dopo 5 anni**? In assenza di dati attendibili l'unico modo possibile per avere misurazioni certe è munirsi di **mezzi corazzati**, di **sofisticate tecnologie** e buttarsi allo sbaraglio. Nel mio caso le tecnologie **militari** e segrete sono state:  
  
* Una bicicletta :)  
* Un MacBook *(nero, ovviamente)*...  
* Un ricevitore GPS bluetooth *(un Hamlet, il più economico sul mercato)* 
* Qualche riga di Ruby  
  
Ecco di seguito il nostro eroe e le sofisticate apparecchiature:   

![](http://www.lastknight.com/download/20071003_02.jpg)  
  
Non poteva mancare il **potente mezzo di locomozione** di ovvia estrazione militare:  
  
![](http://www.lastknight.com/download/20071003_03.jpg)  
  
E che dire, poi, del tipico **black hat terrorista** di CHIARA derivazione islamica?  
  
![](http://www.lastknight.com/download/20071003_04.jpg)  
  
Se poi volete vedere qualche altra fotografia potete dare un occhio su Flickr alla ricerca ["wardriving lastknight"](http://flickr.com/search/?q=lastknight%20wardriving&w=32162872%40N00&m=tags).  
  
Quali i **tempi e le modalità**?  
Ho subito pensato che ai fini prettamente statistici **non fosse indicato** utilizzare particolari apparecchiature o antenne: volevo testare quanto **vulnerabile** fosse la rete milanese ad un attaccante che **non disponesse di altro** che le normali tecnologie in uso. Nemmeno un'antenna potenziata.  
Il mio fine, non lo nego, era quello di trovare dati **enormemente contrastanti** con lo studio di Fabio ed Yvette, ma partendo da una medesima base comune. Quindi, non disponendo dell'itinerario seguito da loro mi sono arrangiato con **lo stesso quantitativo di tempo**: esattamente **sessanta minuti** che, ne mio caso, equivalgono a 24 km percorsi in micicletta ad una media **(indovinate un poco?!?!)** di 24 Km orari. Più che sufficienti, direi, per **individuare una rete** senza schizzargli a lato a velocità esorbitanti.  
  
La mia stima si attestava intorno alle **500/600 reti** di cui un terzo circa aperte.  
Dio solo sa di **quanto mi sbagliavo**.  
  
I risultati sono stati **devastanti** e, prima di andare avanti con i numeri mi piacerebbe mostrarvi l'effetto ottico dei dati alla prima impressione, dopo aver convertito i dati dal formato NetStumbler testo in KML, il formato base di Google Earth.  
Buona visione:  
  
<object width="425" height="350"><param name="movie" value="http://www.youtube.com/v/0MMxho6zI48"></param><param name="wmode" value="transparent"></param><embed src="http://www.youtube.com/v/0MMxho6zI48" type="application/x-shockwave-flash" wmode="transparent" width="425" height="350"></embed></object>  
  
Fa una certa impressione, vero?  
Un paio di dati:  
  
* Un totale di **2418** nodi individuati.  
* **833** nodi WEP  
* **851** nodi WPA
* ...e un assurdo valore di **734** nodi OPEN  
  
Qualche **considerazione a caldo** è però necessaria:  
  
Innanzitutto è innegabile che **buona parte dei nodi Open siano Captive Portals**. Ad una **analisi spannometrica** i captive risultano essere circa il 35%. Rimangono comunque più di **600 nodi** open.  
Molto più interessanti sono invece **i nodi WEP che non sono, ovviamente, open** e non sono Captive Portals per definzione,sono forzabili in meno di 5 minuti con aircrack-ng o direttamente con la distribuzione BackTrack.  
In ultima analisi la **predominanza del protocollo WPA2** mi aveva rincuorato particolarmente. **"Finalmente** - mi dicevo - *la gente ha capito che cosa sia la sicurazza..."*. **Ovviamente mi sbagliavo** se teniamo conto che più dell' **80% di quei noti** erano, in realtà, access point di **Alice** configurati in WPA per default. Meglio, comunque, che nulla...  
  
per chi non avesse voglia di rifarsi i calcoli manualmente posso facilmente affermare che alla luce dei dati aggregati tra reti OPEN e reti WEB **(e quindi "apribili")** la situazione di Milano Wireless è così messa:  
  
* **851** reti sicure
* **1567** reti vulnerabili
* ...che si riassume agilmente dicendo che il **63%** delle reti milanesi sono **VULNERABILI** ai rischi di potenziali intrusioni.
  
Cosa altro recuperare? Beh, i dati raccolgono oltre alla tipologia di rete ed al nome dell'SSID anche la **potenza del segnale**, il **costruttore dell'apparato** ed il **mac address** dello stesso. Tutti dati che potrebbero sicuramente **fare gola** a chiunque voglia stilare un **survey reale della diffusione** degli apparati e delle **quote di penetrazione sul mercato** dei singoli vendor...  
Che ne dite, dovrei vendere i dati? Perchè no? Se qualche vendor è interessato mi faccia sapere e possiamo agilmente trovare un accordo...  
  
Ribadendo che questo **non è uno studio universitario** e che sicuramente esistono **motivazioni ed eccezioni** che eccepiscono qualche mio ragionamento, vi invito a prendere i numeri per quello che sono e di pensare ad una sorta di **indice percentuale medio** di riferimento... Chissà, forse prima o poi pubblicherò **gli altri 9000 punti**... :)  
  
Per chi mi ha chiesto di **dare un'occhiata alla presentazione** ecco qui di sotto le slide che ho presentato.  
  
<object type="application/x-shockwave-flash" data="http://s3.amazonaws.com/slideshare/ssplayer.swf?id=124410&doc=wardriving-milano3191" width="425" height="348"><param name="movie" value="http://s3.amazonaws.com/slideshare/ssplayer.swf?id=124410&doc=wardriving-milano3191" /></object>
    
Per il resto rimangono aperte una **serie di analisi** che sono possibili e mi piacerebbe completare per cui, ancora una volta, chiedo: **"Chi è interessato a collaborare?".** L'[altra volta](http://www.lastknight.com/2007/07/10/collaboriamo-lastknight-dot-lab/) ho ricevuto un mare di consensi che sono sfociati in implementazioni **di tutto rispetto** dei vari talk e dei progetti relativi. **Riproviamoci** e vediamo cosa riusciamo ad ottenere anche questa volta!   
   
