--- 
layout: post
title: "(in)sicurezza: Che fine hanno fatto i Virus?"
meta: {}
tags: 
- (in)sicurezza
- about-me
- ddos
- form grabber
- keylogger
- security- Storm Worm
- troyan
- virus
---
**Per chi se lo fosse perso ecco il mio articolo di questo Lunedì sul Punto Informatico:**  
  
<a href="http://www.flickr.com/photos/34828812@N00/27216541/" title="" target="_blank"><img src="http://www.lastknight.com/download//2008/03/27216541_240f55d783.jpg" alt="" border="0" /></a>  
<small><a href="http://www.photodropper.com/creative-commons/" title="creative commons" target="_blank"><img src="http://www.lastknight.com/wp-content/plugins/photo_dropper//images/cc.gif" alt="Creative Commons License" border="0" /></a> <a href="http://www.photodropper.com/photos/" target="_blank">photo</a> credit: <a href="http://www.flickr.com/people/Marcelo Alves/" title="Marcelo Alves" target="_blank">Marcelo Alves</a></small>

E' notizia di qualche giorno fa, apparsa sui principali quotidiani, che il "furto di dati digitale" dell'estate di quest'anno ai danni del Ministero della Difesa americana ha recuperato molti più dati di quelli ipotizzati in un primo momento. Data la natura dei dati l'entità non è stata, ovviamente, divulgata, ma lo stesso annuncio pubblico la dice lunga sulla effettiva mole della manovra.  
  
Ma a parte la notizia in sé, che ovviamente suscita un piccolo sadico sorriso nell'anti-americano che è in tutti noi (nascosto ma c'è, non foss'altro che per dire "Visto che bucano anche loro?"), la vera notizia, secondo me, più che l'illazione su un attacco proveniente dalla Repubblica Popolare Cinese, sono le modalità dell'attacco stesso, che è stato condotto, per ammissione della stessa agenzia, utilizzando una vulnerabilità conosciuta e non patchata.  
In altre parole, anche al Pentagono qualcuno non aggiornala le macchine.  
  
Certo, è sempre la solita storia per chi in questo campo ci vive e ci lavora: il cliente a cui si fa presente la vulnerabilità e che nel buon 80% dei casi risponde con un laconico "A Dottò! Ma tanto a noi chi vuole che ci buchi?". Il problema sembra infatti essere la mancanza di dati "appetibili" per un attaccante, come ad esempio contabilità o brevetti e marchi: mancando queste informazioni la piccola PMI si vede al sicuro poiché non ha nulla di "appetibile" per il possibile attaccante.  
In altre parole i sistemi sono sicuri perché praticamente inutili se non al fine aziendale.  
Ed è proprio di questo atteggiamento che la nuova criminalità su web vive, l'esatta attitudine mentale che da gloria e ricchezza a chi vive di DDOS, phishing e click scam.  
  
Mentre stavo preparando una conferenza che terrò la prossima settimana mi sono interrogato su come portare all'occhio di un uditorio non tecnico le nuove frontiere della criminalità informatica, di come fare trasparire i tempi che cambiano con un concetto che fosse comprensibile da parte di chiunque e che potesse fare inquadrare il problema. Alla fine credo di aver trovato questo concetto con una semplice domanda da porvi: "Che fine hanno fatto, secondo voi, i virus?".  
Già, perché sicuramente ricorderete sino ad un paio di anni fa come ogni circa 6 settimane arrivasse puntuale la ventata del nuovo Virus. Ricorderete la corsa ai gazzettini ed agli avvertimenti (anche su Punto Informatico) per le nuova variante che doveva essere osservata, sul nuovo virus che l'antivirus Tizio o Caio ancora non rilevava e via dicendo. Una corsa, vera e propria, alla patch ed all'aggiornamento che ora sembra magicamente essere sparita.  
Che gli antivirus siano arrivati alla perfezione? Scusatemi, ma non credo proprio. Quelli che si sono trasformati non sono i guardiani ma i prigionieri: i virus si sono evoluti e, soprattutto, non danno più il fastidio di prima.  
  
Già, perché un po' come è successo con gli Spyware i virus storici davano fastidio: reboot, macchine inchiodate, spam di infezione, comportamenti assurdi del computer. In altre parole una serie di "fastidi" digitali che portavano innanzitutto a notarli ed in secondo luogo a prodigarsi per la loro rimozione. Perché l'obiettivo di questi virus che chiamerei "adolescenti" era quello di una gara alla diffusione fine a sé stessa, senza scopo altro che non la visibilità del writer o del gruppo che li aveva creati. Una sorta di POC (proof of concept) di cosa era possibile fare con i mezzi adeguati.  
Ma anche il mercato è cambiato ed ora i vecchi virus vedono una nuova rinascita in altre spoglie: come macchine per soldi.  


  
L'esempio nefasto di Storm Worm è all'occhio di tutti e parla di una nuova strategia. Parla di virus "silenti" e non fastidiosi, semplici accoglienti tane dove incubare ed essere pronti all'occorrenza. E quale occorrenza? Moltissime e variegate.  
  
Innanzitutto i vari Form Grabber, che altro non fanno che recuperare le credenziali introdotte non "ovunque" come un normale keylogger, ma all'interno di specifiche pagine web. Così facendo un Form Grabber può agilmente essere programmato per recuperare le credenziali di ingresso a svariati portali come banche, servizi web, posta elettronica o extranet aziendali, per poi inviare i dati altamente selezionati e pronti all'uso indietro verso il proprietario, quel "Signore dei Robot" (gioco sul termine inglese "bot Master") che possiede decine di migliaia se non centinaia di macchine contagiate e che non deve fare altro che attendere.  
  
Oltre a questo il proliferare di servizi di "pay per click", primo tra tutti Google AdSense dove l'utente viene pagato in quid per ogni click che viene fatto su un banner che espone, ha creato un vero e proprio mercato di servizi di Click Fraud, dove le centinaia di migliaia di macchine contagiate altro non fanno che cliccare saltuariamente su questo o un altro banner al fine di creare un indotto economico per chi controlla la pubblicazione del banner stesso, il criminale o l'organizzazione di turno che ha creato spazi e siti appositi per questi precisi scopi.  
  
Ma la fonte forse più redditizia di introiti delle Bot Network di macchine contagiate è data dall'unica vera funzionalità che terrorizza qualunque realtà web: il DDOS.  
Già perché non esiste realtà che possa ad oggi efficacemente contrastare un DDOS (distributed denial of service) in cui centinaia di migliaia di macchine non fanno altro che inviare traffico anche legittimo verso una unica destinazione. E se ci pensiamo bene l'Italia, da questo punto di vista, è un bersaglio goloso per i bot Masters: centinaia di migliaia, se non qualche milione, di terminali connessi con ampiezza di banda dai 10Mb ai 30Mb. Anche supponendo un traffico in uscita tra i 300Kb ed i 1500Kb per singola macchina significa che con un migliaio di macchine posso ottenere quasi un Gigabit di traffico da indirizzare contro il portalone o l'istituzione di turno per metterlo, letteralmente, in ginocchio.  
Non esiste realtà preparata ad affrontare attacchi per decine e decine di Gigabit che arrivino saltuariamente e senza preavviso, e la vicenda Estone di qualche tempo fa ne è l'esempio lampante.  
  
E quindi che fine hanno fatto i Virus? Si sono evoluti. Non danno fastidio per non essere individuati e divengono quasi inoffensivi parassiti dell'organismo che li ospita. Hanno una fase, se così vogliamo dire, di incubazione molto lunga e piccoli, brevi episodi di infezione vera e propria.  
Ma bisogna ricordare che, nel frattempo, la nostra macchina è un filino meno nostra. I nostri dati sono un filino meno nostri.  
  
Come contrastare il fenomeno? Comportandosi come se vi fosse sempre e comunque il pericolo, aggiornando i computer ad ogni possibilità, aggiornando sistemi vari di rilevazione in modo automatico e, soprattutto, preparandoci al peggio con un buon piano di intervento. Certo non eviteremo tutti i problemi, ma per lo meno eviteremo l'imbarazzo di spiegare a qualcuno perché la nostra rete aziendale è un vivaio di ospiti indesiderati che nessuno ha verificato solo perché da tempo non vediamo sul giornale avvisi di Virus importanti.  
  
"Estote Parati".  
  
MgpF

NB: nel corso di questo articolo ho utilizzato il termine virus in senso lato. Il termine corretto per la definizione di malware propagantesi in modo autonomo sul web è Worm ed un Worm è anche lo Storm citato. Ho semplicemente ritenuto che l'utilizzo del termine Virus fosse più intuibile all'utente medio del termine "Codice Malevolo". 
  
 
