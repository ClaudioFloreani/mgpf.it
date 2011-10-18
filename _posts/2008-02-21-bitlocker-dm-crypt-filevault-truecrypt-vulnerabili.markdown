--- 
layout: post
status: ok
title: BitLocker, Dm-Crypt, Filevault, TrueCrypt vulnerabili...
meta: {}
tags: 
- digital-freedom
- hacking
---
[Sono riusciti][1] a leggere il **contenuto delle DRAM** dopo lo spegnimento del computer.  Cosa significa? Significa che in potenza è possibile, e lo **[hanno fatto][1]** , recuperare dalla memoria la Master Key di uno dei sistemi di cifratura brutalmente disconnettendo la corrente e recuperando il contenuto della memoria, che in quel momento contiene la chiave.  
In questo modo si ottiene la **Master Key** e sono [riusciti a decifrare BitLocker][1]...  Kudos...  
 
I buontemponi sono <a href="http://www.cs.princeton.edu/%7Ejhalderm">J. Alex Halderman</a>, <a href="http://www.loyalty.org/%7Eschoen/">Seth D. Schoen</a>, <a href="http://www.cs.princeton.edu/%7Enadiah">Nadia Heninger</a>, <a href="http://www.cs.princeton.edu/%7Ewclarkso/">William Clarkson</a>, <a href="mailto:wpaul@windriver.com">William Paul</a>, <a href="http://www.cs.princeton.edu/%7Ejcalandr/">Joseph A. Calandrino</a>, <a href="http://www.cs.princeton.edu/%7Eajfeldma">Ariel J. Feldman</a>, <a href="http://www.appelbaum.net/">Jacob Appelbaum</a>, and <a href="http://www.cs.princeton.edu/%7Efelten">Edward W. Felten</a> della Università di Princeton.  
  
Qui sotto il filmato che ne spiega il funzionamento:  
  
{% youtube JDaicPIgn9U %}
  
Qui invece si trova il [Paper in PDF](http://citp.princeton.edu.nyud.net/pub/coldboot.pdf) printo da scaricare. Interessantissima anche la pagina con [i test pratici](http://citp.princeton.edu/memory/exp) per controllare sul proprio computer.  
  
Come si diceva via skype con i ragazzi di [USH.it](http://www.ush.it) i metodi esistono da tempo, sia via CardBus che via dumping della memoria, ma questo è probabilmente il modo più spettacolare...  
  
[1]: http://citp.princeton.edu/memory/
[tag]bitlocker, dm-crypt, truecrypt, encryption, crittografia, cracking[/tag] 
