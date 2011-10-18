--- 
layout: post
status: ok
title: .NET e Virus Writing
meta: {}
tags: 
- hacking
- about-me
- talk
---
 Sto ultimando le 200 e passa slide per un corso intitolato <a href="http://www.lastknight.com/Corso-Virus-informatici-e-Tecniche-di-prevenzione.aspx">"Virus Informatici: Strategie di infezione e Tecniche di prevenzione"</a> che terrò <a href="http://www.lra.it/ita/corso.asp?idContainer=54&idContent=23690&amp;idContainerBusinessArea=&amp;idContentBusinessArea=">alla LRA</a> Venerdì 1 Ottobre 2004...  
Guardando molto bene il panorama dei Macro Virus e deigli ultimi Worm in circolazione, mi chiedo quando avremo il .NET Framework installato sul 90% circa delle macchine Wintel in circolazione... Perchè principalmente TEMO quel giorno...  
Lasciatemi spiegare... Attualmente il più distruttivo dei Virus è in grado di fare discreti danni sia dal punto di vista della propagazione, sia da quello della raccolta di informazioni. Oltretutto, alcuni dei peggiori virus passati alla storia erano (e sono) scritti in VBS, linguaggio non particolarmente potente e di dubbie capacità di integrazione con le API di sistema.  
Ma un virus .NET, soprattutto in visione di un futuro non troppo lontano in cui Windows Scripting Host (WSH) verrà rimpiazzato da C#/VB.NET, ha sicuramente le carte in regola per divenire facilmente LETALE. Ecco il perché in una serie di ragioni:
* .NET è embeddabile nei documenti di Microsoft OfficeX (si, esiste il problema della firma, ma una firma "fake" o un buffer overflow sfruttabile si trova)
* .NET possiede tutte le primitive per la posta elettronica.
* .NET è in grado di aprire socket (FTP, HTTP, SSH, POP3, IMAP e chi più ne ha più ne metta (DDOS o Port Scanning) 
* .NET può quindi anche facilmente aprire socket in ricezione, creando Server (zombie, backdoors...) 
* .NET ha una precisa integrazione con MAPI e Outlook 
* .NET ha la vera e concreta possibilità di essere MultiPiattaforma (per lo meno PocketPC/SmartPhone/Wintel) 
* .NET, tramite Reflection, ha la completa possibilità di decompilazione/ricompilazione necessaria al Polimorfismo e al Metamorfismo * .NET funziona egregiamente in multithreading 
* .NET è (o sarà) integrato al sistema operativo, ed eseguibile da linea di comando (al contrario di Java)... 
Brrr...
