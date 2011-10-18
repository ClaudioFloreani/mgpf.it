--- 
layout: post
status: ok
title: Ora che ve lo dicono anche che siete schedati, ridete ancora?
meta: 
tags: 
- paranoia
- digital-freedom
- the-fool
---
Alle volte mi sento un poco una novella Cassandra dell'IT, e vi assicuro che non è una bella sensazione.  
Nel 2008 lanciavo FoolDNS Community, un servizio online gratuito (e la relativa estensione FoolDNS Business per le aziende) con la specifica idea di bloccare alla radice il tracciamento degli utenti online e il behavioral advertising che sconfinava nella piena intercettazione degli utenti.  Ovviamente tutti a darmi del paranoico.  
  
Oggi [Blue Cava][1] in un seminario a cui ha partecipato anche [privacychoiche][1] racconta bellamente come il suo prodotto sia in grado **senza cookie** di tracciare gli utenti:
* Blue Cava si vanta di avere performance migliori rispetto ai sistemi che utilizzano i cookie: e ci credo, visto che gli utenti non sanno di essere tracciati....
* Blue Cava also sta sviluppando il suo database di advertising comportamentale (che gestisce multipli utenti con multiple device= ciascuno associato ad un singolo, univoco ed incancellabile deviceID.
* L'installazione è semplicissima: metti un JS sulla tua pagina e Blue Cava ti passerà un identificativo univoco per l'utente. Punto. Accoppia questo dato alle login del tuo portale ed ecco la pagina del tracciamento anche cross-site.
* Blue Cava funziona su qualunque device, compresi iPhone, iPad, Android. E associa lo stesso ID all'utente su più piattaforme.
* Blue Cava automaticamente associa multipli dispositivi, mano a mano che li "vede" ad un singolo IP ed ad un singolo utente. In altre parole se usate un iPhone ed un PC non appena vedrà che navigano dalla stessa connessione saprà che siete sempre voi dietro all'utilizzo ed aggiungerà questi dati al suo repository. Comportamento interessante, che non rientra nemmeno delle loro politiche di Privacy.
* Certo, è possibile fare opt-out, ma i dati verranno conservati comunque per vedere le device "cattive" da cui si è tentato di effettuare operazioni illecite. E quei dati sono eterni, quel deviceID sopravviverà nella storia.
* Blue Cava dice che nemmeno si dovrebbe cambiare la Privacy Policy se si utilizza il suo sistema. Ridicolo e pericoloso allo stesso tempo.  
  
Ogni sito che navighiamo ha, quindi, le possibilità e le capacità di ritrovare un identificativo univoco del nostro elaboratore e tracciarci nei nostri comportamenti. E Blue Cava è solo uscito allo scoperto: le tecniche utilizzate sono noti ai paranoici (leggisi anche me) da anni.  
Lo fanno tutti i software più popolari e alcune grosse multinazionali, tra i primi Google, hanno costruito dietro a questo modello un intero impero finanziario.  
  
<iframe src="http://player.vimeo.com/video/7982723" width="400" height="225" frameborder="0"></iframe><p><a href="http://vimeo.com/7982723">FoolDNS vs. Google DNS</a> from <a href="http://vimeo.com/lastknight">Matteo Flora</a> on <a href="http://vimeo.com">Vimeo</a>.</p>
Come dicevo nel mio articolo su Repubblica e nella videointervista di Repubblica il problema è tutt'altro che semplice, ma le persone tendono a sottovalutarlo. Siamo tracciati, ad esempio, quando:
* Vediamo una qualunque pagina che usa Google Analytics (il 96% dei siti italiani)
    Ogni dato di visione di quella pagina, infatti, viene spedito a Google che lo immagazzina ed elabora. Spesso il sito internet che utilizza Analytics non pensa nemmeno alla cosa, e non pensa che sta regalando vantaggio competitivo al nemico, se si tratta di business che sono competitor). Spesso non trovate nemmeno questa indicazione all'interno della privacy policy del sito utilizzatore. A volte l'utilizzatore non sa nemmeno che i suoi dati possono essere visti. Secondo voi, ad esempio, Repubblica sa che [le sue statistiche di analytics sono pubbliche](http://www.google.com/trends?q=repubblica.it)? 
* Vediamo pubblicità online con AdWords
   La stessa società che gestisce Analytics gestisce anche AdWords. Interessante, non credete? E anche la vostra posta elettronica, il vostro lettore di News, il vostro Feed Reader... Una serie di dati che sicuramente non verranno utilizzati in modo aggregato...
* Una pagina che visioniamo ha gli script di Facebook per il Like
   Già, perché Facebook traccia ogni vostro like su pagine esterne ed anche il vostro mero accesso a queste pagine...
Vi sono altri 10.000 esempi possibili, ma tutti si incentrano su una particolarità singola dei protocolli HTTP: se io "inserisco" qualcosa in una pagina da un sito esterno (una immagine, un frame, un javascript) questa "cosa" che inserisco può facilmente sapere "dove" è stata inserita, e recuperare informazioni sull'utente che la sta vedendo. Così se inserisco il "like" di Facebook o il tracker di Google Analytics o lo snippet di Shinystats sto dando a queste società informazioni su ogni mio singolo utente, per ogni pagina che visita, nel momento stesso che la sta visitando.  
Le risposte? Moltissime ed è inoltre il motivo stesso dell'esistenza di FoolDNS Community e FoolDNS Business, ma vediamo insieme:  
  
* **(pubblicità occulta)** FoolDNS Community è la prima ovviamente. E si installa in pochi secondi grazie al [comodo installer][inst]. E funziona anche su dispositivi mobili, iPad e iPhone...
* [AdBlock](http://adblockplus.org/en/) è sicuramente un ottimo prodotto
* [NoScript](http://noscript.net/) è per i paranoici, ma estremamente utile
Aziendalmente il pericolo è assolutamente lo stesso, ed ecco perché veniamo sempre più spesso contattati da clienti istituzionali o privati con forti necessità di Privacy per FoolDNS Business...  
  
Per tornare ad un vecchio motto: *"paranoia is a virtue"*.  
[1]: http://blog.privacychoice.org/2011/02/01/the-blue-cava-webinar-everything-i-feared-and-more/
[inst]: http://www.fooldns.com/fooldns-community/download/
