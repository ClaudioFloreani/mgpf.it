--- 
layout: post
title: Ruby, Autoclick e barare a BlogStar DeathMatch
meta: 
  aktt_tweeted: "1"
  autometa: paulthewineguy deathmatch celebrity blogstar barare truccare barato hacker
tags: 
- security
---
> Se arrivate qui dal link di [Celebrity Deathmatch](http://paulthewineguy.prohosts.org/) è perchè [Paul The Wine Guy](http://www.paulthewineguy.com/) ha preso mail il Report di cui sotto.
> Nessun problema... Mettetevi comodi, divertitevi a capire il meccanismo, ed andate in giro a cercare come pazzi a cercare altre vulnerabilità!
> **Full Disclosure**, we believe in it!

Qui tutti **sembrano sconvolti** all'idea che qualcuno abbia "acarato" il [Blogstar Deathmatch](http://paulthewineguy.prohosts.org/) dei blogger proposto da [Paul The Wine Guy](http://www.paulthewineguy.com/), ma in realtà non credo proprio vi sia la necessità di **acarare** proprio nulla...  
  
Vediamo un secondo...  
L'applicazione **consente** il voto **una volta ogni minuto** da singolo IP. E' una scelta che **io** reputo non corretta a prescindere, ma è la regola del gioco. Lo dice anche una scrittina che appare in bella vista dicendo **"Puoi votare nuovamente tra 1 minuto da adesso."**.  
  
Seguire le regole di altro tipo è IMPOSSIBILE, **non essendoci** regole in tutto il sito.  
Devo cliccare una delle due frecce e lo posso cliccare una volta al minuto per singolo IP. Il che significa che posso fare **60 x 24 = 1440** voti da singolo IP. Moltiplicato per il numero di IP che riesco ad avere.  


  
Ma cliccare a mano è scomodo e da nessuna parte mi dice che non posso cliccare automaticamente. Quindi mi attrezzo del fido Mac, del fido Ruby e dopo un "sudo gem install safariwatir" scrivo un paio di righe in Ruby:  
  
  
[ruby]
require 'rubygems'
require 'safariwatir'

startUrl = "http://paulthewineguy.prohosts.org/"

b = Watir::Safari.new
b.speed = :fast

(1..1000).each do |x|
  begin
    sleep 60
    b.goto(startUrl)
    begin
      b.button(:name, 'Vota2').click
    rescue
      puts "    ...non ho trovato il bottone..."
    end
  rescue
    puts " barf... error..."
  end
end
[/ruby] 
  
Ho *"barato"*? Certo che no!  
Innanzitutto non sono uno dei concorrenti, in secondo logo lo script ha generato 13/15 click su oltre 90, e **SOPRATTUTTO** da nessuna parte esiste il divieto** dell'utilizzo di sistemi automatici. Mai in tutto il sito. E quindi ciò che non è vietato è consentito senza "intrusione informatica" e/o "accesso abusivo" e/o "sovversione del sistema". E qui il sistema non l'abbiamo visto nemmeno di striscio: abbiamo fatto cliccare da Watir. FullStop.  
  
La soluzione? Abbastanza semplice in teoria: **bloccare il numero massimo di click** possibili da singolo IP.  
  
Sfortunatamente però il problema non è risolvibile agilmente perché con semplici meccanismo di rotor-proxy (meta proxy che cambia IP ad ogni richiesta prendendoli da una serie predefinita) potrei avere un **sostenuto numero di IP** a disposizione.  
  
E a chi dice che *"in questo modo ho rovinato il gioco"* chiedo come fanno a sapere che il gioco non fosse già rovinato precedentemente. Come fanno a sapere che sino ad oggi nessuno l'abbia mai usato.  
**Full Disclosure**, we believe in it. Solo divulgando il problema si è certi della risoluzione.  
  
Quindi? Quindi all'amico  [Paul The Wine Guy](http://www.paulthewineguy.com/) non mi rimane che suggerire un qualunque **meccanismo di captcha** per evitare il click automatico. Facile, semplice e sicuro.  
E magari **scrivere da qualche** parte a scanso di equivoci che **non sono ammessi link automatici**, tutelandosi così anche in futuro, per lo meno "moralmente". *(NOTA: lo ha fatto...)* 
E se serve una mano per implementare il captcha sono qui, la do volentieri. :)  
    
Oltre a questo forse solo evitare [i commenti](http://twitter.com/PaulTheWineGuy/statuses/360252742) sul **celodurismo** del sottoscritto...   
Non sono ancora Bossi e, soprattutto, dopo tutti i reminder "enlarge your p3n1s" che mi arrivano in mail potrebbero venirmi dei complessi :) 
