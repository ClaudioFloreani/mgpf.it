--- 
layout: post
status: ok
title: Introduzione ai SEO, i Search Engine Optimizers
meta: 
tags:
- seo
---
Durante l'ultimo periodo, per esigenze di lavoro mi sono trovato ad analizzare nel dettaglio le tecniche utilizzate dalle differenti realtà italiane che si occupano di posizionamento nei motori di ricerca (in inglese SEO - Search Engine Optimizers), ed in dettaglio del funzionamento pratico delle loro strategie.  
Sono emersi particolari importanti sia riguardo a come operano ai limiti della illegalità, sia riguardo a come implementare attivamente le stesse tecniche in un contesto legale ed utilizzabile.  
#Come funzionano i SEO
Le tecniche utilizzate sono molteplici, ovviamente, ma la strategia di base si costituisce mediante l'utilizzo di domini fantasma in cui vengono posizionate pagine appostiamente create per migliorare i risultati delle ricerche e meccanismi di redirezione dei browser classici utilizzati dall'utente medio. In questo modo si è sicuri di ingannare solamente il motore di ricerca, e non il navigatore che viene rediretto al sito web legittimo. Analizziamo nel dettaglio i singoli punti:
##Domini Fantasma
Innanzi tutto i SEO utilizzano per la promozione domini differenti da quello di base. Se ad esempio devono promuovere www.MIOSITO.it, utilizzeranno un dominio del tipo WEB.MIOSITO.it oppure IO.MIOSITO.it.  
Ad un primo sguardo questa implementazione rappresenta un indubbio vantaggio: infatti non solo non dobbiamo toccare le macchine su cui il server gira (se ne occupano LORO su LORO macchine), ma oltretutto questa manovra non necessita di nessun adattamento al sito Web principale, nemmeno l'aggiunta di keywords o la sistemazione del layout, poichè tutto il lavoro viene svolto sulla nuova macchina e sul nuovo dominio.
Ma ricordiamoci in questa analisi che non sarà il NOSTRO dominio ad essere posizionato con tutto il suo indotto, bensì il DOMINIO FANTASMA appositamente creato. Che, oltretutto, non è nemmenoin gestione a delle macchine su cui abbiamo il controllo.  
Se infatti controlliamo attentamente troviamo che l'IP del "nostro" sito fantasma corrisponde a quello del SEO che lo sta gestendo.
Un esempio pratico? Melchioni!  
Sito web di riferimento: <www .melchioni.it> , ma se cerchiamo una parola chiave particolare (o meglio, molte di queste) su Google, come ad esempio "microcomputers memorie", notiamo che le prime occorrenze del sito sono su <industria .melchioni.it>.  
Se clicchiamo nulla di strano, veniamo rediretti al sito principale e tutto ritorna normale. O quasi. Analizzeremo questo comportamento nel prossimo punto.  
Questo meccanismo di "altro sito, miglior posizionamento", fa si che il SEO, finito il contratto o non rinnovato il canone annuale, possa facilmente fare decadere i benefici acquisiti. Basta infatti "spegnere" il sito creato (che è quello posizionato nei vertici", per vederci sparire dai motori di ricerca al primo controllo di validità della pagina, che normalmente si verifica entro pochi giorni.  
Questo non si verifica, invece, nel caso il "lavoro" svolto sia orientato a migliorare una "nostra" entità, quale il sito principale. In questo caso, infatti, l'investimento di manutenzione correttiva risulta effettivamente "investito" nell'asset importante che il nostro dominio web è per noi.
##Pagine dedicate - Doorway pages
I SEO operano in un regime di illegalità dato dal fornire "pagine dedicate" a determinati argomenti create appositamente per ingannare Google ed i motori di ricerca.  
Prendiamo , ad esempio, il sito fantasma di Melchioni (<http ://industria.melchioni.it>) forniti da un noto sistema italiano di Web Positioning...
Se li digitiamo in explorer ci ritroviamo automaticamente trasferiti al sito della casa madre. Ma questo non avviene, invece, per Google, al quale viene fornita una pagina differente e contentente dei testi dedicati e ridondanti.  
Per testare basta identificarsi come Google e richiedere la pagina in oggetto. Noi l'abbiamo fatto attraverso un programmismo web in ASP.NET:
> </http><http ://www.lastknight.net/getpage/default.aspx?go=http://industria.melchioni.it>
Utilizzando questo meccanismo ci "spacciamo" per Google e riusciamo a vedere come Google "vede" la nostra pagina.  
Questo comportamento è triplicemente illegale secondo il contratto di licenza di Google: esso prende i nomi di "doorway pages" (pagine di "ponte"), "cloacked content" (contenuto differente per Google ed un utente comune) e "deceptive redirect" (redirezione di pagina atta ad ingannare).  
Un apposito documento di Google mette in guardia contro le società di SEO ( http://www.google.com/webmasters/seo.html ), ed un apposito modulo consente di segnalare questi comportamenti per la rimozione del sito dagli indici di Google ([](http://www.google.com/contact/spamreport.html)) in modo veloce ed anonimo.  
Una veloce segnalazione anonima può a tutti gli effetti vanificare tutti i soldi spesi e tutto il lavoro svolto.  
La stessa home page di Google contiene una citazione molto esplicative:
> "We have been on the internet since 1996 and had always taken a very conservative approach on our site. For nearly a year though, we were bombarded by emails from third party linking programs, which stressed the importance of linking for relevancy.  
> Finally, we broke down and joined one of these programs. Unfortunately, the program used hidden links, and Google removed us from the index within a week. I guess it's true that anyone can get fooled into buying snake oil."  
>   
> (Frank, owner of a limousine services company)
#Garanzie inesistenti
Infine uno dei "punti forti" dei servizi di SEO è garantire la presenza entro i "top 20" di ogni keywork di ricerca. Analizzando bene si può notare che questa garanzia viene erogata non su un unico motore di ricerca (ad esempio www.google.com), operazione che per dichiarazione di Google è inpossibile per definizione, ma su di un PALCO di motori web, importanti o no.  
Nel casi italiani di maggiore successo, il risultato viene garantito in uno specifico tra i motori"offerti".  
Normalmente la tecnica utilizzata è semplice ed efficace:tra i siti "offerti" nel pacchetto, almeno uno attua meccanismi di "pay per rank", e cioè di posizionamento assicurato a fronte di un modico corrispettivo. In questo modo è semplice pagare UNO di questi per ottenere un posizionamento certo a fronte di una spesa minimale per lo meno in UNO di questi siti. Le condizioni contrattuali fanno poi il resto: esse sanciscono infatti che si arriverà con sicurezza ad un posizionamento "tra i primi XXX" per ALMENO UNO dei motori offerti.  
Se a questo aggiungiamo che normalmentei risultati di posizionamento sono garantiti nei primi 30 giorni dall'approvazione del contratto, notiamo subito che questo impegno monetario èoltretutto incredibilmente modesto raffrontato agli ingentiguadagni. I risultati garantiti, quindi, sono lungi dall'essere garanzie di buona attività o di affidabilità...  
#Problemi Legali e di Efficacia
Come già segnalato, comportamenti di questo tipo non solo sono lesivi dal punto di vista dell'immagine, non solo sono contrari alle norme di utilizzo, ma sono anche decisamente pericolosi sia poichè:
1. una segnalazione a Google potrebbe vedere vanificati i nostri sforzi economici
2. l'impegno è profuso su di un sito che non è la nostra presenza web "base"
3. il mancato rinnovo del contratto vanifica i nostri sforzi chiudendo il dominio in oggetto
4. il nostro sito web principale non ottiene nessuna miglioria da questa spesa
#Esistono alternative
Le attività dei SEO sono una comoda e veloce alternativa illegale ai problemi di un sito web.  
Non sono però nè la soluzione migliore, nè quella più efficace.  
Se infatti provate a cercare su Google "auto berlina", troverete in seconda posizione Audi A3, in quarto Audi-italia ed in sesto Peugeot.  
La cosa notabile di Audi è che non utilizza servizi di SEO, e che compare con la stessa pagina ANCHE come ricerca di "audi belina", "audi italia" e (in posizione più avanzata, poichè è anche un formato di carta) "a3".  
Senza pagare un servizio di SEO, Audi si posiziona sempre in prima pagina, con più keywords (precise e scelte), in tutte le keywords della pagina e non solamente in una specifica.  
Inoltre, in questo modo, accresce il Siterank del suo sito, accrescendo quello di tutte le pagine correlate.  
Ultimo dettaglio, i risultati ottenuto sono duraturi anche dopo il rapporto con il SEO.  
#I problemi da prendere in esame
Ogni sito web può raggiungere discreti risultati perenni, basta tenere d'occhio un paio di requisiti fondamentali:
##Assenza Keywords
Ma la sola presenza di keywords generiche non solo non è sufficiente, ma inoltre non aggiunge valore aggiunto alle singole pagine.  
Le keywords da inserire saranno esattamente quelle che desidereremmo implementare con i differenti SEO, ma mirate alla singola pagina del nostro dominio. E i testi contenuti devono combaciare. Evitiamo centinaia di keywords: meglio 3/4 doppie parole ma ben scelte e mirate.  
##Niente titoli
Al pari delle keywords, i titoli di pagina determinano il nostro posizionamento. La pagina "tutto sulla pallamano" avrà ovviamente una proprità maggiore di moltissime altre.  
Un titolo omologato per tutte le pagine di un sito raramente raggiunge lo stesso effetto.  
##Noise vs Info ratio < 3%
L'attuale implementazionedi molte pagine web, soprattutto realizzate con sistemi di CMS qualiBroadvision e/o Vignettedetermina una dispersione impressionante del contenuto della pagina.  
Se infatti osserivamo il codice della pagina, cioè l'unico dato passato ai motori di ricerca, di un sito di questo tipo (ad esempio un noto brand italiano) ci accorgiamo che esso contiene:
*  33.881 caratteri di cui
*  892 (2.6%) sono contenuto testuale attinente alla pagina.
La configurazione è pressochè costante in tutto il sito. Le pagine hanno sempre un contenuto inferiore al 3% di informazioni contro codice. Le informazioni, inoltre, non sono MAI entro il primo Kilobyte (1024 caratteri) che Google utilizza normalmente per classificare il contenuto.  
Potete provare con ogni tipo di grande sito nostrano; i risultati sono quesi sempre gli stessi...  
Una pagina creata in questo modo, benchè spettacolare dal punto di vista grafico, rappresenta poco meno che rumore per un motore di indicizzazione.  
##Link testuali assenti
Come già spiegato precedentemente un link assume valore anche e soprattutto per come viene referenziato dal testo che lo connota. Un link "VENDITA NOKIA" che punta a www.VenditaCellulari.com crea un legame forte, soprattutto se reiterato in differenti pagine.  
Siti che affidano la loro presentazione a soli siti di immagine si perdono buona parte dei punti accumulabili dagli algoritmi di Siterank di Google.  
#Considerazioni finali
Lungi dall'essere una dissertazione completaed esaustiva, spero che questo articolo getti un po' di luce sui sistemi ingenuamente ritenuti arcani per il posizionamento. Un consiglio? I vostri soldi stanno meglio in mano ad un buon designer e/o programmatore che nelle mani di società di questo tipo.
</http></http></industria></www> 
