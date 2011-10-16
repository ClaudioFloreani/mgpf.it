--- 
layout: post
title: "Altra Vulnerabilit\xE0 XSS su Libero.it"
published: true
meta: 
  aktt_tweeted: "1"
  autometa: "vulnerabilit\xC3\x83  mostrare controll bugtraq evadendo costruita proporre libero"
tags: 
- hacking
- Security and Intelligence
type: post
status: publish
---
Dopo la [vulnerabilità di Rosario Valotta](http://www.lastknight.com/2007/03/27/liberoit-e-xss-pericolo-credenziali/) che avevo segnalato è ora di proporre la mia vulnerabilità **personale** ;)  
Con un [Advisory](http://www.lastknight.com/xss-libero) su [BugTraq](http://www.securityfocus.com/archive/1/464048/30/0/threaded) e su [Full-Disclosure](http://seclists.org/fulldisclosure/2007/Mar/0492.html) (e ovviamente all'Abuse di Libero.it) la **Proof Of Concept** di una pagina costruita per:  
  
*  Mostrare il **Cookie** dell'utente
*  Mostrare un **testo** in alert evadendo i controlli degli apici
*  Effettuare **un redirect ad una pagina arbitraria**  
  
Ed ecco un paio di immagini della realizzazione pratica:  

*  [Immagine 1](/download/20070328_xss1.jpg): mostro il cookie
*  [Immagine 2](/download/20070328_xss2.jpg): Mi preparo a redirigere l'utente  
  
La vulnerabilità è presente (ma non è la sola) nella pagina di redazione del profilo e consente di inserire un qualunque codice Javascript con l'unica limitazione della impossibilità di **usare apici**.  
Ma l'evasione di questi filtri è sinceramente una manovra **tanto semplice quanto comune**...  
  
Sino a che Libero non eliminerà la pagina incriminata è possibile vedere gli effetti [QUI](http://digiland.libero.it/profilo.phtml?nick=XssForFun&top=1)e comunque nelle immagini presenti in questo Post.  
  
E prima che qualcuno dica che l'XSS **non è pericoloso**, come ovviamente hanno sostenuto gli incaricati della PR di Libero, faccio solamente notare le potenzialità di Phishing e di Session Riding che so per certo qualcuno sta valutando ;)  
  
E nei prossimi giorni sembra proprio che verranno pubblicate svariate altre vulnerabilità sull'argomento Libero.it...  
  
Sarebbe piacevole ricevere contatti dallo **Staff del Portale** per poter coordinare i lavori, ma a parte il Call Center non **risponde mai nessuno** di tecnico...  
Ben disponibile a **dare una mano**, se possibile, ma per ora l'unica **dimostrazione effettiva** è che l'episodio precedente non è né isolato né tanto meno unico...
  
**UPDATE:** Sembra che nella mattinata del 29 il problema da me segnalato sia stato risolto e che quindi il link della POC non sia più funzionante.  Per chi non è riuscito a dare un'occhiata qui di seguito il filmato che mostra il funzionamento della POC.  
  
<object width="425" height="350"><param name="movie" value="http://www.youtube.com/v/PMWlCK09C-U"></param><param name="wmode" value="transparent"></param><embed src="http://www.youtube.com/v/PMWlCK09C-U" type="application/x-shockwave-flash" wmode="transparent" width="425" height="350"></embed></object> 
