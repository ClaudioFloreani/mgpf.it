--- 
layout: post
title: "OWASP Day 2: la Web Application Security parla (anche) italiano"
meta: {}
tags: 
- Me &amp; The Web
---
Il 31 Marzo a Roma il panorama della Web Security italiana ha visto in OWASP Day 2 una delle sue massime espressioni. Non solamente esperti italiani, ma esperti di tutto il mondo sono arrivati a ROma per discutere non solamente di tecnicismi e non solamente di procedure, non solamente di visioni Enterprise e non solamente di tecniche di Penetration Testing.  
Se un aggettivo può essere usato per l'evento, quello è sicuramente onnicomprensivo: sono stati sviscerati problemi e si sono posti interrogativi su molti piani, una collaborazione di competenze ed una unione di mondo veramente peculiare e non certo normale nel panorama della Information Security.  
  
Ma partendo da un passo indietro è bene definire chi sia OWASP e cosa faccia: OWASP (The Open Web Application Security Project) è unorganizzazione internazionale che si occupa di rilasciare documentazione, linee guida e tool per la Web Application Security.  
Liniziativa è animata da migliaia di professionisti sparsi in tutto il mondo; il materiale prodotto è liberamente fruibile sul nostro sito con licenza Creative Commons Attribution ShareAlike per il portale wiki e licenze open source per il materiale pubblicato. Attualmente vi sono più di 100 capitoli (Chapters) sparsi in tutto il mondo con lo scopo di promuovere liniziativa e di discutere delle tematiche di Web Application Security localmente nei vari paesi.  
  
E le tematiche sono state sicuramente analizzate nell'evento, organizzato in collaborazione con lUniversità La Sapienza, dal titolo The State of the Art of the Web Application Security and the OWASP guidelines in the Companies.  
  
Un evento di una giornata intera in cui si sono discusse le nuove problematiche di sicurezza per le applicazioni web e di come implementare un ciclo di vita del software con i controlli di sicurezza per le realtà italiane.  
  
E non che la divulgazione sia l'unica delle attività di OWASP: attualmente i progetti implementativi facenti capo all'organizzazione e di respiro internazionale sono ben più di uno, tra cui:  
  
* la guida per lo sviluppo sicuro ([OWASP Building Guide](http://www.owasp.org/index.php/Category:OWASP_Guide_Project));  
* la guida per il test degli applicativi web ([OWASP Testing Guide](http://www.owasp.org/index.php/Category:OWASP_Testing_Project)), lo standard mondiale di metodologia di PenTesting su Web Application a cui ho avuto l'onore ed il privilegio di partecipare come Reviewer;  
  
Certo, con una buona dose di campanilismo non bisogna dimenticare che OWASP ha una fortissima anima italiana e che tra i progetti sponsorizzati spiccano gli italianissimi:  
  
* il tool di analisi statica del codice ([OWASP Orizon](http://www.owasp.org/index.php/Category:OWASP_Orizon_Project)) di Paolo Perego;  
* il tool per lanalisi di sicurezza delle applicazioni Flash ([OWASP SWF Intruder](http://www.owasp.org/index.php/Category:SWFIntruder)) di Stefano Di Paola.  
  
Inoltre partecipano al Summer of Code di quest'anno parecchia altri progetti italiani, come ad esempio:  
  
* il tool di analisi del codice ([CodeCrawler](http://www.cyphersec.com/?p=256)) di [Alessio Marziali](http://www.cyphersec.com);
  
Vi erano, insomma, tutti i presupposti per una giornata sicuramente interessante e la scelta dell'Italia come location non deve assolutamente fare pensare ad un evento in sordina.  
  
##La giornata  
  
Gli eventi che si sono susseguiti hanno riguardato tematiche differenti, dall'approccio Corporate a quello strategico per approdare agli interventi tecnici.  
  
Partendo dall'approccio Enterprise sono state illuminanti per molti versi le slide di Marco Bavazzano (CISO TELECOM Italia) che ancora più della relazione intitolata "L'approccio di Telecom Italia allo sviluppo sicuro delle applicazioni" hanno mostrato con grafici da capogiro quali livelli di complessità possono raggiungere lo sviluppo e la ricerca sulla sicurezza del codice. Se fosse sempre data l'opportunità di lavorare alle strutture preposte al controllo sarebbe sicuramente difficoltoso rinvenire il numero di vulnerabilità che affliggono le moderme architetture Web.  
Il problema, ancora una volta, è il non seguire una metodologia impostata, non certo una mancanza di capacità, conoscenze o desiderio di perfezionismo. In questo l'intervento di Bavazzano può essere difficilmente frainteso.  
  
Anche l'intervento di Matteo Lucchetti (ABI Lab) in merito a "Le problematiche di Web Application Security: la visione di ABI Lab" ha mostrato una sensibilità alle tematiche della Web Application Security, sensibilità che, ahimè, giunge spesso sprecata nel momento in cui taluni sistemi bancari non aderiscono alle guidelines che ABI Lab tenta di fornire.  
  
Interventi di questo calibro e spessore, non certo di rappresentanza quanto manifesto di competenza da parte delle strutture preposte alla sicurezza, scatenano ovviamente le domande sulla motivazione dietro alla permanenza di talune problematiche in contesti bancari o di telecomunicazione: come si è discusso nella sessione plenaria finale forse ciò che manca in Italia oggi è una legge equivalente alla SOx anglo-americana, che determini la responsabilità pensale del legale rappresentante in caso di incidenti informatici in regimi di non commisurata sicurezza.  
Se infatti le strutture esistono, le best-practices sono conosciute e le linee guida sono state scritte è necessario punire che intenzionalmente non le applichi sistematicamente.  
  
Anche gli interventi teorici della giornata sono stati per molti versi illuminanti, primo forse tra tutti quello di Marco Morana (OWASP USA Chapter Lead e TISO  di Citigroup) che durante l'intervento dal titolo altisonante di "How to start a software security initiative within your organization: a maturity based and metrics driven approach" ha mostrato come esistano già metodologie per inserire la sicurezza nei processi aziendali in essere, lezione che dovrebbe essere imparata da qualunque persona rivesta ruoli decisionali aziendali.  
  
Passando alla teoria di programmazione pura, la giornata non è stata meno interessante. Jacob West (A capo della Divisione di Security Research di Fortify Software's) ha parlato nell'intervento dal titolo "Secure Programming with Static Analysis" degli approcci più prequenti ed assodati all'analisi statica del codice e del perchè questa sia tanto importnate in un contesto che, sempre di più, si basa su codice scritto a più mani, a più riprese e spesso basato sul riutilizzo di componenti software pre-realizzate, come librerie ed altro, di cui non possiamo dare per certa la sicurezza. La parte del talk dedicata agli scensari di programmazione sicura in contesto di utilizzo di risorse insicure è stata probabilmente tra le più affascinanti dell'intera giornata.  
  
A ricordarci poi della presenza del Web come Servizi e come piattaforma di computazione anche remota ci ha pensato Laurent Petroque, di F5, che nel talk "Web Services and SOA Security" ha illustrato come anche i Web Services si trovino ad affrontare le problematiche tipiche della Web Application Security e di come sia necessario tutelare allo stesso modo anche queste "particolari" incarnazioni della programmazione Web, talora sottovalutate e percepite come i "figli minori" nel grande disegno della Web Architecture.  
  
Certo moltissimi, io per primo, erano in prima fila per attendere i talk tecnici. Magari, sempre come il sottoscritto, in puro assetto da CheerLeader (magari meglio fanboy) quando Alberto "IceMan" Revelli (Portcullis Computer Security), ricercatore di fama, autore di [SqlNinja](http://sqlninja.sourceforge.net/) e amico da tempo ha parlato nel suo talk dal titolo innocente "SQL Injection tricks: building the bridge between the Web App and the Operating System".  
In una mezzz'ora di talk divertente e ben articolato ha mano a mano a mano gettato nel panico l'uditorio istituzionale mostrando dapprima le normali tecniche di SQL Injection, subito dopo l'utilizzo di xp_commandshell sotto piattaforma SQL 200x per l'esecuzione di comandi remoti ed infine in una sequenza da ovazione mostrato l'utilizzo di SQLNinja per l'upload via [sql Injection](http://it.wikipedia.org/wiki/SQL_injection) di un [Interprete Metasploit](http://www.metasploit.com/) per l'utilizzo come payload di un Server VNC, in parole povere mostrando come partire da una normalissima SQL injection (che oggi abbondano sui siti anche istituzionali) per ottenere il controllo completo via interfaccia visuale.  
L'ovazione finale è stata a livello di tifoseria da stadio, ma ha dimostrato ancora una volta che nel mondo della Web Application Security l'italia c'è, e con degli elementi sicuramente di prim'ordine.  
  
E se ci fossero stati dubbi sulla effettiva presenza dell'Italia dei Web Applicaztion Experts sarebbe bastato anche il solo Paolo Perego (Spike Reply) che nel suo "The Owasp Orizon project: internals and hands on" ha mostrato l'intero framework del progetto di Code Review. Una implementazione di eccezione per un progetto destinato a divenire il punto di riferimento per il settore.  
  
Altro progetto molto promettente, presentato nella sua fase di concept preliminare da Carlo Pelliccioni (Spike Reply) è stato l' "OWASP Backend Security Project", che mira a creare le guideline di programmazione per i sistemi di backend, con standard ed esempi per costituire un punto di riferimento per gli sviluppatori.  
  
A chiudere in bellezza e a mostrare, a mio avviso, la necessità dell'esistenza della Community della Web Application Security ci ha pensato Giorgio Fedon (Minded Security) che nel suo interessantissimo intervento "Internet Banking and Web Security" quale sia l'incidenza (alta) di vulnerabilità su un corposo panel di Pentest su realtà bancarie, in una sorta di chiusura del cerchio virtuale che ha mostrato come le tecnologie e metodologie esistano e siano conosciute ma come non vengano sistematicamente utilizzate e sottoposte a controllo da parte degli organi dedicati.  
  
A chiudere la giornata la giornata il veemente dibattito che ha visto come panelist, oltre al sottoscritto, Raoul Chiesa  (CTO di MediaService.net), Marco Morana (OWASP USA Chapter Lead, TISO Citigroup), Stefano Di Paola (CTO Minded Security),  Paolo Cravino (Senior IT Specialist Rational Software IBM Software Group) e Matteo Meucci come keynote.  
I temi trattati hanno riguardato la Disclosure, e la sua incarnazione in Full o Responsabile, posizione che mi vede da sempre fautore della seconda ed in aperto contrasto con Meucci e Di Paola, ferventi sostenitori di una divulgazione responsabile, anche quando il Vendor non risponde dopo mesi.  
  
Ma se sull'etica si può argomentare non lo si può fare sulla tecnica e sulla procedura, e nella giornata abbiamo avuto molto di ambedue.  
Ancora una volta spunti di riflessione e ancora una volta conferme: la sicurezza è necessaria, sì, ma non di per sè. E' necessaria come permeata nel sistema, come parte integrante dei processi di realizzazione e di controllo, deve fare parte di ogni fase, dall'architettura alla messa online, dal controllo alla revisione, in ogni fase che accompagna l'intero ciclo di vita di una applicazione o di un prodotto.  
  
Abbiamo sicuramente le basi, ora che manca? Solamente un pizzico di sana buona volontà e un po' di informazione ai "livelli alti" delle gerarchie che, con mia somma soddisfazione, popolavano copiosi la sala.  
  
Per chi volesse continuare lo studio e l'approfondimento sono disponibili le [slide dell'intervento]() e qui in coda le interviste a molti dei protagonisti della giornata:  
  
<object type="application/x-shockwave-flash" width="400" height="299" data="http://www.vimeo.com/moogaloop.swf?clip_id=932018&amp;server=www.vimeo.com&amp;fullscreen=1&amp;show_title=1&amp;show_byline=1&amp;show_portrait=0&amp;color=">	<param name="quality" value="best" />	<param name="allowfullscreen" value="true" />	<param name="scale" value="showAll" />	<param name="movie" value="http://www.vimeo.com/moogaloop.swf?clip_id=932018&amp;server=www.vimeo.com&amp;fullscreen=1&amp;show_title=1&amp;show_byline=1&amp;show_portrait=0&amp;color=" /></object>  
<a href="http://www.vimeo.com/932018/l:embed_932018">Casa LastKnight - Episodio 5</a> from <a href="http://www.vimeo.com/lastknight/l:embed_932018">Matteo G.P. Flora</a> on <a href="http://vimeo.com/l:embed_932018">Vimeo</a>.
  
Estote Parati.  
  
M.
  

11.30h	


15.30h	
Paolo Perego - 
16.00h	Coffe break
16.30h	



17:00h	Round table: Quali sono le contromisure che le aziende stanno adottando ai nuovi possibili attacchi? Responsible disclosure: quale è il miglior approccio? Come si può implementare un ciclo di vita del software con processi di sicurezza garantendo un adeguato ROSI? La sensibilizzazione degli utenti: leva fondamentale al fine di implementare controlli di sicurezza?

Panelist: 
 
