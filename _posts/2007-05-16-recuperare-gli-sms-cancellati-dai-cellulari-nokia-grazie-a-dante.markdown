--- 
layout: post
title: Recuperare gli SMS cancellati dai cellulari NOKIA grazie a Dante
meta: 
  aktt_tweeted: "1"
  autometa: dante dante nokia imperfezione destinate scoperte cancell securityfocus
tags: 
- forensic
- security
---
![Nokia e SMS cancellati](http://www.lastknight.com/download//20070516_nokia.gif)
E' proprio una di quelle scoperte **destinate a fare scalpore** quella del buon Davide "Dante" Del Vecchio, che con una mail su **BugTraq** e **SecurityFocus** pubblica il risultato di una **imperfezione dei sistemi Nokia** destinata ad avere pesanti ripercussioni non solamente sul panorama della sicurezza informatica, ma anche e soprattutto su quello della **Computer Forensics**.  
  
Dante, infatti, è riuscito mediante l'utilizzo della Suite di Nokia a **recuperare i messaggi SMS cancellati** sul terminale sino ad un anno prima e miracolosamente **presenti ancora sul device**.  
  
L'advisory completo è disponibile sia in [inglese](http://www.alighieri.org/advisories/retrieving_deleted_sms.txt) che in [italiano](http://www.alighieri.org/advisories/recuperare_sms_cancellati.txt) ed è impressionante notare come l'operazione sia semplice e alla portata di chiunque.  
Vediamone il dettaglio:  
  
*  Scaricare gratuitamente il [Nokia Pc Suite](http://www.nokia.com/pcsuite), ed installarlo.
*  Scegliere uno dei file ".dat" generati dal programma di backup
*  mediante l'utility [strings](http://www.microsoft.com/technet/sysinternals/Miscellaneous/Strings.mspx)  è possibile ricavare tutti i messaggi contenuti in chiaro.
*  Una volta recuperato il testo del messaggio un GREP sui file della directory è in grado di recuperare anche il numero di telefono del destinatario.  
  
Citando Dante è **impressionante** la risposta del vendor:
> Ho scritto una mail al supporto Nokia e mi han detto di **non essere
a conoscenza della vulnerabilità**, mi han chiesto informazioni riguardo
ulteriori modelli affetti ma hanno affermato di **non voler rilasciare**
alcun tipo di patch per il problema.  
> Ho contattato anche Symbian, mi han detto che distribuiscono ai produttori
direttamente i sorgenti, di seguito modificati direttamente dai produttori
stessi, per questo motivo non potranno rilasciare alcuna patch.  
  
Che dire quindi? Nuove frontiere nella **Computer Forensics** su Nokia, che è appena divenuta estremamente più semplice e nuove preoccupazioni per chi possiede un Nokia usato e lo **vuole vendere**.  
Che dire, infatti, dei dati che a questo punto sono **recuperabili da un telefono** venduto ad una asta E-Bay?  
  
Attenzione e complimenti a Dante!  
  
**UPDATE**: Corre voce che una **società a caso** (hint: inizia per K e vuol dire cinque) stia giustappunto realizzando un software per la cancellazione sicura dai terminali Nokia.... A breve news... 
