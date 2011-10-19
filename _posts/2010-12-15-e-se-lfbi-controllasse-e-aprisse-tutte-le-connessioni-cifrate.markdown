--- 
layout: post
title: E se l'FBI controllasse (e aprisse) tutte le connessioni cifrate?
meta: 
tags: 
- digital-freedom
- paranoia
---
<a href="http://fast.mgpf.it/2010/12/2962194797_06b1dc08ac.jpg"><img src="http://fast.mgpf.it/2010/12/2962194797_06b1dc08ac.jpg" alt="" title="2962194797_06b1dc08ac" width="500" height="333" class="aligncenter size-full wp-image-2309" /></a>
  
Incredibilmente combatto contro la mia proverbiale pigrizia nello scrivere su questo Blog perché c'è qualcosa di interessante da dire.  
No, non parlo di Wikileaks **(ma se vi interessa la cosa questo Sabato sarò a Salerno [ad una conferenza][conf] sul tema)**, ma di [una mail][link] passata sulla Mailing List interna del progetto OpenBSD. Una mail assoutamente inquietante a firma nientemeno di [Theo de Raadt][theo], fondatore e leader di OpenBsd.  
  
[La mail][link] è l'inoltro alla mailing list di una comunicazione giunta a Theo da parte di [Greg Perry][greg] e recita quanto segue:

> Long time no talk.  If you will recall, a while back I was the CTO at
NETSEC and arranged funding and donations for the OpenBSD Crypto
Framework.  At that same time I also did some consulting for the FBI,
for their GSA Technical Support Center, which was a cryptologic
reverse engineering project aimed at backdooring and implementing key
escrow mechanisms for smart card and other hardware-based computing
technologies.  
> My NDA with the FBI has recently expired, and I wanted to make you
aware of the fact that the FBI implemented a number of backdoors and
side channel key leaking mechanisms into the OCF, for the express
purpose of monitoring the site to site VPN encryption system
implemented by EOUSA, the parent organization to the FBI.  Jason
Wright and several other developers were responsible for those
backdoors, and you would be well advised to review any and all code
commits by Wright as well as the other developers he worked with
originating from NETSEC.  
> (...)
> This is also why several inside FBI folks have been recently
advocating the use of OpenBSD for VPN and firewalling implementations
in virtualized environments (...).

In altre parole: Greg sottolinea come nel corso degli anni l'FBI abbia pagato sviluppatori che hanno lavorato alla parte del sistema OpenBSD responsabile della gestione della crittografia ([OpenBSD Crypto
Framework][OCF]) con il fine esplicito di implementare all'interno dello stesso processi o funzioni per decifrare i contenuti cifrati da questo componente di base del sistema operativo, in pratica creando sistemi paralleli di recupero delle chiavi.  
  
Per rendere la cosa più chiara: ogni connessione cifrata e/o operazione di cifratura implementata su OpenBSD fa riferimento all'OCF e sarebbe quindi vulnerabile ad attacchi da parte delle realtà di controllo, FBI in primis.  
  
La mail continua anche a dare dettagli, dicendo esplicitamente che il motivo per cui molti consulenti "al soldo" dell'FBI stanno consigliando l'utilizzo di OpenBDS è proprio perché se qualunque sistema usa OpenBSD diviene anche quando si tutela con crittografia perfettamente intercettabile, contro il volere dell'installatore ed utilizzatore.  
  
OpenBSD è utilizzato in modo massivo, ad esempio, per la creazione di sistemi di VPN (Virtual Private Network). Una azienda o una organizzazione implementa infatti sistemi di VPN quando non vuole che i dati siano liberamente intercettabili, ma con una tecnologia come questa (nel caso le ipotesi si rivelassero reali) sarebbe una mossa assolutamente inutile: tutte le cifrature avrebber, infatti, una "backdoor", una porta sul retro da cui un utente con le giuste conoscenze può entrare e decifrare comunque, in barba alle chiavi impostate, ogni comunicazione.  
  
OpenBsd non solamente è implementato in centinaia di migliaia di server al mondo, ma la licenza particolare del sistema operativo ne consente l'utilizzo (anche tacito) all'interno di dispositivi hardware di terze parti. Non è possibile quindi sapere, nel caso le voci vengano confermate, la reale estensione del fenomeno: il router che usate in azienda potrebbe, infatti, essere null'altro che una appliance linux che monta OpenBSD a vostra insaputa (vista la nota stabilità del sistema) e potreste quindi essere vulnerabili anche senza saperlo.  
  
Theo non ha ancora preso particolari precauzioni, ma ha divulgato la mail alla mailing-list, così da potere, nelle sue parole:  
  
> The mail came in privately from a person I have not talked to for
nearly 10 years.  I refuse to become part of such a conspiracy, and
will not be talking to Gregory Perry about this.  Therefore I am
making it public so that  
>     (a) those who use the code can audit it for these problems,
>     (b) those that are angry at the story can take other actions,
>     (c) if it is not true, those who are being accused can defend themselves.
  
Ne parla anche [ItWire](http://www.itwire.com/opinion-and-analysis/open-sauce/43933-developer-claims-fbi-implemented-backdoors-in-openbsd), tra l'altro...  
  
Staremo a vedere, ma nel frattempo, al solito, estote parati...
[link]: http://marc.info/?l=openbsd-tech&m=129236621626462&w=2
[conf]: http://www.aipsa.eu/visuaEvento.aspx?id=46
[OCF]: http://www.openbsd.org/crypto.html
[theo]: http://en.wikipedia.org/wiki/Theo_de_Raadt
[greg]: http://en.wikipedia.org/wiki/Greg_Perry
