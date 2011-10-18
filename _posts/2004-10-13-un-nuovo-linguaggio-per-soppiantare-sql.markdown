--- 
layout: post
status: ok
title: Un nuovo linguaggio per soppiantare SQL...
meta: {}
tags: 
- develop
---
 Che sia arrivato il momento di <b>pensionare</b> il beneamato SQL?  
 Se Microsoft ci pensa con <a href="http://www.microsoft.com/sql/2005/default.asp">Yukon SQL 2005</a> e la più che probabile introduzione di C# &amp; Co nella gestione di Stored Procedure e forse di SQL stesso (in modo similare a Oracle e Java) sembra che qualcun altro stia pensando ad un qualcosa di più radicale...  
  Innanzitutto attraverso il lavoro di Hugh Darwen e Chris Date ed il loro <a href="http://www.thethirdmanifesto.com/">The Third Manifesto</a>, che si pone l'obiettivo di "razionalizzare" il concetto di DB relazionale alla luce della correttezza implementativa e delle mutate esigenza di un motato utilizzo, forse notevolmente più intensivo e strutturato.  
  Ma se le ipotesi di Darwen e Date erano solamente ipotesi fino a poco fa,  <a href="http://c2.com/cgi/wiki?DaveVoorhis">Dave Voorhis</a> ha ben deciso di cambiare le carte in tavola proponendo TUTORIAL D, l'implementazione reale del linguaggio descritto dai due ricercatori.  
 Ma cos'è tutto questo scalpore?  
  In parole povere, <a href="http://dbappbuilder.sourceforge.net/Rel.html">Tutorial D</a> è stato pensato per essere una implementazione "consona" del linguaggio di query delle basi dati.  
 L'idea di base è che non ci dovrebbero essere restrizioni arbitrarie alla sintassi del linguaggio di query (Voorhis cita SQL come un linguaggio <b>idiosincratico</b>, dove per esempio query in cascata sono concesse in alcuni punti ed in altri no) ma che il sistema di database non dovrebbe scontrarsi con queste limitazioni a basso livello (come accade invece attualmente).  
 Le idee di Dave Voorhis sono, in parole povere, una razionalizzazione di anni ed anni di accumulo di idiosincrasie e concetti "peculiari" del mondo del database, al fine di ottenere un SQL (o meglio, un NONSQL) che sia facilmente aquiparabile alla normale prassi programmativa e di concetto di ogni altro linguaggio di programmazione.  
 Leggere il  <a href="http://www.thethirdmanifesto.com/">manifesto</a> e la <a href="http://dbappbuilder.sourceforge.net/Rel.html">documentazione di Tutorial D</a> è utile non solo per capire la strada da percorrere, ma anche per <b>familiarizzare su punti controversi</b> delle maggiori tecnologie alla luce delle limitazioni proprie di ognune che ne determinano le peculiarità intrinseche.
