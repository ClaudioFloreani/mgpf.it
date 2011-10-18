--- 
layout: post
title: Advisory - PLURIME vulnerabilità su Infostrada.it Libero.it
meta: 
tags: 
- hacking
- security
- about-me
- talk
---
La saga delle vulnerabilità sul portale di Libero.it sembra destinata dopo il [primo advisory di Rosario Valotta](http://www.lastknight.com/2007/03/27/liberoit-e-xss-pericolo-credenziali/) ed il [mio advisory di ieri](http://www.lastknight.com/2007/03/28/altra-vulnerabilita-xss-su-liberoit/) ad avere altri interessanti risvolti, come accennavo proprio nella giornata di ieri.  
  
Libero.it sembra infatti aver adottato la politica del **"fixing silenzioso"** senza contattare gli autori, anche se per più volte **avevo esortato il management** del noto portale a contattare i singoli ricercatori.  
Non ottenendo alcun tipo di contatto ed essendo quindi **impossibilitati a risolvere** la questione con i gestori dei siti incriminati siamo quindi **obbligati ad utilizzare** il meccanismo della Full-Disclosure per poter comunicare le differenti problematiche rilevate.  
  
E così questa volta è ora di un [Advisory](http://lists.grok.org.uk/pipermail/full-disclosure/2007-March/053247.html) **congiunto** mio, di Rosario Valotta e di Matteo Carli che si è aggiunto all'allegra combricola con una serie di problematiche.  
L'[Advisory](http://lists.grok.org.uk/pipermail/full-disclosure/2007-March/053247.html), inviato sulla nota lista Full-Disclosure contiene **istanze multiple di problematiche XSS** ma anche interessanti risvolti su **SQL Injection**.  
  
Esaminiamo le singole vulnerabilità una ad una, lasciando al [documento](http://lists.grok.org.uk/pipermail/full-disclosure/2007-March/053247.html) la spiegazione precisa:
1. **XSS redirector**: Mediante un opportuna pagina configurata è possibile **redirigere l'utente** ad una pagina arbitraria e carpire al contempo il **nome utente**. In questo modo i tentativi di Phishing sono di sicuro impatto poiché possono facilmente contenere anche la c**redenziale di username** della persona.  (*Rosario*)
2. **XSS Redirector**: Come sopra ma con **script arbitrari** eseguiti direttamente da **una URL**. Ancora più semplice da utilizzare in modo fraudolento. (*LK*)
3. **SQL Validation**: Errore di Open Query che conduce agevolmente a **SQL Injection**. Per ovvi problemi legali non è stata approfondita la ricerca ma provate a pensare a che tipo di dati contiene un DB come quello Oracle di Infostrada...  
   Inoltre l'errore mostrato rivela **importanti informazioni sul sistema** dietro cui il portale gira. (*LK*)
4. **<s>CSS</s>XSS su pagina HTTPS**: Pericolosa variazione dei temi 1 e 2 che consente di iniettare codice XSS direttamente in **una pagina HTTPS**, sfruttando quindi l'effetto di "sicurezza" che una pagina protetta da in un utente. (*Matteo Carli*)  
  
Personalmente attendo con ansia di sapere se **potrò comunicare i prossimi problemi rilevati** a qualcuno che può gestire il portale o se mi vedrò _costretto_ ancora una volta a pubblicare un Full-Disclosure per **mancanza di comunicazione**...  
  
Che **tristezza** il panorama italiano!  
  
E pensare che un omologo problema rilevato ieri sul **portale del 190** ha subito portato al contatto con uno dei Responsabili della Sicurezza e ad una **immediata notifica** della presa in carico del problema segnalato...  
Forse per qualche vendor c'è ancora speranza... 
