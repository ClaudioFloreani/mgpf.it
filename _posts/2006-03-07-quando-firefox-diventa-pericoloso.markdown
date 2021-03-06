--- 
layout: post
status: ok
title: Quando firefox diventa pericoloso...
meta: {}
tags: 
- hacking
---
Siamo stati abituati a ritenere <a href="http://www.spreadfirefox.com/?q=affiliates&id=24415&t=73">Firefox</a> (probabilmente a ragione) il prodotto per la navigazione web <strong>più sicuro</strong> attualmente disponibile; abituati infatti ai <strong>continui problemi di sicurezza</strong> legati ad Internet Explorer, oltre che ai continui subissamenti di <strong>banner e spyware</strong> correlati allutilizzo smodato di activex, <a href="http://www.spreadfirefox.com/?q=affiliates&id=24415&t=73">Firefox</a> appare sicuramente una soluzione <strong>pulita e gradevole</strong>, oltre che incommensurabilmente più sicura e veloce.
Come in ogni ambito, però, (come non smetto mai di sottolineare in
ogni mia conferenza) anche nellinformatica la sicurezza non è un <strong>prodotto</strong>, ma un <strong>processo</strong>:
è perfettamente possibile che errate impostazioni ed errati
comportamenti possano comportare vaste problematiche di sicurezza e <strong>lesione della privacy</strong>.
<!-- more -->Anche nel caso di del <a href="http://www.firefox.com/">browser perferito da molti</a> (me compreso) esiste <strong>per lo meno una funzionalità</strong> di cui la maggior parte degli utenti abituati ad Explorer <strong>non è a conoscenza</strong> e che potrebbe riservare qualche <strong>piccola preoccupazione</strong>: il sistema di <strong>Password Storing</strong>.
Per convenienza dellutente, infatti, <a href="http://www.spreadfirefox.com/?q=affiliates&id=24415&t=73">Firefox</a> ha la possibilità di <strong>registrare username e password</strong> per i siti ad accesso più frequente. Al contrario però di Internet Explorer ha anche la possibilità di <strong>mostrare direttamente utente e password a chiunque ne faccia richiesta</strong>.
Se infatti selezioniamo il menu <strong>Tools / Options / Privacy / Passwords</strong> possiamo notare la schermata principale del pannello di gestione passwords:
<img alt="Il Pannello di controllo Password" src="http//fast.mgpf.it/20060307_firefox1.jpg" />
Se selezioniamo lopzione View Saved Passwords  veniamo indirizzati alla <strong>inquetante schermata</strong> qui sotto, che mostra in chiaro direttamente <strong>tutti i nomi utenti e passwords</strong> registrati dal primo utilizzo:
<img alt="Le password in chiaro" src="http//fast.mgpf.it/20060307_firefox2.jpg" />
A questo punto è semplice capire come <strong>qualunque utente</strong> che abbia anche <strong>sporadicamente</strong> accesso al nostro PC possa in pochi istanti <strong>impadronirsi del completo set delle nostre credenziali</strong>, cosa che soprattutto in un ambito di lavoro condiviso come può essere un ufficio potrebbe essere sicuramente fonte di <strong>imbarazzo o pericolo</strong>.
Non è necessario, però, ricadere in <strong>facili allarmismi</strong>. Esiste <strong>una opzione</strong> di <a href="http://www.spreadfirefox.com/?q=affiliates&id=24415&t=73">Firefox</a> che protegge questo <em>portachiavi riservato</em> con una password che verrà richiesta al primo utilizzo delle credenziali.
Sempre dalla schermata principale, infatti, è possibile selezionare <strong>Set Master Password</strong> per impostare questo codice che proteggerà le nostre credenziali <strong>da occhi indiscreti</strong>
<img alt="Settaggio della Master Password" src="http//fast.mgpf.it/20060307_firefox3.jpg" />
Non volendo criticare più di tanto una <strong>scelta di comodità</strong>
come quella di non costringere lutente ad inserire credenziali ogni
avvio di navigazione, ci pare però corretto segnalare questo tipo di
problematica a chi necessiti di un grado di sicurezza maggiore di
quello fornito dalla installazione standard.
<strong>ADDENDUM:</strong>
Sempre che anche un <strong>utente malintenzionato</strong> che abbia accesso in qualunque modo alla macchina protetta possa <strong>recuperare il file e decrittarlo</strong> mediante un comodo e pratico Tool che prende il nome di <a href="http://nagmatrix.50webs.com/article_firepassword.html">FirePassword</a>.
Il programma utilizza i seguenti files contenuti nella directory del <strong>Profile</strong> di Firefox:
* signons.txt (<em>elenco username, siti e password crittate</em>)
* key3.db (<em>la chiave di cifratura</em>)
Eccone un esempio di utilizzo:
<a href="http://fast.mgpf.it/20060307_firefox4.jpg"><img alt="FirePassword" src="http//fast.mgpf.it/thumb-20060307_firefox4.jpg" /></a>
Nel caso in cui il portachiavi sia protetto da password è anche possibile <strong>forzare la password di cifratura</strong> mediante utilizzo della utility gemella <a href="http://nagmatrix.50webs.com/article_firemaster.html">FireMaster</a>, sia mediante utilizzo di una wordlist, sia in forza bruta.
Eccone uno Screenshot:
<a href="http://fast.mgpf.it/20060307_firefox5.jpg"><img alt="FireMaster" src="http//fast.mgpf.it/thumb-20060307_firefox5.jpg" /></a> 
