--- 
layout: post
title: TheFool presenta LaScalettaDiMilano.com - Alla Scala con meno di 50 euro
published: false
meta: {}
tags: 
- The Fool
status: private
---
<a href="http://lascalettadimilano.com"><img src="http://thefool.it/wp-content/uploads/2009/05/lascalettadimilano-460x400.jpg" alt="lascalettadimilano" title="lascalettadimilano" width="460" height="400" class="aligncenter size-medium wp-image-70" /></a>  
  
Amiamo il <a href="http://www.teatroallascala.org/">Teatro Alla Scala</a>. Da buoni Milanesi doc La Scala &egrave; un pezzo di casa, un luogo dell&#x27;anima, pi&ugrave; che un luogo fisico.
Se mai per&ograve; avete provato nella vostra vita a cercare di prenotare un biglietto sul sito della <a href="http://www.leonidaniele.it/teatri/sell_home_pages/153.php?ocode=153">Biglietteria della Scala</a> probabilmente come me sarete rimasti frustrati da per lo meno due fatti: il primo &egrave; che non esiste modo di avere una visione di insieme delle date, il secondo &egrave; che il sistema non da modo di vedere i prezzi dei biglietti prima di aprire la pagina dedicata.<br>
Sull&#x27;usabilit&agrave; ci sarebbe da scrivere un papiro intero, ma la percezione in questo caso che ha l&#x27;utente &egrave; che <a href="http://www.teatroallascala.org/">la Scala</a> abbia prezzi esorbitanti e pochissimi biglietti: cos&igrave; non &egrave; e se si cerca bene si trovano facilmente spettacoli a meno di &euro;.50,00, a volte anche a meno si &euro;.15,00.  
  	
Per venire incontro alle persone comuni che vogliono andare alla Scala con meno di .50,00 è nato <a href="http://lascalettadimilano.com">LaScalettaDiMilano</a>, che ha origine prevalentemente dalla frustrazione del <a href="http://lastknight.com">CEO</a> della startup italiana <a href="http://thefool.it">The Fool</a>, che lo ha portato a creare un sistema di indicizzazione e fruizione mono-pagina di tutti gli spettacoli e tutti i posti disponibili, con evidenziati i posti che costano meno di &euro;.50,00. Creare un file di testo o un sito web non differisce, con gli adeguati strumenti, di molto ed ecco nato il sito.  
  
Ogni ora il sistema procede automaticamente ad aggiornare le disponibilit&agrave; andando a controllare tutte le pagine di tutti gli spettacoli.  
Per prenotare lo spettacolo che si desidera &egrave; sufficiente cliccare sul simbolo &quot;&raquo;&quot; a fianco ad ogni riga. Gli spettacoli sono in ordine cronologico.  
  	  
I biglietti venduti a meno di &euro;.50,00 sono sottolineati direttamente, per renderne semplice il riconoscimento a colpo d&#x27;occhio.  
  
Perch&egrave; lo facciamo? Per almeno 4 validi motivi:  

 * Amiamo Milano. E amiamo La Scala.
 * Crediamo che andare alla Scala sia un diritto di tutti e una meravigliosa occasione.</li>
 * Siamo <a href="http://thefool.it">dannatamente bravi</a></li>  
 * Ci piace condividere quello che facciamo. Anche per test.
  
Dal punto di vista tecnico, <a href="http://lascalettadimilano.com">LaScalettaDiMilano</a> &egrave; una prova generale delle tecnologie che stiamo sviluppando a supporto del nostro servizio di tutela della privacy e creazione di policy Internet per le aziende <a href="http://fooldns.com">FoolDns</a>. Dovendo sviluppare una applicazione web che possa agilmente supportare 15-15 milioni di connessioni al giorno con velocit&agrave; pressoch&egrave; real-time abbiamo nel corso degli ultimi mesi pensato alla piattaforma pi&ugrave; veloce e pi&ugrave; performante su cui innescare un framework di programmazione. Il risultato?  

Il sistema &egrave; scritto in <a href="http://www.ruby-lang.org">Ruby</a> e utilizza un parser basato su <a href="http://wiki.github.com/why/hpricot">Hpricot</a>. L&#x27;architettura &egrave; basata su un server <a href="http://nginx.net/">Nginx</a> che ospita numerose istanze in clustering di <a href="http://code.macournoyer.com/thin/">Thin</a>, attualmente il web server pi&ugrave; veloce.<br>  
  
La programmazione della parte web &egrave; interamente basata su <a href="http://www.sinatrarb.com/">Sinatra</a>, un framework di piccolissime dimensioni ed estremamente veloce.  
  
Che dire di altro? Buona Scala a meno di &euro;.50,00!   
