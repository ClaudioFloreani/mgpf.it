--- 
layout: post
status: ok
title: "Google Chrome: ecco il tracciante..."
meta: {}
tags: 
- digital-freedom
- security
- hacking
- google
---
In attesa di avere tempo per scrivere bene il tutto, credo che questa sia la base per partire in una analisi del comportamento tracciante di Firefox e Google Chrome nel check delle Url tramite il servizio di SafeBrowsing. maggiori dettagli sono [qui](http://code.google.com/apis/safebrowsing/reference.html#CanonicalizationExamples).  
Il servizio è nato, ricordo, come contrasto al phishing e a cui il browser invia le URL da controllare.  
  
Ecco come traccia lo Unique Id Firefox:  
  
> [mod_apache_anon] - - [05/Sep/2008:20:15:58 +0200] "POST /safebrowsing/downloads?client=Firefox&appver=3.0.1&pver=2.1&wrkey=**AKEgNitu-_Wz8im8zLy65ZcG__dHyGtHa6LeOHBDJIqQh_cNEX10NneT8Wvsbn9M-jgzdJE7jfbHlD_Dy0sJMqiGEasyQCcuIA==** HTTP/1.1" 200 3502 "-" "Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.0.1) Gecko/2008072820 Firefox/3.0.1"  
  
Ed ecco l'amico Google Chrome:  
  
> [mod_apache_anon] - - [06/Sep/2008:11:42:22 +0200] "POST /safebrowsing/downloads?client=googlechrome&appver=1.0&pver=2.1&wrkey=**AKEgNisPDspcieIjnH98-UdkjlxO4n3DIUM3WgvspUXFVW-rti4UGcQIbjMeH74M39ESrVfCU-j4XFiZOL0KufQfI6fHLu4NSs0A==** HTTP/1.1" 200 494 "-" "Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/525.13 (KHTML, like Gecko) Chrome/0.2.149.27 Safari/525.13"
  
L'indirizzo della POST è **sb.google.com** per Firefox o **safebrowsing.clients.google.com** per Chrome.  
I log sono quelli di [FoolDns](http://fooldns.com). GLi identificativi quelli della mia macchina di test.   
  
Richieste successive nei giorni hanno medesimo **wrkey** se partono da medesima installazione di Firefox/Chrome.  
  
Buon divertimento.  
  
 
