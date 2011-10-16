--- 
layout: post
title: Zero-Day di Flash attivo On the Wild
published: true
meta: 
  _edit_last: "1"
tags: 
- adobe
- flash
- hacking
- Security and Intelligence
- swf
- symantec
- zero-day
type: post
status: publish
---
<a href="http://www.flickr.com/photos/37996580417@N01/2423655559/" title="PC tune-up, Toronto, ON, Canada.JPG" target="_blank"><img src="http://farm3.static.flickr.com/2245/2423655559_e221bb3f91.jpg" alt="PC tune-up, Toronto, ON, Canada.JPG" border="0" /></a><br /><small><a href="http://creativecommons.org/licenses/by-sa/2.0/" title="Attribution-ShareAlike License" target="_blank"><img src="http://www.lastknight.com/wp-content/plugins/photo-dropper/images/cc.png" alt="Creative Commons License" border="0" width="16" height="16" align="absmiddle" /></a> <a href="http://www.photodropper.com/photos/" target="_blank">photo</a> credit: <a href="http://www.flickr.com/photos/37996580417@N01/2423655559/" title="gruntzooki" target="_blank">gruntzooki</a></small>  
  
Che Flash sia il male lo sappiamo già, ma in queste ore [Symantec](http://www.symantec.com/security_response/threatcon/index.jsp) ha emesso un comunicato ufficiale che eleva il rischio a **critico** come risposta ad una infezione che ha riguardato almeno **dalle 20.000 alle 200.000** pagine web nel mondo.  
Il malware, una versione modificata del ceppo cinese di MPack, si diffonde molto probabilmente via un [mass SQL injection](http://hackademix.net/2008/04/26/mass-attack-faq/) automatizzato.  
  
Apparentemente si tratta, come diveco, di uno **Zero Day** per **Macromedia Flash Player** segnalato [poco tempo fa][1] e si tratta, tra l'altro, di un attacco cross-piattaforma:  
  
>The attack uses multiple layers of SWF redirection and generates URLs designed to target specific Flash version and browser combinations, <strong>supporting both Internet Explorer and Firefox  
  

L'Incident Team di Adobe riporta [il problema nel loro sito web](http://blogs.adobe.com/psirt/2008/05/potential_flash_player_issue.html) di essere a conoscenza del problema. A quando la **soluzione**?  
  
Nel frattempo, secondo Symantec, bisognerebbe:  
  
>Avoid browsing to untrustworthy sites. Consider **disabling or uninstalling Flash** until patches are available.  
> Deploy **script-blocking mechanisms**, such as <a target="_blank" href="http://noscript.net">NoScript for Firefox</a>, to explicitly prevent SWFs from loading on all but explicitly trusted sites</strong>. Temporarily** set the kill bit on CLSID d27cdb6e-ae6d-11cf-96b8-444553540000** until patches availability is confirmed.  
  
Importante.  
Diffondete.  
  
[1]: http://www.securityfocus.com/bid/29386/info  
  
[tags] symantec, swf, adobe, flash, zero-day [/tags] 
