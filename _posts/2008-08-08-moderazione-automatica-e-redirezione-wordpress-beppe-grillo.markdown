--- 
layout: post
title: Moderazione automatica e redirezione
meta: {}
tags: 
- about-me
---
Direi che ora che lo sciame dei grillini è passato posso tornare alla moderazione normale...  
  
E forse è anche ora che spieghi come ha funzionato la moderazione in questi giorni.  
No, non eticamente, ma semplicemente da un punto di vista tecnico...
  
<img src="http://www.lastknight.com/download/2008/08/moderazione.jpg" alt="" title="moderazione" class="aligncenter size-full wp-image-914" border=1 /> 
  
Il tutto si è sviluppato in due diversi accorgimenti tecnici: l'utilizzo di dei **filtri built in** e l'utilizzo di **.htaccess**.  
  
I filtri sono comodi per evitare di LEGGERE per ore messaggi contenenti insulti o non attinenti alla conversazione. Quando arrivano qualche centinaia di commenti all'ora è necessario (se come il sottoscritto si fa altro nella vita) trovare un modo per arginarli senza leggere.  
Da bravo informatico (e quindi uomo pigro), la soluzione è stata quella di stendere una serie di parole chiave e fare fare il lavoro ai filtri automatici presenti in Wordpress alla voce Settings > Discussion.  
  
<img src="http://www.lastknight.com/download/2008/08/moderazione2.jpg" alt="" title="moderazione" class="aligncenter size-full wp-image-914" border=1 /> 
  
Certo, in questo modo probabilmente ho preso anche commenti legittimi, ma una buona serie sono stati bloccati. Non li ho nemmeno letti, dopo una prima mezz'ora guardando che non vi fossero TROPPI falsi positivi.  
Ogni oretta o due passavo per di qui e cancellavo i commenti marcati come SPAM. Fine dei giochi.  
  
La seconda strategia era, invece, un semplice "pons asinorum". Buona parte dei contatti, infatti, arrivavano da solamente un paio di indirizzi ed erano gente che non mi piaceva in linea di massima avere sul Blog, visto che venivano infiammati da sacro furore PRIMA di aver letto qualunque cosa.  
E quindi avere si è effettuata una scrematura per **livello di intelligenza**: se provenivano cliccando dai siti in questione venivano rediretti ad altro sito. Nulla impediva di arrivare digitando l'URL o cercando in un motore di ricerca, ma direttamente dal link nisba ;)  
  
Non che sia, tra l'altro, una tecnica nuova: nel mondo è stata spesso usata ed abusata e anche Luttazzi [ha fatto la stessa cosa][1] qualche tempo fa, redirigendo i lettori di Repubblica ad un sito di "cacca d'artista"... :)  
  
Implementare con Wordpress anche questa parte è decisamente semplice: basta editare il file .htaccess nella root del sito web ed aggiungere qualche riga:  
  
<img src="http://www.lastknight.com/download/2008/08/moderazione3.jpg" alt="" title="moderazione" class="aligncenter size-full wp-image-914" width=520 border=1  /> 
  
La tradizione della rete proporrebbe di reindirizzare a Goatse, ma mi sono trattenuto (e se siete deboli di stomaco non andate a cercare su Google cosa sia :P).  
Gli utenti più determinati sono arrivati lo stesso, con una breve ricerca su Google. Ma sono convinto di essermi eliminato buona parte dello stress a priori :)  
  
Ok, tutto qui, spero vi siate tecnicamente divertiti :)  
  
Si ritorna alla normale coda di moderazione manuale sino alla prossima volta!  
  
  


[1]: http://www.7yearwinter.com/2007/12/i-blog-smascherano-repubblica-e-libero-hanno-linkato-la-merda/ 
