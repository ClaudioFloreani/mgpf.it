--- 
layout: post
title: Libero.it e XSS - pericolo credenziali!
meta: {}
tags: 
- hacking
- security
---
![Libero XSS](http://www.lastknight.com//download/20070327_libero.thumbnail.jpg)
>  **Aggiornamento:** Una serie di riflessioni sulle dichiarazioni di Libero in merito al bug sono raccolte [QUI](http://www.lastknight.com/2007/03/28/ancora-su-liberoit/)  
Che di italiani in gamba nel panorama mondiale della **web security** ce ne fossero molti non è sicuramente una novità (basti pensare alla Owasp Testing Guide e a profili come Alberto Revelli, Giorgio Fedon, Stefano Di Paola, Matteo Meucci...) ma leggere comunque su Full-Disclosure una segnalazione di XSS su un portale italiano fa comunque impressione...  
  
Questa volta l'artefice della scoperta è l'italianissimo [Rosario Valotta](mailto:rosario.valotta_at_gmail.com) che in poche righe [delinea nel suo report](http://seclists.org/fulldisclosure/2007/Mar/0457.html) uno scenario che è il **sogno del phisher di tutto il mondo**. In tre semplici passi abbiamo la possibilità di **rubare le credenziali** di qualunque utente della **Community di Libero**:  
  
*  **Fase 1**: la app incriminata
   Con un semplice link come <http://digiland.libero.it/profilo.phtml?nick=mickey> è possibile accedere alla applicazione che consente il managing dei nick della community.  
*  **Fase 2**: grabbing del cookie  
   Un semplicissimo XSS iniettato nel codice consente ad eventuali utenti malicious di recuperare il cookie associato all'utente loggato: un esempio pratico è [questo](http://go.lastknight.com/g) da usare con IE.
*  **Fase 3**: oltre il danno la beffa  
   Oltre al vistoso errore di programmazione che determina la presenza di un XSS abbiamo presenti nel cookie entrambe le credenziali: lo username in chiaro e le password in MD5. Considerando che la maggior parte delle password sono di una lunghezza inferiore ai 6 caratteri la loro decifrazione appare alla luce di approcci MD5-rainbowtable un effort decisamente basso.  
  
Oltre a questo è possibile **inviare remotamente** il cookie con un paio di altri giochi di prestigio segnalati nel [post di Rosario su FD](http://seclists.org/fulldisclosure/2007/Mar/0457.html).  
  
Staremo a vedere **i tempi di risposta** per la correzione di questo bug potenzialmente critico per una community numerosa come quella di Libero.it. 
