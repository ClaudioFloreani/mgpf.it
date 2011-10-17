--- 
layout: post
title: "Google Flaw: parola di 14enne"
meta: {}

tags: 
- security
---
Un ragazzino di **14 anni**, per ora noto solamente per il nome "Anthony" ha scoperto ina **nuova e importante vulnerabilità** del servizio di Google Mail.

Scrive sul suo [Blog](http://ph3rny.blogspot.com/2006/03/vulnerability-in-gmail.html) di aver **rilevato la problematica** mentre tentava di spedire del codice Javascript ad un amico tramite Mail.  

La vulnerabilità riscontrata riguarda la **presenza di codice javascript** all'interno dell'**Oggetto della mail** inviata e determina una duplice problematica di ragguardevole entità: innanzitutto il codice Javascript potrebbe agevolmente compromettere l'integrità dei dati dell'account di posta elettronica dell'utente ed in seconda analisi il codice viene **eseguito anche dalla pagina di preview dei messaggi**.  

Nel dettaglio è sufficiente introdurre codice nell'**Oggetto** per vederlo eseguito una volta aperta la schermata principale del proprio account Gmail. Se ad esempio si introduce il seguente codice  

<code>
Pippo<script>alert("QUesto è codice malevolo!");</script>
</code>

si otterrà l'esecuzione dello script.

Google non ha ancora assunto una **posizione ufficiale** sull'argomento, ma le implicazioni sono **ovviamente vastissime**, se si pensa alla possibilità di eseguire codice recuperato remotamente e quindi non soggetto ad alcun tipo di limitazione.

**UPDATE:** Google in poco meno di 2 ore ha fixato e corretto il problema... Complimenti ragazzi! 
