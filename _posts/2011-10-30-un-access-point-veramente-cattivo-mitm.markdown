--- 
status: ok
layout: post
title: "Un'idea per un Access Point VERAMENTE cattivo"
meta: {}
tags: 
- hacking
- evil-ideas
---

Era il 2007 quando pubblicavo il mio [articolo][1] sul Wardriving a Milano e realizzavo il filmato qui sotto:

{% youtube 0MMxho6zI48%}

Il testo completo dell'articolo è disponibile [online][1] negli archivi appena salvati di [lastknight.com][1], insieme alle [slides][2] (effettivamente molto divertenti) ed a un po' di informazioni e fotografie divertenti dell'apparato da [warbiking][1].  
  
In quella sede avevo anche, per gioco, aperto un Access Point libero (dal nome "Free Internet") cche non faceva altro che dare connessione sniffando password e metriche sui dati. Per vedere quanta gente si sarebbe loggata. Ed, effettivamente, ve n'era stata un bel po' :)  
  
La mancanza di tempo mi spinge a pubblicare liberamente l'idea malvagia (che rimarrà da oggi in poi nel tag "[evil-ideas](/tags/evil-ideas)") che mi frullava per la testa sperando che qualcuno adotti questa idea orfana di tempo e si diverta come è giusto che sia e come meriterebbe una vision così _bastarda_ come questa...  
  
La scorsa volta mi sono messo ad aprire un nodo e ad anonimizzare i risultati dell'analisi, così per non incappare in scomodissimi problemi legali. Ma è possibile farlo legalmente? Secondo me quasi, ma chiedo aiuto ad un po' di amici avvocati per i commenti (aggiungeteli qui in coda) alla metodologia che qui segnalo.  
  
In pratica: la scorsa volta "ingannavo" gli utenti non esplicitando il mio intento. Stavolta vorrei non solamente aprire un accesso point wireless, non solamente chiamarlo "Free-Internet" come la scorsa volta, ma chiedere direttamente il consenso per:  
  
* Intercettazione del traffico
* Archiviazione delle Password di accesso
* Pubblicazione delle Password di accesso su una pagina web
* Impersonificazione dell'utente e posting di contenuti a nome suo
  
IN pratica l'idea è quella di utilizzare un sistema basilare di Captive Portal che RICHIEDA ESPLICITAMENTE all'utente di approvare, tramite apposizione di "firma" in forma di riscrittura nome e cognome, un *Regolamento di utilizzo* ed esplicitamente richiedere in un secondo passaggio la apporvazione delle eventuali *clausole vessatorie*.  
Il *Regolamento di utilizzo* sarebbe pubblicato in una pagina separata con un link "leggi il regolamento" o in una textarea che non riporti nulla di significativo nelle prime righe. Ma cosa include questo "Regolamento di utilizzo*? Beh, un paragrafo come questo:

> "Mediante l'accettazione di questo Regolamento" l'utente comprende e autiorzza che questa navigazione rappresenta un sistema di testing delle credenziali e dei meccanismi di furto di identità online e _non deve per qualunque ragione_ essere utilizzata in differenti modalità e/o per la navigazione internet personale o lavorativa.
> Questo servisio rappresenta una proof-of-concept dei pericoli in cui possono intercorrere gli utenti internet incauti ed il solo scopo del servizio è quello di essere utilizzato con account di prova per dimostrare la pericolosità di tali condotte.
> L'utente comprende e acconsente che suoi dati di navigazione e le sue credenziali vengano esposti al pubblico e che la sua navigazione sarà soggetta a controllo, manomissione, alterazione. I dati di accesso verranno collezionati e spediti alla pagina www.xxxxx.com e saranno pubblicamente accessibili da chiunque. Inoltre il sistema si collegherà a ogni servizio web di cui recupererà dati sottraendo link, contenuti e pubblicando contenuto casuale in ogni social-network e/o ogni servizio mail di cui rileverà le credenziali.
> L'utente dichiara di sollevare da ogni responsabilità i gestori, gli installatori e gli utenti del servizio da ogni responsabilità su danni che potrebbero crearsi dall'utilizzo del servizio.

Sono veramente curioso di sapere cosa ne pensano avvocati vari e se anche voi, come me, pensate che tutti accetteranno questo Regolamento di utilizzo senza degnarlo di uno sguardo, un po' come milioni di italiani facevano per le suonerie in abbonamento.  
  
E se veramente lo fate fatemelo sapere :)  
  
Estote parati.

[1]: http://mgpf.it/2007/10/04/wardriving-a-milano-warbiking-nella-metropoli
[2]: http://www.slideshare.net/lastknight/wardriving-milano