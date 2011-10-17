--- 
layout: post
title: "L'Italia e la Censura: una guida per capire qualcosa"
meta: 
  aktt_tweeted: "1"
  autometa: gazzetta pedo
tags: 
- digital-freedom
- security
---
> Daniele Minotti ne fa un'altra delle sue e le statistiche mi dicono, come anche un SMS rivelatore, che **mi cita sul suo articolo** su [Punto Informatico](http://punto-informatico.it/p.aspx?i=2031873) del 4 Luglio...  
> Che dire? **Grazie mille** e se non lo avete ancora fatto correte a vedere l'[articolo in questione](http://punto-informatico.it/p.aspx?i=2031873) o il suo blog...
>  
> **Ma non dimenticate di leggere l'articolo che il Punto informatico non ha avuto [il coraggio di linkare](http://www.lastknight.com/2007/07/03/dio-e-cattivo-e-censura-i-siti/) : [DIO è cattivo e censura i siti](http://www.lastknight.com/2007/07/03/dio-e-cattivo-e-censura-i-siti/)**...

Facciamo un po' di chiarezza, visto che me lo chiedono, sulle **TRE tipologie di censura** attive oggi come oggi in Italia...  
  <!--more-->
Ne ho già ampiamente parlato al mio spech ad InfoSecurity 2007, ma non tutti l'hanno seguito e non tutti hanno visto [il filmato](http://www.lastknight.com/2007/03/03/eludere-i-controlli-di-polizia-il-video-completo/) della presentazione.  
  
La prima e più "antica" è la **Censura AAMS**, decretata dalla Finanziaria 2006, e quindi primo caso di CENSURA da parte **del GOVERNO**, non del Parlamento.  
Viene introdotta per volere dell'Amministrazione Autonoma dei Monopoli di Stato per [contrastare il gioco d'azzardo
oltrefrontiera](http://www.lastknight.com/2006/02/13/censura-11-dopo-sky-offline-i-siti-di-gioco-di-azzardo/) che non paga il dazio *(scusate, intendevo dire le
concessioni)* all Repubblica delle Banane *(scusate, volevo dire Italia)*.  
Un po' come se per andare a giocare al Casinò a Lugano
dovessi pagare qualcosa alla frontiera o se il Casinò di Chamonix dovesse **pagare una gabella** annuale all'Italia per consentire agli Italiani di giocare nelle proprie sale.  
  
Comunque per essere precisi e se volete recuperarla in giro Finanziaria 2006, Capo III (Disposizioni in materia di accertamento e contrasto all'evasione e all'elusione fiscale) art. 29 comma 5.

Il meccanismo di blocco si attua secondo le seguenti modalità:  

*  Esiste una lista da implementare pubblica
*  Il Provider scarica pubblicamente e implementa lista
*  Si blocca a livello del DNS
  
Ovviamente OpenDNS è mio amico.  
  
La **Censura AntiPedopornografia** (Volgarmente detta **Decreto Gentiloni**, pubblicato in
Gazzetta Ufficiale il 29 Gennaio 2007) stabilisce DUE livelli di blocco
differenti, che per comodità chiamerò PEDO1 e PEDO 2

PEDO 1:
*  Esiste una lista PRIVATA emanata dal CENTRO, che altri non è che il Centro nazionale per il contrasto della pedopornografia istituito ai sensi dell'art. 14-bis della legge 3 agosto 1998, n. 269, come modificata dalla legge 6 febbraio 2006, n. 38.
*  Il provider riceve tramite canali fidati la lista
*  Blocco a livello DNS come la lista AAMS
  
In aggiunta a questa abbiamo la modalità PEDO 2:
*  Esiste una lista PRIVATA emanata dal CENTRO (vedi sopra)
*  Il provider riceve tramite canali fidati la lista
*  Blocco a LIVELLO DI IP degli IP indicati

Il blocco a livello IP è piuttosto recente se si pensa che l'Art 8, comma 1 sottocomma a e b recitano che:

> a) entro 90 giorni dalla pubblicazione nella Gazzetta Ufficiale della Repubblica italiana del presente decreto, gli strumenti di filtraggio necessari ad inibire l?accesso ai siti identificati mediante il nome a dominio così come previsto dall'articolo 4;  
> b) entro 150 giorni dalla pubblicazione nella Gazzetta Ufficiale della Repubblica italiana del presente decreto, gli strumenti di filtraggio necessari ad inibire l'accesso ai siti identificati anche mediante l'indirizzo IP così come previsto dall'articolo 4.

Oltretutto il cosiddetto Decreto Gentiloni appioppa al fantomatico
Centro una **serie di poteri a dir poco inquietanti**, tra cui il controllo
delle transazioni finanziarie di persone arbitrarie...

Inoltre i blocchi devono garantire che (Art. 5, comma 5, sottocomma c)

> c)  escludere che i fornitori di connettività alla rete Internet siano autorizzati, ai fini del presente decreto e salvo i casi espressamente previsti dalle leggi vigenti, al trattamento dei dati relativi agli accessi effettuati dai singoli utenti.

In altre parole **non è vero** che i tentativi di accesso alle risorse bloccate siano anonimi e che i provider non possano loggarli, è solamente vero che **debbono essere preventivamente autorizzati**. Bella forza...

Se questo non vi ha fatto abbastanza girare i cosiddetti, offro un'altra importante perla di saggezza che colgo sempre l'occasione di citare: quella della Legge 6 febbraio 2006, n. 38, **Decreto Prestigiacomo** che istituisce il reato di PedoPornografia Virtuale come da:

> Art. 600-quater.1. (Pornografia virtuale). Le disposizioni [...] si applicano anche quando il materiale pornografico rappresenta immagini virtuali realizzate utilizzando immagini di minori degli anni diciotto o parti di esse, ma la pena e' diminuita di un terzo.?

That's all folks ecco alcune delle chicche che hanno a che fare con una
Censura di Regime che ci porta dritti dritti ai livelli della Libertà di
Stampa dell'Angola...  
  
Che ne dite?  
Per approfondimenti vi rimando al mio intervento a Infosecurity 2007.
   
