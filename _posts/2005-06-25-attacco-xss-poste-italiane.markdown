--- 
layout: post
title: "Vulnerabilit\xE0 XSS dei siti facenti capo a Poste Italiane"
meta: 
  _wp_page_template: default
  autometa: ""
tags: []

---
Vulnerabilità XSS dei siti facenti capo a Poste Italiane

La procedura di Log-In di Poste.it e dei domini ad esso correlati (tra cui bancopostaonline.poste.it) presenta problematiche che consentono un attacco di XSS (Cross Site Scripting) per il dirottamento degli utenti verso dominio di terze parti

##Advisor ID
LKID010

##Data di Rilascio
2005-03-23

##Verifica Advisor
http://lastknight.com/attacco-xss-poste-italiane/

##Criticità
Medio-Alta (possibilità di raggiro degli utenti)

##Location
Da remoto

##Impatto
Dirottamento arbitrario utenti registrati

##Siti Coinvolti

*  [http://www.poste.it](http://www.poste.it)
*  [https://registrazioneimprese.poste.it](https://registrazioneimprese.poste.it)
*  [https://registrazione-pa.poste.it/registrazione/web](https://registrazione-pa.poste.it/registrazione/web)
*  [https://bancopostaonline.poste.it](https://bancopostaonline.poste.it)

##Half Disclosure
La procedura unificata di accesso che gestisce in modo unificato l'intero palco servizi Web di Poste Italiane (Bancopostaonline.poste.it, www.poste.it , registrazioneimprese.poste.it, registrazione-pa.poste.it) è stata scoperta positiva alla rilevazione di una problematica di sicurezza che consente ad un utente malintenzionato di dirottare l'utente del servizio in modo arbitrario, sottraendolo al contollo del sito web certificante la navigazione e trasportandolo ad un sito arbitrario.  

<!--adsense-->

Questa problematica, benchè non determini in alcun modo l'esposizione diretta di informazioni in merito agli attuali fruitori dei servizi di Poste Italiane, possiede un grado di pericolosità medio-alto per la possibilità da parte di utenti malintenzionati di sfruttare la vulnerabilità per perpetrare efficaci attacchi di Phishing. Il reinidirzzamento effettuate le procedure di autentificazione, infatti, portebbe ad esempio trasferire l'ignaro utente che riceve una mail contraffatta ad un sito web creato per sottrarre informazioni relative a codici di accesso, password e/o informazioni riservate.  
La vulnerabilità, individuata da **Matteo G.P. Flora**, esperto di sicurezza informatica Milanese, è stata segnalata a Poste Italiane unitamente ai dettagli completi sulla riproducibilità e sulle implementazioni necessarie risolvere la vulnerabilità.  

##Full Disclosure
Consegnata a Poste.it

##Proof Of Concept
Consegnata a Poste.it

##Soluzioni
Consegnata a Poste.it

##Time Frame
2003-03-21: Individuazione della Vulnerabilità
2003-03-22: Segnalazione della vulnerabilità a Poste.it
2003-03-23: Invio a Poste Italiane del FUL DISCLOSURE della Vulnerabilità
2003-03-23: Comunicazione alla stampa dell'HALF DISCLOSURE
...

#Versione Stampabile
Disponibile [QUI]()

#Informazioni su Matteo G.P. Flora
Matteo G.P. Flora è Direttore IT di ALVillage S.r.l., titolare della ditta di sicurezza LKProject e Responsabile della Provincia di Milano di AIP (Associazione Informatici Professionisti). Da tempo si occupa di sicurezza in ambito ICT, è autore di articoli di successo e Consulente della Procura della Repubblica di Milano, dei Nuclei speciali della Guardia di Finanza e di numerose delle prestigiose aziende nei TOP10 italiani.
Il suo sito web è raggiungibile all'indirizzo Lastknight.com 
