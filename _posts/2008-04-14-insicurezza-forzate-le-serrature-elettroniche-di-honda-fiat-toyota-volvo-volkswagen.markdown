--- 
layout: post
title: "(in)sicurezza: Forzate le serrature elettroniche di Honda, Fiat, Toyota, Volvo, Volkswagen..."
meta: {}
tags: 
- antifurto
- antifurto Fiat
- antifurto Honda
- antifurto Toyota
- antifurto Volkswagen
- antifurto Volvo
- about-me
- forzare antifurto
- security
---
Consueta anteprima della mia rubrica sul Punto Informatico.  
  
---  
  
Credo che sia ormai chiara a tutti la mia insana passione per le frasi latine, ma questa settimana l'unica che mi senta di poter citare è la solita "[vox clamantis in deserto][1]".  
Chi parla di sicurezza informatica, infatti, si ritrova spesso e volentieri di fronte alla condizione di Zarathustra che parla ignorato. Marco Calamari chiama queste persone i "Lavoratori di Sisifo", inneggiando alla mitica figura che porta una pietra sulla cima di un monte per poi vederla irrimediabilmente tornare a valle e dover riprendere dal principio.  
  
Di sicuro spesso e volentieri mi sono chiesto se la gente possiede una innata stupidità ed avversione all''imparare, se sono io sia particolarmente geniale ed intelligente (ipotesi che tenderei a scartare) o se più semplicemente la storia debba ripetersi per qualche sorta di eterno Karma della Insicurezza Informatica.  
  
Già, perché l'articolo che sto scrivendo è esattamente identico nei termini a quello che ho pubblicato meno di un mese fa , sempre [qui sul Punto Informatico][2] in merito alla [duplicazione degli abbonamenti delle metropolitane][2] dovuto ad una implementazione "casereccia" degli algoritmi di cifratura e a quel concetto obsoleto e idiosincratico (per non usare termini più coloriti) di "[Security Through Obscurity][3]".  
  
Ma procediamo con ordine ed ad esaminare il [lavoro congiunto][7] del Dipartimento di Computer Science del Technion di Haifa in Israele, del  Dipartimento di Ingegneria Elettronica ESAT/SCD-COSIC presso la Katholieke Universiteit Leuven belga e l'Istituto Einstein  di matematica della Università Ebrea di Gerusalemme, che hanno ancora dimostrato l'inefficacia di una soluzione crittografica fai da te.  
  
Il tutto si basa su KeeLoq, l'algoritmo di cifratura utilizzato nei meccanismi di antifurto distribuiti dalla Microchip Technology Inc., che proteggono tra i vari appliance anche svariate decine di modelli di autovetture facenti capo ai marchi Chrysler, Daewoo, Fiat, General Motors, Honda, Toyota, Volvo, Volkswagen, e Jaguar (fonte: il [paper][6] di ricerca).  
L'algoritmo è incluso della unità remota (il "telecomando") che disinnesca l'antifurto e apre le portiere della macchina. E' ovviamente differente, salvo rari casi, al blocco dell'accensione, che utilizza altri algoritmi ed altri sistemi non wireless, quindi una volta aperta l'autovettura e disinnescato l'allarme un eventuale ladro si troverebbe di pronte all'ulteriore problema dell'accensione.    
  
Ogni dispositivo è identificato da una chiave univoca che più assumere all'incirca 18 miliardi di miliardi di combinazioni. Sino alla scoperta dei tre gruppi l'effort necessario per tentare di "rompere" l'algoritmo di cifratura era pensato essere largamente sovradimensionato rispetto al pericolo e l'algoritmo stesso veniva quindi ritenuto "sicuro".  
  
La ricerca, che fa capo agli studi sulla forzatura dell'algoritmo proprietario, è riuscita a [dimostrare empiricamente][6] che l'effort per individuare con precisione la singola chiave mediante meccanismi di "bruteforce" è di meno di un'ora su un normale personal computer equipaggiato con meno di 1000 euro di apparecchiature comunemente disponibili nei negozi di elettronica di consumo.  
Meno di un'ora per disattivare da remoto un antifurto ed aprire l'autovettura. Senza effrazione fisica. Senza lasciare tracce. Anche da una considerevole distanza.  
  
Certo, gli stessi autori sottolineano che non si tratta certo di un pericolo dirompente, visto che nella realtà dei fatti lo stesso effetto (aprire la macchina) può essere ottenuto in un tempo decisamente inferiore mediante l'utilizzo di Bump Keys, il tristemente famoso "chiavino" o Slim Jim o la cara, vecchia mazza da baseball sul finestrino, ma rimane comunque la rabbia e la sensazione di impotenza di chi si chiede perché cercare ogni volta di re-implementare la ruota anziché affidarsi a sistemi di cifratura consolidati, conosciuti e che hanno passato con successo l'esame degli anni e della comunità scientifica. Algoritmi, per altro, il cui utilizzo commerciale è gratuito.   
  
L'inutilità e pericolosità del "Security Through Obscurity" è nota sin dal 1880, quando Kerckhoffs con il famoso "[Principio di Kerckhoffs][4]" enunciava che "..un sistema crittografico dovrebbe essere sicuro, anche se tutto in merito al sistema stesso, tranne la chiave, è di pubblico dominio". E nel caso il Principio qui esposto risultasse troppo complesso la formulazione di [Claude Shannon][5] non può e non deve lasciare dubbi: "il nemico conosce il sistema".  
  
Che dire oltre a questo? Forse è da aggiungere la laconica dichiarazione di  Eric Lawson, portavoce della società produttrice, che ha fatto sapere che "Microchip Technology Inc. non si pronuncia nei riguardi della sicurezza in dichiarazioni di pubblico dominio". O, forse, anche il "no comment" del Gruppo Volkswagen, mentre Honda fa fatto sapere che passerà l'informazione al suo Team di Ingegneri.  
  
Conclusioni? Ritengo che i costruttori che provvederanno a sostituire il sistema di allarme incriminato nei prossimi anni saranno un numero che diviso per qualunque denominatore da come risultato zero.  
  
E possiamo solamente sperare che un numero estremamente nutrito delle auto di lusso che verranno rubate in questo modo siano auto private di quei manager che, ancora una volta, non hanno imparato la lezione. Chissà mai che, punti sul vivo, inizino un poco ad affacciarsi sul ventunesimo secolo ed a prendere seriamente i problemi della Sicurezza. Non solamente informatica.  
  
Estote Parati.  
  
[1]: http://it.wikipedia.org/wiki/Vox_clamantis_in_deserto
[2]: http://punto-informatico.it/p.aspx?i=2224663
[3]: http://en.wikipedia.org/wiki/Security_through_obscurity
[4]: http://en.wikipedia.org/wiki/Kerckhoffs%27_principle
[5]: http://en.wikipedia.org/wiki/Claude_Shannon
[6]: http://www.cosic.esat.kuleuven.be/keeloq/keeloq-rump.pdf
[7]: http://www.cosic.esat.kuleuven.be/keeloq/
  
[tags] antifurto, forzare antifurto, antifurto Honda, antifurto Fiat, antifurto Toyota, antifurto Volvo, antifurto Volkswagen [/tags] 
