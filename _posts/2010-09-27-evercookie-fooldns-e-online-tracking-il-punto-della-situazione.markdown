--- 
layout: post
status: ok
title: "Evercookie, FoolDNS e Online Tracking: il punto della situazione"
meta: 
tags: 
- digital-freedom
- paranoia
- the-fool
---
<a href="http://fast.mgpf.it/2010/09/fdns.png"><img src="http://fast.mgpf.it/2010/09/fdns-540x246.png" alt="" title="fdns" width="540" height="246" class="aligncenter size-medium wp-image-2181" /></a>  
  
Visto che il tempo per scrivere su questo Blog si fa sempre più ridotto colgo l'occasione per ripostare una lunga missiva indirizzata da HackMeeting sul tema di FoolDNS Community, dell Profilazione Online e dei nuovi sviluppi della rete anche facenti capo alla pubblicazione della comoda API di profilazione [EverCookie](http://samy.pl/evercookie/). Al fine del posting su Lastknight ho un po' redatto alcuni contenuti ed un po' rimodificato il testo. L'originale è comunuque disponibile negli archivi online della Mailing List di hackMeeting.  
  
> mi immagino gia' vari big interessati al tracciamento dei clienti che
> si tuffano su progetti del genere. 
  
Benchè sia ben conscio che questa mia mail scatenerà un flame credo sia arrivato il momento di fare un attimo di chiarezza su una serie di punti sul mio lavoro degli ultimi anni, che il buon Calamari definisce sempre "troppo ermetico, troppo nascosto".
Ho preferito, dove non riuscivo a convincere della pericolosità di talune pratiche la comunità (che 3 anni fa mi dava del paranoico) continuare in un processo individuale che ha portato alla realizzazione di una società ed un prodotto che sicuramente conoscete.  
  
Ovvio che per la comunità di hackMeeting non andrà bene, che non sarà abbastanza open, che tutti sono più bravi e meglio capaci, che questo non è lo spirito e bla bla bla bla, ma di base non mi pongo il problema. Sono abituato a "get the things done" e attualmente senza dover aspettare il consenso delle masse abbiamo realizzato un sistema che funziona (bene) e che determina un pesante innalzamento della sicurezza personale contro il tracking online. Code rules, il resto è fuffa (per me).
Il concetto alla base del sistema che ho escogitato qualche anno fa e che attualmente è utilizzato da qualche decina di migliaia di utenti (FoolDNS.org) è nato esattamente per la gestione del blocco di tracking di Third Party e si inserisce in una ben più vasta schiera di tool e di azioni internazionali per la difesa dal tracking effettuato mediante una serie di tool. Tra questi tool anche Flash Cookies e HTML storage (per esempio), ma non solo: anche clock trackers, url shorteners, image trackers di mailing Lists, unique Browsers Id, Updating Beacons ed una manciata di altri fenomeni.
Il panorama delle realtà che pensano a questo tipo di problematiche è denso e fervido di risorse, tra cui il meraviglioso AdBlock e il servizio di forcible opt-out di privacychoice.org. Sfortunatamente nessun sistema che al tempo avevamo analizzato offre lo stesso tipo di protezione di FoolDNS e della tecnologia sottostante.
FoolDNS dirotta le chiamate a questi siti su una pagina di mockup che consente di erogare contenuti che non interferiscano con la navigazione (generando errori) ma che di fatto invalidi il tracking code che sarebbe stato altrimenti attribuito all'utente. E lo fa per una serie di Host anche al di fuori del browser, come ad esempio i trackers basati su NNTP o su Phone-Home calls. In questo modo la comunicazione tra differenti realtà, che viene effettuata attraverso Third Parties, o cross domain viene totalmente interrotta.  
In altre parole: ""trova, blocca e confonde"" i siti web che dovrebbero profilare l'utente.  
  
Il concetto di EverCookie è in realtà già vecchio: il sistema proposto è infatti già alla base negli USA di [una Class Action contro un Third Party profiler][1], il network [RingLead][1] che lo utilizzava per il meccanismo noto come Cookie Re-Enactment o ReSpawn: in pratica quando l'utente cancellava i cookie, gli stessi cookie erano "resuscitati" prendedno i dati in essi contenuti da un "punto d'appoggio" in cui erano stati immagazzinati ed in cui non erano e non sono cancellabili.  
  
Il concetto stesso del tracking di terze parti mediante uno o più beacon è un fenomeno ormai pervasivo, tanto da essere stato discusso anche su prestigiose testate internazionali:
<http://online.wsj.com/article/SB10001424052748703940904575395073512989404.html?mod=WSJ_Tech_LEADTop>
L'ultimo esempio di pesante media coverage lo avete visto tutti, suppongo, nel famoso Don't Track Me, dove il CEO è prappresentato come un predatore di dati personali. Quando reale o dissimile dalla ferità questa rappresentazione sia non è nostra facoltà giudicare.

{% youtube --Ckz_O6oE0 %}

Ma il WSJ non si è fermato alla sola indagine, effettuando una serie di controlli maggiori e veramente ben spiegati all'interno di un bell'articolo sulla metodologia:
<http://online.wsj.com/article/SB10001424052748703977004575393121635952084.html>
E' buffo, inoltre, notare come cambiano i tempi: l'unico browser che mette nativamente a disposizione sistemi di blocco dei beacons è Internet Explorer con la funziona InPrivate. Tremendamente insufficiente a bloccare altre "pests" di tracking a livello di sistema operativo ,è comunque una valida barriera di base dalla ex vituperata casa di Redmond ed un segno dei tempi che cambiano.

> la  replicazione dei dati si  comporta proprio come un virus. immagino la festa quando gli accordi
> commerciali fra google e facebook permetteranno a uno di incrociare le
> ricerche con il profilo dell'altro, in base agli evercookie settati
> durante la navigazione, sempre ammesso che cose del genere non stiano
> gia' succedendo senza alcuna pubblicita'.

Certamente che stanno succedendo, e nemmeno di nascosto. Una delle più prominenti realtà del settore, che recentemente ha chiuso un financing round (credo fosse un B) da 15 Milioni è l'americana [Exalate.com](http://exalate.com), che siautodefinisce "Behavioral Targeting Data Marketplace". Le realtà che possiedono dati di behavioral ma non hanno la possibilità di utilizzarli correttamente possono venderli al miglior offerente e monerizzare quindi un asset altrimenti inutilizzabile.

> qualcun'altro trova la cosa preoccupante? o sono paranoico? (o sono
> troppo poco paranoico? :) )

Se ti senti paranoico sei in buona compagnia. E anche in cattiva compagnia, se ti senti anarchico, visto che le tue perplessità e preoccupazioni sono condivise sia dalla FTC (Federal Trade Commission)
americana, sia dal WP-29 (Working Party 29 sulla Privacy) Europeo.
Entrambi hanno redatto documenti estremamente stringenti sul consenso informato e sull'Opt-In contrapposto all'Opt-Out.

I documenti di proposal della FTC sono veramente ben curati e sono disponibili qui:
<http://www.ftc.gov/opa/2007/12/principles.shtm>
Ancora più "paranoici" e sicuramente tecnicamente estremamente informati sono i pareri del WP29 europeo, lo stesso che ha "mazzuolato" Google per le ridicole misure di anonimizzazione dei log mediante cesura ultimo ottetto. La Opinion espressa è estremamente vincolante ed illuminante come GuideLine:
<http://ec.europa.eu/justice_home/fsj/privacy/docs/wpdocs/2010/wp171_en.pdf>
Giusto per dirti che non sei solo, ma sono dell'opinione che il raggiungimento degli obiettivi a lungo termine sia percorribile solamente dietro ad uno strumento di coercizione dei livelli di privacy
come FoolDNS, che OBBLIGHI a pensare al problema i vendors sotto la costante minaccia della distruzione delle revenues pubblicitarie in
mancanza di una adeguata politica di tutela dei dati personali.

> la _prima_ cosa che ho pensato appena ho letto e' stata di cercare di
> costruire un software che li stani uno per uno, anche se temo che, una
> volta che questo software esista, si tornerebbe alla corsa fra librerie
> di cookie sempre piu' schive e difficilmente rilevabili e la
> costruzione di programmi di rimozione.

No, non è così difficile e con un po' di pazienza ed un costante aggiornamento delle liste è possibile una buona resistenza alla profilazione. E' quello che, a tutti gli effetti, facciamo noi quotidianamente con FoolDNS, e a cui puoi partecipare con la segnalazione di nuove "pests" direttamente online.

> mi ha fatto anche abbastanza ridere l'affermazione dell'autore, che
> dice di averlo creato solo per far capire alla gente come e' ridotta la
> privacy degli utenti.

E perché mai? La percezione di tale tracking è DIFFICILISSIMA da mostrare. Anche noi per effettivamente mostrare le possibilità di tracking e perché è necessario dotarsi di strumenti di contenimento del rischio abbiamo creato un software (codename "Magician", che ho mostrato quest'anno a E-Privacy) che mostra i pericoli della navigazione non protetta da un punto di vista di schedatura e profilazione.  
E se ci pensi bene buona parte della infosecurity, nel bene e nel male, ha avuto e ha bisogno di ScareWare per prendere coscienza delle problematiche: se non ci fosse Kismet chi securerebbe le reti? Triste ma vero, I suppose.
Io dovevo solamente al buon Calamari una spiegazione di questo tipo sull'operato di FoolDNS in questi anni, aggiungendo che le politiche di gestione della privacy interne a FoolDNS sono pubbliche e adamantine. Non chiedo certo di rimuovere il tinfoil hat, ma stiamo andando avanti per la creazione di una vera alternativa basata sui modelli di VRM.
Un buona iniziazione ai concetti che saranno alla base del Business Model di FoolDNS sono disponibili leggendo il sentimento della rete sulla cosa, ad esempio qui:
<http://realestatecafe.pbworks.com/Monetizing-VRM>
Chiudo il tutto ringraziando tutti quelli che leggono qui e che negli utlimi mesi stanno dando manforte al progetto con continue segnalazioni e con codice, e mi rimetto a fare cose. Se volete sapete sempre dove trovarmi. Ed è bello ogni volta constatare come dietro ad HM non ci sia solamente una schiera di individui urlanti (che comunque fanno folclore!) ma anche una serie di coders silenziosi e pragmatici
 attivisti che sanno dare una mano quando serve.
Come dico sempre, Estote parati. E per chi volesse un po' di sicurezza ecco qui sotto il link all'installer di FoolDNS Community.
<a href="http://www.fooldns.com/fooldns-community/download/"><img src="http://www.fooldns.com/wp-content/themes/c3/images/fdns-installer.png" border=0></a>

[1]: http://www.scribd.com/doc/37554403/Ringleader-Lawsuit#fullscreen:on
