--- 
layout: post
status: ok
title: "Nhibernate: una guida per autostoppisti"
meta: {}
tags: 
- develop
---
Da qualche giorno sto iniziando ad utilizzare piottosto pesantemente Nhibernate, framework che implementa l'**Object Relational Mapping** (OR/M) in modo diretto in .NET.  
Non è mio scopo illustrare perché proprio **Nhibernate** invece di altri sistemi disponibili, ma solamente fornire qualche indicazione su un po' di link che mi hanno decisamente semplificato la vita:
* [Quick start guide](http://wiki.nhibernate.org/display/NH/Quick+Start+Guide) su Nhibernate.org  
    Fornisce una **introduzione veramente basilare** per chi non ha mai sentito parlare di OR/M e similia.  
* [La documentazione Ufficiale](http://nhibernate.sourceforge.net/nh-docs/en/html/chunk/)  
    Delirante, incomprensibile e a tutti gli effetti inutile prima di aver speso un mesetto su Nhibernate.
* [NH in Real World Applications](http://www.codeproject.com/dotnet/nhibernatept1.asp) su CodeProject  
    Una introduzione un pelo più approfondita **ma datata**. I files di configurazione **non funzionano** con le nuove versioni ma solamente con la 0.4  
* [NH Part I](http://www.theserverside.net/articles/showarticle.tss?id=NHibernate)  
    Un articolo decisamente avanzato, anche troppo per una prima introduzione. Spiega in modo afficace il concetto di **correlazione e di annidamento** con un esempio concreto di immatricolazione universitaria. Ottima l'impostazione OO delle **interfacce** di connessione.  
* [NH Part II](http://www.theserverside.net/articles/showarticle.tss?id=NHibernate)  
    Tratta in modo avanzato la **gestione delle Sessioni** e dell'**HQL**, l'astrazione di SQL di Nhibernate per l'interrogazione del repository di oggetti. Una piccola parte è dedicata agli interceptors ed al ciclo di vita degli oggetti.
* [NH - First thoughts](http://breaman.net/index.php?p=40) della serie di Breaman  
   Semplice e veloce introduzione. Tremendamente consigliata.
* [NH Introduction](http://breaman.net/index.php?p=46)  della serie di Breaman  
   Una introduzione ai concetti di OR/M e Nhibernate con **ottimi grafici** da poter "plagiare" nella spiegazione magari al team interno dei vantaggi della OR/M.
* [Simple NH Example](http://breaman.net/index.php?p=47)  della serie di Breaman  
   Forse il più completo ed illuminante esempio per iniziare da zero ad utilizzare Nhibernate.
* [Retrieve Data using NH](http://breaman.net/index.php?p=48) della serie di Breaman  
   Esempi di retrieve di singolo oggetto o di collezioni.  
Buon divertimento! 
