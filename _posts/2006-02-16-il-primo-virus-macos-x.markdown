--- 
layout: post
title: Il primo Virus MacOs X?
meta: {}

tags: 
- security
---
Sembra che anche gli **utenti MacOs X** siano stati elargiti di quel meraviglioso dono del mondo Windows chiamato Virus. Certe cose sono semplicemente **troppo belle** per non essere esportate=].  

Nella notte del **13 Febbraio** un utente non registrato ha postato sul [forum di MacRumors](http://forums.macrumors.com/) un [link ad un file](http://forums.macrumors.com/showthread.php?t=180066) che dichiarava di contenere gli **ultimi screenshot** in anteprima di Leopard Mac OS X 10.5. Il file aveva nome "*latestpics.tgz*" e il rumor aveva come ovvia intenzione quella di **attirare i curiosi** verso informazioni su una revisione del sistema operativo che **non è ancora in possesso** nemmeno degli sviluppatori..  

Il file risultante dalla decompressione appariva essere un **file standard di icona JPG** ma nascondeva in effetti un **eseguibile Unix opportunamente celato**. Un [primo tentativo](http://forums.macrumors.com/showpost.php?p=2145834&postcount=63) di **disassemblamento del codice** (ecco il [thread originale](http://forums.macrumors.com/showthread.php?t=180323)) rivela che l'applicazione contiene codice **virus-like** o programmato per apparire tale. Anche le stesse routines contenute hanno nomi sicuramente **significativi**:  

_infect:  
_infectApps:  
_installHooks:  
_copySelf:  
  
Le conseguenze precise dell'utilizzo dell'applicazione sono ad oggi **ancora sconosciute** ma dalle [note dei primi utenti](http://forums.macrumors.com/showthread.php?t=180323) contagiati sembrerebbe **diffondersi in modo autonomo**, anche se non è chiaro se attraverso differenti drive, connessioni di rete e/o mail.  

Unico dato certo ad oggi è l'utilizzo da parte del malicious code di **SpotLight per ricercare altre applicazioni** sul computer vittima e **infettare la macchina ospite** inserendo codice negli eseguibili.  

Andrew Welch sta seguendo gli sviluppi della situazione in [questo thread](http://www.macrumors.com/c.php?u=http%3A%2F%2Fwww.ambrosiasw.com%2Fforums%2Findex.php%3Fshowtopic%3D102379&t=1140073462).  

Personalmente tratterò l'argomento alla prossima edizione del [MasterCourse di Virus e Sicurezza Informatica](http://www.lra.it/web/dettaglioCorso.do?corsoId=855&nome=Virus_informatici:_Strategie_di_infezione_e_Tecniche_di_prevenzione) che terrò a Milano il [10-11 Aprile 2006](http://www.lra.it/web/dettaglioCorso.do?corsoId=855&nome=Virus_informatici:_Strategie_di_infezione_e_Tecniche_di_prevenzione).

**UPDATE:** Una volta tanto ho qualche ora di anticipo su [SlashDot](http://www.ambrosiasw.com/forums/index.php?showtopic=102379).... Inoltre segnalo il completo articolo di [Andrew](http://www.ambrosiasw.com/forums/index.php?showtopic=102379).

##E' un virus?

Una nota di definizione piuttosto importante riguarda **cosa si intenda per Virus** e se questo debba o meno essere classificato tale necessitando di un **intervento diretto di esecuzione** da parte di un utente e **non autoreplicandosi** al di fuori dell'ambiente ospite (salvo, ricordiamoci, se l'utente utilizza supporti esterni per memorizzare informazioni infette). A tal proposito la definizione formale di Virus recita:

> In computer security technology, a virus is a self-replicating program that spreads by inserting copies of itself into other executable code or documents. A computer virus behaves in a way similar to a biological virus, which spreads by inserting itself into living cells. 

In altre parole se **è corretto definire** l'applicativo un **Troyan** poichè si cela all'interno di un supposto contenuto di immagine, esso apparteine inoltre ad ogni merito alla categoria formale dei Virus. 
