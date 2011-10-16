--- 
layout: post
title: Microsoft "Genuine Advantage" craccato in 24 ore
published: true
meta: 
  autometa: ""
tags: 
- Security and Intelligence
type: post
status: publish
---
> Attenzione, aggiornamento!!!  
> Per quanti cercassero informazioni sulla disabilitazione dei fastidiosi messaggi di avviso di WGA Notifications il post è stato aggiornato alla pagina [Il nuovo nag-screen di Windows Advantage Program](http://www.lastknight.com/2006/06/04/il-nuovo-nag-screen-di-windows-advantage-program/)
A partire da questa settimana Microsoft ha iniziato a richiedere la verifica del numero di serie del prodotto per accedere a Windows Update nel programma difinito "Genuine Advantage".  
24 ore esatte dopo il lancio in grande stile il sistema è stato craccato.  

Prima di cliccare su "Express" o "Avanzato" è sufficiente infatti posizionarsi sulla barra degli indirizzi e inserire il seguente testo:

<code> javascript:void(window.g_sDisableWGACheck='all')</code>

E la protezione viene disabilitata....  

L'update sembra sia comunque disponibile, anche per le copie "illegali" tramite l'apposita utility di Update di Windows XP... Questo per erogare, comuque, gli update "critici" ma non quelli "cool"!  

[Andy](http://andy-news.blogspot.com/2005/07/how-to-bypass-wga.html) segnala inoltre che sono già disponibili gli [Script](http://www.extended64.com/blogs/rafael/archive/2005/07/27/1026.aspx) per [GreaseMonkey](http://greasemonkey.mozdev.org/) sviluppati da Rafael Riva.

**UPDATE :** La falla JS è stata corretta, ma grazie a ZIO potete facilmente saltare il check della protezione **disabilitando** il componente che la effettua in questo modo:

1. Aprite il pannello di controllo
2. Cliccate su Opzioni Internet
3. Click su Programmi
4. Click su Gestione componenti aggiuntivi
5. Selezionare Windows Genuine Advantage
6. Disabilitarlo...
  
Ancora meglio direi... 
