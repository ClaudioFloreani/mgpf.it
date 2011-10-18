--- 
layout: post
status: ok
title: "Ma perché i sistemi OpenSource sono più sicuri?"
meta: {}
tags: 
- digital-freedom
---
La giornata di oggi e l'annuncio del fixing della casa di Redmond di [cinque falle di sicurezza](), alcune delle quali già conosciute da Febbraio di quest'anno ha acceso nella Mailing List di AIP un acceso dibattito sulla **intrinseca insicurezza** dei sistemi ClosedSource.  
In questo scenario ho pensato di riassumere in due parole la mia posizione in materia, che tendo a sottolineare ogni qual volta il problema si pone.  
Onde evitare di essere accusato di **oscurità e di tecnicismi** ho pensato di scrivere un piccolo Post che mostri la situazione in una ottica **agevole da leggere e comprendere**, così da poter dare l'opportunità anche a persone non addentro alle problematiche di sicurezza di comprendere il mio punto di vista...  
Scusate la banalità di alcuni passaggi, servono più che altro a me per costruire il sillogismo ;)  
Credo che il punto di base da sottolineare è il seguente: se possiedi software OpenSource **possiedi (da definizione) i codici sorgenti**.  
Se qualche **problema di sicurezza** viene riscontrato nell'applicazione o nel sistema operativo che possiedi hai puoi seguire **tre vie** per ovviare all'inconveniente:
1. Aspettare che il **maintainer** del pacchetto **elabori e ti fornisca un FIX**.
2. **Fixare tu stesso** in modo eccellente il problema ed inviare il tuo codice al mainteiner perché sia incluso nella prossima versione e **fruibile da tutti gli utenti** con un semplice Update.
3. Provvedere a creare **tu stesso una "patch"**, un fix *provvisorio* che risolva il problema temporaneamente in attesa della perfetta patch del maintainer.  
In ciascuno dei casi la risposta ad alcune problematiche è praticamente immediata poichè se è vero che forse **non si è personalmente** in grado di seguire la strada 2), moltissimi altri delle **migliaia di utilizzatori** dello stesso pacchetto saranno in grado di farlo, di fatto **"tamponando" alle problematiche in modo corale e pressochè immediato**.  
Inoltre c'è una buona probabilità, se si è abbastanza in gamba, che **si possa autonomamente affrontare** per lo meno lo scenario 3 e provvedere alla sicurezza del nostro ambiente **almeno temporaneamente**.  
In un contesto di **sistema operativo proprietario** e "monolitico" (come di fatto è Windows), al contrario, si è sempre e comunuque **obbligati ad attendere** che l'"autority" in questione prenda atto del problema, studi una soluzione, la faccia realizzare e la diffonda.  
In nessun modo è possibile per l'utente **fixare autonomamente** il problema oppure rivolgersi alla community (peraltro altrettanto estesa che quella Open) di sviluppatori: nessuno infatti può fare nulla **non avendo la fisica possibilità** di mettere le mani sul codice e correggere il problema.  
Scusatemi l'esempio stupido, ma supponiamo che l'oggetto delle nostre speculazioni non siano software ma **automobili**.  
In questo caso, allora, lo scenario del software Closed equivarrebbe allo scenario in cui **per qualunque guasto** si è obbligati ad **andare in casa madre**. Non solamente questo: non saremmo autorizzati ad andare da un **QUALUNQUE meccanico** competente o certificato (ad es. un competente MCSD!), ma ci troveremmo a dover passare per forza **dalla sede centrale della casa automobilistica**.  
Arrivati lì normalmente dopo aver percorso 2500 km, viste che esiste una sola sede centrale per il mondo, ovviamente **troveremmo innumerevoli colli di bottigia** e così per sostituire le pastiglie del freno (ed ovviare ad un problema di sicurezza) ci troveremmo di fronte **altre 8.000 persone con problemi di altra natura** ma giunti prima di noi. In questo modo attenderemmo, ovviamente e giustamente, **circa 8 mesi** per risolvere un inconveniente che altrimenti un meccanico preparato (anche volendo certificato) **avrebbe risolto in 10 minuti**.  
Questo perché il meccanico in questione, in un contesto OpenSource, AVREBBE AVUTO la possibilità **non solamente di osservare** e diagnosticare il problema, ma **anche di fixarlo**...  
Lasciatemi aggiungere, inoltre, una piccola postilla: il meccanico OpenSource avrebbe anche potuto **occasionalmente notare** che alcune viti del radiatore erano allentate e **avvisare la casa** che esisteva un potensiale problema su quel tipo di vettura. In questo modo con 1.000.000 di meccanici al mondo che **regolarmente squadrano un motore da capo a piedi** per vedere cosa non funziona, il meccanismo di **rilevazione di "vulnerabilità"** e di segnalazione delle medesime (oltre che di patch) sarebbe sicuramente **ordini di magnitudo più efficiente** e razionale.  
Cosa succede agli utenti di autovetture ClosedSource, invece? Beh, le anomalie **non vengono segnalate** e probabilmente vengono fixate al primo **service-tagliando-pack**. E finchè qualcuno **non si fa del male** per una anomalia molto spesso la stessa **non viene nemmeno divulgata** se non a posteriori.
Quando si parla di **intrinseca insicurezza dei sistemi closed**, e quindi anche del sistema operativo di casa Redmond, se non si è degli "*oltranzisti*" (cosa che peraltro non sono) ci si rivolge proprio a **problematiche di questo tipo**.  
Un fix di qualunque tipo impiega **di norma pochi giorni per applicazioni Open** e **pochi mesi per applicazione Closed**. E spesso questo non è dato dalla intrinseca incapacità del vendor, ma per contingenti necessità organizzative e di priorità.  
Ecco perché, nell'ambiente, si parla di **maggior "sicurezza" dei sistemi OpenSource**: principalmente per il tempo di risposta e per la POSSIBILITA' di non essere in balia di un vendor ma di essere, invece, in potenza autonomi di congeniare una soluzione anche solamente "tampone" (è chiaro che il vendor studierà una soluzione migliore!) a **qualunque tipo di falla** e di problematica.  
Si parla di **poterci sostituire** l'acqua del lavavetri, le lampadine dei fanali e le pastiglie dei freni.  
O anche, più semplicemente, di **poterlo fare fare a 1.000.000 di persone** invece che ad una unica entità di vendor...  
 
