--- 
layout: post
title: "Sul Punto Informatico le mie tre vulnerabilit\xE0"
meta: {}

tags: 
- hacking
- security
---
E sul Punto Informatico di [oggi](http://punto-informatico.it/p.aspx?i=2181007&p=1), facendo Auting, comunico [che le vulnerabilità le ho segnalate io](http://punto-informatico.it/p.aspx?i=2181007&p=1):  
  
> Così capita che, nelle stesse ore, a Punto Informatico giungano tre segnalazioni di altrettanti problemi a siti piuttosto noti. In tutti e tre i casi si tratta di vulnerabilità di media entità, ma abbastanza serie da essere prese subito in considerazione. E in tutti e tre i casi si trattava di vulnerabilità XSS che, dopo la segnalazione di Punto Informatico, sono state eliminate in poche ore.  
  
E subito dopo potere leggere [l'intervista sulla "professione" di bug hunter](http://punto-informatico.it/p.aspx?i=2181007&p=2)...  
  
Eccone qualche estratto:  
  
**Punto Informatico: Come si scoprono le vulnerabilità di un sito web?**  
**Matteo Flora:** Le falle si "scoprono" spesso e volentieri grazie all'esperienza, che fa subito emergere come lampanti eventuali errori trasportati dal mezzo di comunicazione. Dopo un po' di tempo passato a ricercare questo tipo di vulnerabilità, l'osservare come vengono maneggiate ed inoltrate le richieste molte volte è tutto quello che serve per ipotizzare la presenza di talune problematiche.  
  
**PI:** Questione di mestiere, di pratica?  
**MF:** Non è certo magia né tantomeno mistero: solo metodo, spirito di osservazione e spesso impegno pregresso. "It's not Rocket Science", anche se devo ammettere che da taluni soggetti, spesso anche italiani, ho visto emergere strategie di exploiting degne dell'ammirazione di chi osserva un'artista all'opera.  
  
**PI:** Quali sono le principali vulnerabilità in circolazione?  
**MF:** Nell'ambito della WebApplication Security tra le vulnerabilità più diffuse abbiamo il Cross Site Scripting (esecuzione di codice javascript non autorizzato all'interno di pagine web), varie ed eventuali declinazioni di SQL Injection (possibilità di sovvertire la comunicazione con la base dati al fine di sottrarre o alterare le informazioni ivi contenute) e RFI, Remote File Inclusion (la possibilità in "includere" tramite falle codice malevole lato server in applicativi).  
  
**PI:** E quali di queste si portano dietro maggiori rischi per il navigatore?  
**MF:** Alcune di queste vulnerabilità, che di per sé potrebbero essere poco o nulla pericolose, possono con perizia e maestria essere declinate ad esempio in CSRF, Cross Site Request Forgery (il meccanismo mediante il quale un utente malevolo "penetra" in un sito protetto da password utilizzando le credenziali di un utente già loggato), che ovviamente rendono altamente pericolose anche vulnerabilità che sembrerebbero "banali".  
  
**PI:** Cosa occorre fare quando si scopre una falla?  
**MF:** Personalmente dopo decine e decine di questi episodi ho deciso di pubblicare una precisa policy scritta, adattando al panorama normativo italiano la famosa dislcosure policy di RFP (RainForrest Puppy).  
  
**PI:** In cosa consiste?  
**MF:** Il contenuto è breve e preciso: la vulnerabilità viene comunicata al vendor (proprietario del sito, del prodotto o ditta ed ente responsabili) e ci si attende una conferma della ricezione entro 5 giorni. Se la risposta non arriva si ritenta e si attendono altri 5 giorni.  
  
**PI:** Se non arriva alcuna risposta?  
**MF:** Se ancora una volta la risposta non arriva in nessuna forma, si pubblica la vulnerabilità dopo essersi sincerati di avere un contatto (quando possibile) con responsabili di sicurezza, admin, abuse, responsabili stampa o call center.  
  
**PI:** E se invece gli interessati rispondono?  
**MF:** Se invece si viene contattati allora si spiega in modo estremamente preciso tutta la problematica e si decide mutualmente come procedere. Non è necessario risolvere immediatamente la vulnerabilità, basta dare una scadenza compatibile con il buon senso.  
  
**PI:** La storia finisce qui?  
**MF:** Trascorsa la scadenza ed una volta che la vulnerabilità è stata sanata si procede in coppia o singolarmente a comunicare la vulnerabilità ritrovata: questo per un duplice motivo.  
  
**PI:** Quale?  
**MF:** Innanzitutto per permettere agli utenti che non avessero fatto un upgrade alla nuova versione di sapere che è necessario un upgrade viste le problematiche incontrate, ed in secondo luogo per permettere ad altri ricercatori indipendenti di controllare se la problematica si riflette anche su altri prodotti simili o simili realtà.   Succede infatti spessissimo che una vulnerabilità su un prodotto o servizio sia riproponibile in ambiti simili o derivati.  
  
**PI:** Ma chi sono i bug hunter, perché fanno quello che fanno?  
**MF:** Se lo chiedono in molti... Alcuni ci vedono come esaltati in cerca di fama e gloria imperitura, altri come schizofrenici maniaci di protagonismo (che per diamine ci può stare, ma dopo un po' è discretamente tedioso).   Alcuni ci vedono come prezzolati cacciatori di teste o come ricattatori di società, ma anche qui non ci siamo: nessuno di noi, se serio, accetta soldi dalle società trovate vulnerabili per "tacere" su questa o quella falla.  
  
**PI:** E allora perché?  
**MF:** Almeno nel mio caso, e di quegli italiani e non che ho avuto modo di conoscere e stimare (e ce ne sono tantissimi!), siamo fermamente convinti che le società non stiano minimamente interessandosi della sicurezza come primo approccio, della sicurezza come tutela degli utenti in primis e della collettività in generale.  
  
**PI:** Una questione sociale ed etica?  
**MF:** Lo facciamo perché ci piacerebbe che i nostri dati fossero conservati gelosamente e con la massima attenzione: vedere società che non lo fanno magari per un errore o una svista fa scattare il desiderio di miglioramento. Si segnalano, le vulnerabilità, e si diffondono al grande pubblico solamente quando (spessissimo, ahimé) anche a distanza di mesi dalla segnalazione permangono online e non vengono sanate.  
  
 
