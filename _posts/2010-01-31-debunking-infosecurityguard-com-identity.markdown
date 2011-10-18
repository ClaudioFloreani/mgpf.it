--- 
layout: post
status: ok
title: Debunking InfoSecurityGuard.com Identity
meta: {}
tags: 
- hacking
- debunking
---
<div class="important">
Hi, non-italian readers! Pleased to have you here around. I'm very sorry but this blog is mostly Italian. You can have some English background (although outdated) info on <a href="http://www.matteoflora.com">matteoflora.com</a>. I've been a Forensic Consultant for over a decade and I'm presently CEO & Partner of The Fool, an Italian start-up dealing with Technology.  
This post is in English for it refers to an english-language heated discussion.  
<br>
<i>Per gli italiani: scusatemi, prometto di scrivere di nuovo in italiano presto :)</i>.
</div>
It was about time for a little manhunt... I didn't one since the last intrusion on Lastknight.com, but a dear friend of mine, [Fabio][1] pointed me to an interesting study that smelled a little too much of "marketing stunt".  
  
DISCLOSURE: Fabio and I are long time friends and we've done some work together. Presently we do not have any kind of business together, aside from some beers and som dinners together :) He asked me to lend a hand in finding "if I could trace who's behind InfoSecurityGuard.com" and I decided to throw a little bit of my Sunday on it...   
  
Fabio works in a [Secure Communication firm][2], which has created a [nifty little cellphone encryption app][10] and some days ago the protocol underlying this app, along with a bunch of other competitors, was tested by a strange unknown [indipendent examiner][3] which presented himself with the name of Notrax, a [YouTube Channel][4] and a [a funny bio](http://infosecurityguard.com/?page_id=2): 
> ¾ Human, ¼ Android (Well that would be cool at least.) I am just an enthusiast of pretty much anything that talks binary and if it has a RS232 port even better. During the day I masquerade as an engineer working on some pretty cool projects at times, but mostly I do the fun stuff at night.  
  
The testing method seems to me a little shaky, but that's not the point (not mine, at least) and Fabio [explained in some length][5] his view on the subject that may or may not be the truth.  
The point behind it is the total anonymity that Mr.Notrax seems to want to achieve with the report. That seems strange, considered how many man-hours he has surely spent on the detailed and time consumptive work.  
  
Fabio's sixth sense tingled some strangeness when shortly after publication he found a complex press releases by [SecurStar Gmbh][8] published [on BusinessWire][6] flaunting [their solution][7] (namely PhoneCrypt) as:  
  
> PhoneCrypt from SecurStar was one of only three solutions that successfully blocked hacker attacks that were made using a simple wiretapping Trojan  
  
And the press release goes in much more detail:  
  
> Like most security breaches, Notrax went for the weakest link; he did not attempt to crack the encryption itself, but used simple wiretapping techniques, said Wilfried Hafner, CEO at SecurStar that developed the PhoneCrypt solution. Unlike most of the vendors investigated, we recognized this potential security gap from the start and designed in measures to deliver complete end-to-end protection against eavesdropping.   
    
Don't get me wrong: it is perfectly fine for every business to **prance a little bit** when someone finds out your product rocks :) I've been doing it more than once as a CEO for our product FoolDNS and I know how it feels. But for Fabio it seemed sort of wrong for some reason, and in a Sunday morning in Skype, after a good dinner together the day before, he started thinking maybe something wasn't good and asked me a little bit of help in trying to find out who is the mysterious Notrax behind the domain [InfoSecurityGuard][3].  
And here the story start to grow interesting :)  
  
>    Domain Name: INFOSECURITYGUARD.COM  
>    Registrar: GODADDY.COM, INC.
>   Name Server: NS61.DOMAINCONTROL.COM  
>   Updated Date: 01-dec-2009  
>   Creation Date: 01-dec-2009  
>   Expiration Date: 01-dec-2010 
It is fairly new, something you expect for a custom-created domain, and it has the common Privacy Guard services we have all learned to know:  
  
> Private, Registration  INFOSECURITYGUARD.COM@domainsbyproxy.com  
> Domains by Proxy, Inc.  
> DomainsByProxy.com  
> 15111 N. Hayden Rd., Ste 160, PMB 353  
> Scottsdale, Arizona 85260  
> United States  
> (480) 624-2599      Fax -- (480) 624-2598
So we can only hope in a sort of error fron kind Mr.Notrax. The one everyone does now and then *(and me more than anyone I know :P)*.  
  
And this time the error is quite stupid: a single wordpress trackback. In fact when Fabio [commented on InfoPrivacyGuard](http://infosecurityguard.com/?p=116#comments), the admin action made by Notrax on his Anonymous Blog by approving the post, generated a **beautiful http request** on Fabio's Wordpress blog, a request that we were able to recover from the Apache logfiles:  
  
> **217.7.213.59** - - [30/Jan/2010:02:56:37 -0700] "GET /20100129/licensed-by-israel-ministry-of-defense-how-things-really-works/ HTTP/1.0" 200 5795 "**http://infosecurityguard.com/wp-admin/edit-comments.php**" "Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; GTB6.3; .NET CLR 1.1.4322; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729; InfoPath.2)"  
  
As you may see, the the action was generated by a page (edit-comments.php) that can be accessed only by the Administrator of the InfoSecurityGuard blog. We can be quite sure, so, that the administrator logged into the Wordpress Dashboard and visited Fabio's Blog from the IP 217.7.213.59.  
  
This is, by now, our only data. We must find everything we can about it, because it can be either most useful or completely useless if Mr. Notrax has used a Proxy and/or a TOR like connection to administer the domain (which is quite common with paranoids like us).  
  
First of all the IP 217.7.213.59 seem to be German as SecurStar is, but this can just be a coincidence. In addition to this many TOR servers are located in Germany as [anyone can discover](http://blog.vorant.com/2008/06/tor-server-lists-revisited.html) with a little effort.  
So let's take a look at the [data associated with the IP 217.7.213.59](http://whois.domaintools.com/217.7.213.59):    
  
> inetnum:        217.7.192.0 - 217.7.255.255  
> netname:        DTAG-STATIC03  
> descr:          Deutsche Telekom AG  
> T-DSL Business  
> static dial-up  
  
Traceroute infos [are not intresting too](http://dns-tools.domaintools.com/ip-tools/?method=traceroute&query=217.7.213.59) and the Reverse Lookup on the domain only tell us that 217.7.213.59 is pd907d53b.dip0.t-ipconnect.de.  
  
Nothing intresting, so? Almost...  
  
In fact, CONNECTING to <http://pd907d53b.dip0.t-ipconnect.de> gives us a very interesting answer: not only the machine on the other side is a CentOs server, but it seem to run an instance of [FreePBX](http://www.freepbx.org/), a beautiful and most easy to setup OSS Voip PBX:  
  
<a href="http://www.lastknight.com/download//2010/01/caccia_002.jpg"><img src="http://www.lastknight.com/download//2010/01/caccia_002-421x300.jpg" alt="" title="caccia_002" width="421" height="300" class="aligncenter size-medium wp-image-1821" /></a>  
  
The SysAdm seem to have been a little shaky on the Security part: the Administrative Interface, which normally isn't exposed on the web, is there in clear. We do NOT know the user and password and surely we do NOT want to do _anything illegal_ by trying to force it, but still we are able to take a peek at the Flash Operation Panel, mapping all the phones connected and giving the common name of the single phones [on this page](http://pd907d53b.dip0.t-ipconnect.de/panel/):  
  
<a href="http://www.lastknight.com/download//2010/01/caccia_001.jpg"><img src="http://www.lastknight.com/download//2010/01/caccia_001-421x300.jpg" alt="" title="caccia_001" width="421" height="300" class="aligncenter size-medium wp-image-1822" /></a>
  
Ok, aside from a funny interface to play with (something that we _do not want to do_) what have we got here? Nothing very specific, to be fair, aside from some names:  
  
* Wilfred Hafner  
* Tiago Mendez  
* Shaun Holligworth  
* Can Yavuzylmax
* Markus Besinger 
* Karina Cabral 
* Dragos Pirte 
* Mark Incley  
  
It doesn't need the young Sherlock Holmes to find out that all these names are from [SecureStar Gmbh][8] and, precisely:  
* Wilfried Hafner - *[CEO](http://www.xing.com/profile/Wilfried_Hafner) *  
* Shaun Holligworth - *[Guru of Security](http://www.securstar.com/about.php)* 
* Can Yavuzylmax - *County Manager (LinkedIn)*  
* Markus Besinger - *System Administrator (LinkedIn)* 
* Mark Incley - *[Mobile Software Developer](http://www.mobygames.com/developer/sheet/view/developerId,53004/)*  
  
And so?  
  
And so SOMEONE at [SecurStar][8] headquarters quite obviously has been **playing strange games** and while I don't really have anything to say with that, it seems to me that crafting [the press release][5] and spreading it without disclosing that the study was **internally made** or at least made by **someone who work there** isn't really proper.  
  
I don't really know if it was deliberate or not (maybe they just didnt know some of their employers did it... hemmm...), but certainly I'd like to know a little more about **WHO in the company** is known by the name of Mr.Notrax and why he has crafted the site at [InfoSecurityGuard][3] to place their product **in the best light**. And feigning there wasn't any kind of involvement.  
  
Mr.Notrax is certainly a smart and awfully good guy, but until a little bit more light is shed on the entire thing I think I'll have to doubt everything that comes from him.  
  
And I really hope all this stuff isn't really just undercover market for the German company, a maneuver that is even [Illegal in most parts of the world](http://www.culture-buzz.com/blog/IPA-warning-buzz-marketing-techniques-illegal-UK-1603.html), for example prohibited by the [UK Consumer Protection from Unfair Trading Regulations][9].   
  
**Paranoia is a virtue.**   
  
**UPDATE**: Fabio has updated his blog with a [very strong opinioned](http://infosecurity.ch/20100201/evidence-that-infosecurityguard-comnotrax-is-securstar-gmbh-a-fake-independent-research-on-voice-crypto/) that doesn't necessarily reflect my position. The only thing *I* want to find out is the level of trust I should put in Mr.Notrax... 
  
[1]: http://infosecurity.ch
[2]: http://khamsa.it
[3]: http://infosecurityguard.com/
[4]: http://www.youtube.com/user/Notrax10
[5]: http://infosecurity.ch/20100130/about-the-voice-encryption-analysis-phonecrypt-can-be-intercepted-serious-security-evaluation-criteria/
[6]: http://eon.businesswire.com/portal/site/eon/permalink/?ndmViewId=news_view&newsId=20100127005093&newsLang=en
[7]: http://PhoneCrypt.com
[8]: http://www.securstar.com/home.php
[9]: http://www.oft.gov.uk/advice_and_resources/small_businesses/competing/protection
[10]: http://privategsm.com 
