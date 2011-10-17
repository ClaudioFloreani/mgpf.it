--- 
layout: post
title: SHA-1 irrimediabilmente compromessa
meta: {}
tags: 
- forensic
- security
---
 C'è qualcosa di inquietante nel <a href="http://www.schneier.com/blog/archives/2005/02/sha1_broken.html">post di Bruce Schneier</a>, qualcosa che dovrebbe fare tremare chiunque ha a che fare con crittografia e firma digitale.  
 Bruce è lapidario: <i>"SHA-1 has been broken. Not a reduced-round version.  Not a simplified version. The real thing."</i>. E ha ragione.  
  
 Dopo il primo whitepaper pubblicato dal team composto da <a href="http://www.prime.sdu.edu.cn/third/05wangxiaoyun.html">Xiaoyun Wang</a>, <a href="http://www.informatik.uni-trier.de/%7Eley/db/indices/a-tree/y/Yin:Yiqun_Lisa.html">Yiqun Lisa Yin</a>, e <a href="http://www.prime.sdu.edu.cn/fourth/yuhongbo.html">Hongbo Yu</a> che mostrava le prime convergenze nell'algoritmo, il successivo attacco condotto sulla base di questo ha condotto a risultati inaspettati e sconvolgenti:  
 <ul> <li>collisionse dell'algoritmo SHA-1 completo in 2^69 operazioni di hash, diversi ordini di magnitudo inferiore all'attacco di forza bruta ipotizzato come migliore: 2^80 </li><li>collisione di SHA-0 in 2^39 operazioni. </li><li>collisioni di SHA-1 a 58 round in 2**33 operazioni. </li> </ul>   
Ma in che modo questo impatta sulla sicurezza dell'algoritmo? Ipotizzando che forzare SHA-1 con il metodo scoperto richieda alla National Security Agency (NSA) una settimana. La stessa operazione afrebbe richiesto, in attacco brute-force, 2048 settimane, vale a dire 39 anni.  
  
 Tutto questo è discusso approfonditamente in on opuscolo rilasciato agli addetti ai lavori che, sebbene non ancora disponibile al largo pubblico ha già infiammato gli organi di sicurezza tanto che le agenzie Federali <a href="http://www.fcw.com/fcw/articles/2005/0207/web-hash-02-07-05.asp">sono già state avvisate</a> che il NIST stanzierà fondi per  facilitare il passaggio in tutte le agenzie da algoritmi poco efficaci a SHA256. Meditate, gente. meditate...  
  
 <i><b>Aggiornamento</b>: nella vita di tutti i giorni ricordatevi di modificare i settaggi per l'hash della firma di PGP e GNUpg portando da SHA-1 a SHA-256...</i>  
  
 <i><b>Aggiornamento</b>: un'otticache non avevo considerato è quella per cui questa nuova problematica spingerà probabilmente l'adozione di sistemi più sicuri e l'investimento di fondi nella ricerca... Hackers per l'Economia?</i><div style="clear:both; padding-bottom: 0.25em;"></div> 
