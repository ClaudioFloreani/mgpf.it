--- 
layout: post
status: ok
title: "(in)sicurezza: Come ti cracco l'abbonamento dell'Autobus"
meta: {}
tags: 
- hacking
---
Quando parlo di OpenSource durante le conferenze e della intrinseca maggiore sicurezza di protocolli e prodotti OSS, normalmente vengo etichettato a seconda degli uditori come un pazzo o un centrosocialino: in ambedue i casi la gente sembra non voler accettare l'idea che una sicurezza basata sulla riservatezza e sulla segretezza di algoritmi raramente si sposa con una effettiva prova sul campo delle qualità intrinseche.  
  
La "Security Through Obscurity", come viene chiamata in gergo tecnico, ha dimostrato di non funzionare nel tempo e di essere totalmente inaffidabile in svariati e multiformi aspetti. E se non credete a me potete per lo meno fidarvi un poco di più di Bruce Schneier in [questo numero][1] di Cryptogram. Chi ne ha fatto la scoperta nel corso delle ultime due settimane sono le carte RFID più diffuse al mondo in ambiente di trasporto pubblico, le "Mifare Classic" prodotte da NXP (ex Philips Semiconductors), carte che nel mondo sono utilizzate, tra l'altro, dalle Metropolitane Londinesi e dal Trasporto Pubblico Olandese.  
  
Le carte in questione sono le famose "contactless" RFID (Radio Frequency IDentification) che non necessitano della famosa "strisciata" ma che, al contrario, possono essere lette a distanza.  
Il produttore ha ancora una volta utilizzato il vecchio detto secondo il quale "io solo le faccio, io solo le leggo" ed invece di appoggiarsi ad uno standard crittografico conosciuto e testato ha deciso di inventarsi CRYPTO-1, cifratura proprietaria a 48bit brevettata quale segreto industriale e contenuta appunto nelle Mifare Classic.  
  
Ma se è pur vero che molti possiedono le capacità ingegneristiche per una nuova invenzione commerciale, è anche vero non non tutti questi hanno le necessarie capacità anche in fatto di Crittanalisi e così, in parallelo, due differenti gruppi di ricercatori sono riusciti a forzare agilmente CRYPTO-1.  
  
Lunedì 11 marzo i ricercatori Karsten Nohl ed Henryk Plötz, che in dicembre al [CCC avevano dimostrato][2] i loro sforzi nel cracking della piattaforma, hanno pubblicato un paper dimostrando come craccare la tecnologia di cifratura. Il duo si è rifiutato di dimostrare pubblicamente l'attacco dichiarando in perfetto spirito di Responsible Disclosure che la loro intenzione era in primo luogo quella di aprire il dibattito sulla piattaforma, dando tempo a vendor e utenti di cambiare piattaforma o di correggere le problematiche.  
  
Già, perché si calcola che le schede con tecnologia Mifare Classic ad oggi impiegate attivamente in sistemi di identificazione e di pagamento in abito militare e civile ammontino a circa due miliardi di unità, un numero che impressiona considerando i risvolti di sicurezza ed economici dietro al cracking della piattaforma che rende, di fatto, possibile la clonazione delle carte stesse.  
  
E se il clima poteva parere quello di allerta e non di pericolo, a movimentare le acque ci ha pensato nella giornata di mercoledì Bart Jacobs, professore di Sicurezza dell'Informazione presso la Radboud University di Nijmegen, che non solamente ha [dimostrato l'attacco][3], ma si è inoltre prodigato nella publicazione di un interessantissima video dimostrazione, oltre al [paper][3] di rito.  
  
{% youtube NW3RGbQTLhE %}

Nella pratica, la rottura dell'algoritmo di cifratura consente la lettura e la scrittura di contenuti nel dispositivo o su di un omologo. Che non sembrerebbe di per sé molto importante se non si tenesse conto del fatto che l'identificativo memorizzato e cifrato, di fatto autentica il portatore presso il terminale di lettura.  
Un eventuale utente malintenzionato (che ammetto che in italiano suona molto più buffo dell'inglese "malicious user") ha facoltà quindi di intraprendere una serie di azioni poco gradite al gestore, come ad esempio:  
  
* Leggere remotamente sino ad un metro di distanza gli identificativi univoci delle tessere dei passanti, di fatto schedandoli;  
* Creare nuove tessere con identificativi spuri che il sistema possa tentare di validare;  
* ed infine creare una tessera contenente uno degli identificativi rubati ad ignari passanti, di fatto clonandone la carta  
  
E la clonazione della carta è tutt'altro che un problema di poco conto: le carte Mifare Classic vengono utilizzate anche come "borsellino digitale" e come tessere di accesso ad aree ad accesso controllato.  
  
Cosa dire per concludere? Che come emerge nella [press release][4] dell'istituto, non esistono al momento contromisure. E che le apparecchiature necessarie per il cracking non arrivano a 3000 euro di costi, rendendo la clonazione non una minaccia ma una realtà di fatto e costringendo ora un vendor a correre per l'ennesima volta ai ripari per colpa di una politica di sicurezza sciocca e ben poco lungimirante.  
  
Eh sì che la via, forse definitiva, era già stata tracciata nel 1880 circa da Kerckhoffs che con il famoso "Principio di Kerckhoffs" enunciava che un sistema crittografico dovrebbe essere sicuro, anche se tutto in merito al sistema stesso, tranne la chiave, è di pubblico dominio. Ed è stato riformulato anche da Claude Shannon con la sua frase "il nemico conosce il sistema". Nemmeno da dire che i sistemi crittografici moderni più sicuri come AES, Twofish e Serpent appartengono a questa categoria ed il loro funzionamento è pubblico e disponibile a chiunque.  
  
Ed è ovviamente naturale che in un contesto di libertà di studio e di disponibilità degli algoritmi, la routine crittografica sia vagliata da centinaia di esperti in più in tutto il mondo e, quindi, testata in modo approfondito e minuzioso. Processo questo non utilizzabile, ovviamente, sui sistemi chiusi. Suona molto vicino alla filosofia Open Source? Ci potete scommettere.  
  
Ed ora tutti a correre ai ripari, mi raccomando. Forse anche in casa nostra se è vero che, come si legge nella consultazione al Garante [disponibile qui][5] la tecnologia adottata da ATM Milano per l'abbonamento elettronico "(...) operativo in via sperimentale dal 2005 con una tessera elettronica che si avvale di tecnologie diverse (Mifare e Calypso)". A voi, come compito delle vacanze, ricercare che modello viene utilizzato.  
  
Ancora una volta Estote Parati.
[1]: http://www.schneier.com/crypto-gram-0205.html#1
[2]: http://events.ccc.de/congress/2007/Fahrplan/events/2378.en.html
[3]: http://www.ru.nl/ds/research/rfid/
[4]: http://www2.ru.nl/media/pressrelease.pdf
[5]: http://www.garanteprivacy.it/garante/doc.jsp?ID=1339692
 
