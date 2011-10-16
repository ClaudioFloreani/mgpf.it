--- 
layout: post
title: RSS per tutti...
published: true
meta: {}

tags: 
- Security and Intelligence
type: post
status: publish
---
 <div style="clear:both;"></div>Prendete un CMS proprietario (ma MOLTO proprietario, visto che l'ho scritto IO :D) e mettete il caso che lo sviluppatore decida di scontrarsi con il mondo e creare un feed RSS...<br /> Di cosa avrà bisogno?<br /><br /> Beh, innanzitutto, credo, di tanta buona pazienza...<br /> In seconda battuta ci si potrebbe rendere conto che il CMS proprietario non tiene traccia della data in cui una pagina è stata creata. Quindi, sotto ad implementare una semplice StoredProcedure che dia la possibilità di poter dare questa informazione...<br /> E poi? Beh, se uno è proprio folle come me e vuole veramente destreggiarsi a fare una pagina a manina bella potrebbero tornare decisamente utilili queste risorse ed informazioni: <ul> <li>Il Content Type è <b>"text/xml"</b>. </li><li>Il W3C pubblica una <a href="http://www.w3.org/2001/10/glance/doc/howto">ottima guida introduttiva a RSS</a>. </li><li>Anche KBCafè pubblica <a href="http://www.kbcafe.com/rss/rssfeedstate.html">un più conciso e veloce articolo</a>. </li><li>Ma se proprio, come me, amate il quick &amp; dirty vi consiglio <a href="http://www.xml.com/pub/a/2002/12/18/dive-into-xml.html">la guida di XML.com</a>! </li><li>Nelle pagine del sito si può usare l'<a href="http://diveintomark.org/archives/2002/05/30/rss_autodiscovery">RSS AutoDiscovery Tag</a>. </li> </ul> E' utile ricordarsi di mettere un bel CDATA a fianco della descrizione, se non si vuole che l'html all'interno possa fare dei danni irreparabili :)<br /><br /> I risultati? Beh, potete <a href="http://www.lastknight.com/rss.asp">dare un'occhio QUI</a> all'RSS di <a href="http://www.lastknight.com/">Lastknight Dot Com</a>...<div style="clear:both; padding-bottom: 0.25em;"></div> 
