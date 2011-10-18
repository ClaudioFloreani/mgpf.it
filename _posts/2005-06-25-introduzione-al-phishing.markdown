--- 
layout: post
status: ok
title: Introduzione al Phishing
meta: 
tags:
- hacking
---
Nel panorama di quella branca del "malicious code" che prende il nome di " social engineering " (cioè l'utilizzo dell'inganno verbale o di situazione per perpetrare una frode, anzichè di codice macchina vero e proprio), gli ultimi mesi hanno visto un proliferare ed un espandersi senza precedenti del fenomeno del " Phishing ".
Iniziamo con il definire un poco più attentamente il Phishing :

> ##DEFINIZIONE: ##
> Si definisce Phishing una tecnica utilizzata per ottenere l'accesso ad informazioni personale con la finalità del furto di identità mediante l'utilizzo di messaggi di posta elettronica oppurtunamente creati per apparire autentici .  
>Mediante questi messaggi l'utente è ingannato e portato a rivelare dati sensibili come numero di conto, nome utente e password, numero di carta di credito.  

C'è da sottolineare, inoltre, che la distinzione tra questo tipo di espediente ed un virus è, molte volte, decisamente sottile, visto e considerato soprattutto che negli ultimi mesi il Phishing viene utilizzato da numerosi Worm Virus come spora contagiante.  

Il processo standard di queste metodologie di attacco può riassumersi nei seguenti passi:

1.  L'utente malintenzionato (useremo il termine hacker in senso lato , anche se la corretta definizione sarebbe cracker) spedisce una mail al malcapitato ed ignaro utente che simuli nella grafica e nel contenuto quella di una istituzione nota al destinatario (ad es. la sua banca, Ebay, il suo provider web).
2.  La mail contiene avvisi di particolari situazioni o problemi verificatesi con il proprio conto corrente/account (ad es. un addebito enorme, la scadenza dell'account).  
    Nella mail il destinatario è invitato a seguire un link presente nel messaggio per evitare l'addebito e/o per regolarizzare la sua posizione con l'ente o la societàdi cui il messaggio simula la grafica e l'impostazione.
3.  Il link web fornito NON porta al sito web ufficiale, ma a pagine appositamente create per emulare il "Look and feel" del sito in oggetto e richiedere al destinatario dati personali particolari, normalmente con la scusa di una conferna o la necessità di effettuare il Log-In al sistema, che vengono memorizzati dal server e quindi finiscono nelle mani del sedicente hacker.
4.  L'hacker utilizza questi dati per acquistare beni , trasferire somme di denaro o anche solo come "ponte" per ulteriori attacchi .

#Tipologie di attacco
Secondo notizie apparse su diversi siti negli ultimi giorni, questa tipologia di attacco è aumentata e si è perfezionata.  
Infatti, nel solo mese di Aprile 2004 gli attacchi di questo tipo sono cresciuti del 178% rispetto al mese precedente.  
Le "esche" lanciate sul Web sono ora di tre tipi:

1.  Email che invita ad accedere al sito della banca per ottenere il nuovo pin di sicurezza, come accaduto pochi giorni dopo il lancio di un nuovo servizio web al colosso bancario CityBank in Russia (vedi articolo ).  
2.  Email contenente un avviso di addebito in conto di un importo esorbitante e/o molto particolare per lacquisto di beni non normalmente acquistati o di cui è facile capire si tratti di un errore (ad es. un PC, una autovettura).  
    Per avere maggiori dettagli il destinatario il destinatario può accedere al link fornito in cui, per accedere, viene poi richiesta la userid e la password, in modo da poterla agevolmente catturare .  
3.   Email con avviso analogo al precedente, ma il destinatario, accedendo al sito web referenziato nella mail viene invitato a scaricare in Trojan Virus che recupererà i deti personali e li ri-invierà all'hacker.
  
E' da notare che l'ultima ipotesi è quanto mai attuale, soprattutto con le ultime problematiche di sicurezza apparse su Web che consentono ad un qualunque sito web di "scaricare" silenziosamente codice sui PC degli ignari utenti web con un meccanismo deniminato Download.Ject che è stato utilizzato e continua ad essere utilizzato in numerosissimi attacchi.  
E' inoltre da sottolineare che se l'attacco di Phishing su un PC privato può portare ingenti danni, la quantità di informazioni ottenibili non è nemmeno vagamente paragonabile al disastroso danno che un attacco di questo tipo può causare su sistemi aziendali , dove l'intera rete diviene oggetto di possibili fughe di materiale, dati, conti bancari, documenti riservati.   

#Una lingua franca virale

Da sommarsi ai precedenti problemi esiste inoltre la nuova "moda" del poliglottismo dei virus. Se fino ad oggi le email erano in inglese, e ciò lasciava relativamente tranquilli i Paesi non di lingua inglese, ora le email sono tradotte in altre lingue, italiano incluso. La diffuzione, infatti, di servizi gratuiti di traduzione online che, per quanto imprecisa, fornisce comunque un risultato intelleggibile al madrelingua ha permesso agli autori dei nuovi sistemi virali di integrare funzionalità di spedizione in un linguaggio appropriato. Ne è un esempio eclatante W32.Erkez , che spedisce spore infettanti in 20 lingue differenti...  
D'altronde ognuna delle nostre mail porta quasi sempre insita al suo interno una informazione molto importante riguardo alla nazionalità del destinatario: il TLD del dominio di riferimento (il .it, .co.uk, .de). In base anche solo a questa informazione è facile per il programma discernere , dalla libreria interna, quale messaggio inviare.  

#Un consiglio per cautelarsi
Do per scontato che siano state adottate tutte le opportune misure per proteggersi dai virus e da attacchi diretti al nostro sistema. Ciò anche se stiamo assistendo, purtroppo, ad una riduzione drastica dei tempi fra rivelazione di un nuovo "bug" e diffusione di un virus che lo sfrutta. Su questultimo aspetto, andrebbe aperto un dibattito, in quanto lunico rimedio al momento noto, è quello di diffondere rapidamente una nuova patch, non appena questa si renda disponibile.  

Un unico accorgimento che mi sento di proporre, per quanto semplice e forse banale, per poter discernere la veridicità o meno del sito web a cui si viene rediretti è la seguente:

> ##IN CASO DI DUBBIO##
> ##SBAGLIATE VOLUTAMENTE##
> ##LA PASSWORD##

Sembrerà stupido, ma l'utente malintenzionato che dovesse voler carpire l'informazione in oggetto non ha alcun modo di discernere se la le informazioni che fornite sono esatte o meno . Ad una richiesta di password, quindi, errate di proposito il primo tentativo. Se il sistema si "accorge" che la password introdotta non è quella corretta, allora avrete garanzie in più che il sistema possiede le giuste credenziali o che, quantomeno, l'informazione Password che vi accingete a comunicare è già in suo possesso .

#Per maggiori dettagli

Segue una piccola bibliografia web sull'argomento.

*  Download.Ject presso [Microsoft](http://www.microsoft.com/security/incident/download_ject.mspx)
*  Download.Ject presso [Symantec](http://securityresponse.symantec.com/avcenter/venc/data/download.ject.html#technicaldetail)
*  Erzez, il virus poliglotta presso [Symantec](http://securityresponse.symantec.com/avcenter/venc/data/w32.erkez.b@mm.html)
*  Worm per il Phishing presso [Netcraft](http://news.netcraft.com/archives/2004/06/02/phishing_worm_installs_trojan_without_trickery.html)
*  Il Work Group per la tutela dal Phishing presso [Antiphishing](http://www.antiphishing.org/)
*  Worm utilizzati per la cattura delle carte di credito presso [Sifty.com](http://sify.com/news_info/fullstory.php?id=13442609)
*  Il report sul Phishing di Aprile 2004 presso [ComputerWorld](http://www.computerworld.com/securitytopics/security/cybercrime/story/0,10801,93247,00.html)
*  Distinzione tra Hacker e Cracker presso [HANC](http://www.hancproject.org/)

Come al solito sarò lieto di ricevere feedback sull'articolo. Potete contattarmi agli indirizzi presenti alla Pagina dei Contatti
 
