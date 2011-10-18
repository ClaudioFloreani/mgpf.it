--- 
layout: post
title: "Vulnerabilità XSS dei siti facenti capo a TIM"
meta: 
  _wp_page_template: default
  autometa: ""
tags: []

---
Vulnerabilità XSS dei siti facenti capo a TIM

La procedura di Log-In di TIM.it e dei domini ad esso correlati (tra cui i.tim.it, il sito www.119.it ed i portali contenenti i dati di fatturazione e le imformazioni sulle chiamate effettuate) presenta problematiche che consentono un attacco di XSS (Cross Site Scripting) per il dirottamento degli utenti verso dominio di terze parti

##Advisor ID
LKID011

##Data di Rilascio
2005-12-08

##Verifica Advisor
http://lastknight.com/articles/attacco-xss-tim/

##Criticità
Medio-Alta (possibilità di raggiro degli utenti)

##Location
Da remoto

##Impatto
Dirottamento arbitrario utenti registrati

##Siti Coinvolti

* [http://www.tim.it](http://www.tim.it)
* [http://www.190.it](http://www.119.it)
* [http://www.i.tim.it](http://www.i.tim.it)
* [http://privati.tim.it ](http://privati.tim.it)

##Half Disclosure
La procedura unificata di accesso che gestisce in modo unificato l'intero palco servizi Web di TIM (119.it, privati.tim.it, i.tim.it) è stata scoperta positiva alla rilevazione di una problematica di sicurezza che consente ad un utente malintenzionato di dirottare l'utente del servizio in modo arbitrario, sottraendolo al contollo del sito web certificante la navigazione e trasportandolo ad un sito arbitrario.



Questa problematica, benchè non determini in alcun modo l'esposizione diretta di informazioni in merito agli attuali fruitori dei servizi di TIM, possiede un grado di pericolosità medio-alto per la possibilità da parte di utenti malintenzionati di sfruttare la vulnerabilità per perpetrare efficaci attacchi di Phishing.
Il reinidirzzamento effettuate le procedure di autentificazione, infatti, portebbe ad esempio trasferire l'ignaro utente che riceve una mail contraffatta ad un sito web creato per sottrarre informazioni relative a codici di accesso, password e/o informazioni riservate.
La vulnerabilità è stata individuata fortuitamente da Matteo G.P. Flora, esperto di sicurezza informatica Milanese, durante il periodico controllo del  suo conto telefonico di utente Telecom Italia Mobile, ed è stata segnalata a Telecom Italia unitamente  ai dettagli completi sulla riproducibilità e sulle implementazioni necessarie  risolvere la vulnerabilità.  

##Full Disclosure
Consegnata a Telecom Italia

##Proof Of Concept
Consegnata a Telecom Italia

##Soluzioni
Consegnata a  Telecom Italia

##Time Frame
* 2005-12-08: Individuazione della Vulnerabilità
* 2005-12-09: Segnalazione della vulnerabilità a TIM.it
* 2005-12-10: Comunicazione alla stampa dell'HALF DISCLOSURE

#Informazioni su Matteo G.P. Flora
Matteo G.P. Flora è Consulente Freelance, titolare della società di sicurezza LKProject e Responsabile della Provincia di Milano di AIP (Associazione Informatici Professionisti). Da tempo si occupa di sicurezza in ambito ICT, è autore di articoli di successo ed un volume sul fenomeno phishing, oltre che Consulente della Procura della Repubblica di Milano, dei Nuclei speciali della Guardia di Finanza e di numerose delle prestigiose aziende nei TOP10 italiani.
Il suo sito web è raggiungibile all'indirizzo Lastknight.com 
