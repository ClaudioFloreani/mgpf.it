--- 
layout: post
status: ok
title: Ancora su Libero.it
meta: {}
tags: 
- hacking
- security
- about-me
---
Era chiaro che l'argomento [XSS e Libero](http://www.lastknight.com/2007/03/27/liberoit-e-xss-pericolo-credenziali/) avrebbe suscitato una risposta immediata e che questa sarebbe stata di false rassicurazioni, e ovviamente quanto [PuntoInformatico](http://punto-informatico.it/p.aspx?id=1938288&r=PI) riprende a distanza di 12 ore la news che vi avevo riportato ieri Libero parla e comunica la sia visione dei fatti:
> "Non è vero - spiega Libero a PI - che la stringa codificata in MD5 contenga la password. Se anche la stringa venisse decodificata, non si otterrebbe la password, **né altri strumenti utili per accedere in qualsiasi modo agli account**". Il che non deve sorprendere: la password può essere infatti ritoccata con strumenti ad hoc prima della cifratura vera e propria, rendendo quindi inutilizzabile l'eventuale dato decifrato. Per ricostruire dall'informazione decodificata la password vera e propria, spiega Libero, occorrerebbe avvalersi di strumenti proprietari predisposti dal portale e disponibili esclusivamente per i propri tecnici.  
>  
> "Nel cookie - sottolinea Libero - c'è solo una mistura di dati che serve a noi per offrire il servizio", e nessun'altra informazione utile.  
A parte uno **scetticismo di fondo** che non sono riuscito a curarmi (il bug è stato risolto e non posso controllare le mie supposizioni), e cioè che bastasse giocare poco poco con una password conosciuta per ritrovare il corretto hash, non credo che i signori di Libero abbiano compreso a fondo il problema.  
  
Mi piacerebbe conoscere l'opinione dei signori su un attacco di Session Riding che il cookie recuperato poteva comportare...  
  
Ma come al solito i giovani italioti **faranno finta di niente** e i giornali manderanno **messaggi rassicuranti** dettati dai padroni di Libero e Wind.  
Ah, beata Italia che non si preoccupa di alcun problema legato agli XSS... E' quasi ora di fare un giro sul portale Libero.it e guardarsi in giro... 
