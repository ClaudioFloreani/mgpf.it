--- 
layout: post
status: 
title: Cheating Google
meta: 
tags:
- develop
- seo
---
#The Meta Keywords and spider-oriented ""Hello Spider"" text
Ok, you've got your beautiful Website and a beautiful set of Meta keywords and Meta Descriptions, haven't you? And you've created a robots.txt fine in the root of your site, I presume... If not you REALLY should go back and search for some META information and come back as soon as you understand what we are talking about...
Ok, I trust you and if you're here the part over is OK. Now your site is ranked 10th at best? I DO NOT have an answer. But I can give you some useful tips in ASP for making a better ranking.
#The Basics
First of all, inspite of the title, we are not cheating. We are semplifying the work of the search engine by helbing its "little workers" to do their work better and faster.
You must know, before proceding, that web search engine do their work using spiders or better web-spiders . A web spider is a sork of automatic browser that does the work of connecting to a page, look into it for the content and archiving it, along with following links provided in it. So sometimes in the live of your site you'll see (if you have statistics for your site) some strange browser type (for example Java1.4.0_03 , libwww-perl/5.69 or GoogleBot ). This is the clear symptom your website has a bad spider infection! ;)
#A halping hand...
Sometimes the spider does its job in the correct way, sometimes it doesn't. And so, for "forcing his hand" a little, many sites try to append at the end of the page some content (for example "sex, sex, sex, sex..:" one zillion times...) for elevating their ranking in that keyword. If it is now clear that a zillion repetitions does the opposite function of setting the spider avoid that page, it is clear that having a couple of "salient" words published is not only important, but sometimes vital.
Think about an entry page for your site "image-based". You'll not have the chance to give the spider the correct information about the content of that peculiar page, and so it just drops down.
A good solution, so, is to place some words in the page for the sake of spiders. But spiders are growing much and much intelligent... And so, if sometimes ago the "normal" practise was to write "white on white" or "black on black", nowaday you must write in a meaningful color and NOT into strange DIVS or hidden LAYERS.
It is a little ugly to see a bunch of no-meaning words in the middle of your website, and so many have dropped this useful tip.
#This is mine, that is yours...
Chosing and sorting is the core of the World... And even ASP has the capabilities to "understand" who is coming. I've seen many examples on the web that implement a sort of "redirect the spiders on another page" mechanisms. It doesn't function. The spider will be aware of the redirect (302 error code: moved) and will not index the SOURCE page, only (maybe) the destination. And tha's bad.
In the following lines I'll guide you to implement a strange kind of page. A page that behaves differently on "normal browsers" and on "spiders", allowing the first to see the "stylish" page, and the latter to see a "stylish" page with a "welcome spider" section.
#The Code...
First of all let's open a file named "cheating.asp" which will contain only the functions.
It will look like this:
<code lang="asp">
 < %
  ' The spiderWelcomeText will write a "Hello Spider"
  ' text in the dedicated paragraph. Sort of
  ' making a fool of the spider, or better clarifying
  ' what these things are to accidental non spider
  ' folks with very strange browsers.
  dim spiderWelcomeText
  ' The spiderMetaKeys is a comma-separated list of words
  ' the function will use to generate the text used for
  ' cheating the spider
  dim spiderMetaKeys
  ' The spiderLinksText will write a friendly text
  ' before more important links to be added
  dim spiderLinksText
  ' The spiderLinksHtml will contain the HTML code for the Links
  dim spiderLinksHtml
Function isSpider()
  	' Well, normally the browser isn't a spider...
  	isSpider = 0
  	' No other meaning than forcing the isSpider behaviour
	' for testing pourpose
  	if request("spider") = 1 then isSpider = 1
  	' Takes the name of the UserAgent currently used and put it
	' into lower case for compairson
  	agent = lcase(Request.ServerVariables("HTTP_USER_AGENT"))
  	' Now, most of the Bots refers to themself as libwww,
	' java, perl, crawl, bot. let's start with some conditions
	' If the agent contains "bot" then it is a Spider
  	if instr(agent, "bot")  > 0 then isSpider = 1
  	' If the agent contains "perl" then it is a Spider
  	if instr(agent, "perl") > 0 then isSpider = 1
  	' If the agent contains "java" then it is a Spider
  	if instr(agent, "java") > 0 then isSpider = 1
  	' If the agent contains "libw" then it is a Spider
  	if instr(agent, "libw") > 0 then isSpider = 1
  	' If the agent contains "crawl" then it is a Spider
  	if instr(agent, "crawl") > 0 then isSpider = 1
end function
function spiderContent()
  	' First of all we must analyze if the browser is a spider or not.
	' It isn't useful to waste machine time playing with keywords
	' if it isn't...
  	if isSpider() then
		spiderContent = ucase(spiderWelcomeText) & "  
" &_
		lcase(spiderMetaKeys) &_
		", " & ucase(spiderMetaKeys) & "<br <br/>" &_ 
		ucase(spiderLinksText) & "  
" &_
		spiderLinksHtml
	end if
end function
%> 
</code>
#Using the code
Now we have a little beautiful new piece of code to use. But HOW? Well, first of all we take our beautiful page to make "spider friendly" and include the library. Second of all we place some content in the variables, third of all we ise the code.
Ok, a little of hands-on code. Let's suppose this is your page:
<code lang="html">
 <html>
	<head>
		<title>My Little Page</title>
	</head>
	<body>
		Welcome to my page. This is my little page.  
		A lot of stuff  
		<img src="abeautifulimage.gif"/>
	</body>
</html>
 </code>
After the simple "restyle" it will be something like:
<code lang="asp">
   <!--#include file="cheating.asp"-->
< %
  ' The spiderWelcomeText will write a "Hello Spider"
' text in the dedicated paragraph. Sort of
' making a fool of the spider, or better clarifying
' what these things are to accidental non spider
' folks with very strange browsers.
  spiderWelcomeText = "Hello, little dear spider!"
  ' The spiderMetaKeys is a comma-separated list of words
' the function will use to generate the text used for
' cheating the spider
  spiderMetaKeys = "key1, key2, key3, key4"
  ' The spiderLinksText will write a friendly text
' before more important links to be added
  spiderLinksText = "dear spider, look here, please..."
  ' The spiderLinksHtml will contain the HTML code for the Links
  spiderLinksHtml = "<a href='1.asp'>Link1 - <a href='2.asp'>Link2</a>"
%>  
<html>
	<head>
		<title>My Little Page</title>
	</head>
	<body>
  	< %=spiderContent()%>  
		Welcome to my page. This is my little page.  
		A lot of stuff  
		<img src="abeautifulimage.gif"/>
  	< %=spiderContent()%>  
	</body>
</html>
</code>
#"Live" example
If you remember, in the isSpider function we have added a line to handle the "tests". This line will let you see the spider's view of http://www.yoursite.com/pageYouModified.asp simply by writing http://www.yoursite.com/pageYouModified.asp?spider=1 .
Now let's take a look at Lastknight Dot Com own implementation. My declarations are a little more complex:
<code lang="asp">
 < %
' Spider cheating
spiderWelcomeText = "<table width=50% align=center><tr>" &_ 
	"<td><b>Hello Spider! Welcome at www.lastknight.com</b>"
spiderMetaKeys = "lastknight, lk, lk.com, lastknight.com," &_ 
	"lastknight.org, lastknight.net, lastknight, matteo, " &_ 
	"matteo flora, matteo g.p. flora, matteo ""lk"", " &_
	"programming, asp cheating, google chating, tutorials, " &_ 
	"photos, milano, milan, neural networks, NN, asp.net, asp, " &_
	"Active Server Pages, lastknight, LK, last knight, last, " &_
	"lastknight dot com, lastknight dot org, lastknight dot net"
spiderLinksText = "<b>Dear spider, here is a list of" &_
	"contents for you to handle...</b>"
SpiderLinksHtml = "<a href='default.asp'>Home Page</a> - " &_ 
	"<a href='contacts.asp'>Contacts</a> - " &_ 
	"<a href='titorials.asp'>Tutorials</a> - " &_ 
	"<a href='me.asp'>About me</a> - " &_ 
	"<a href='blogger.asp'>Blogger</a> - " &_ 
	"<a href='index.xml'>Blogger XML</a> - " &_ 
	"<a href='/palm/'>Palm programming</a></td>" &_ 
	"</tr>"
%>
</code>
What have I done? Well, besically only adding a TABLE for better formatting the output. You can look at the result of all this work in any page of my site adding the ?spider=1 query-string.
#Conclusions
Well, now you've got a powerful way to improve your website. Take it and let me know of improvements and/or good implementation.
Ah, I almost forgot: all the souce code and the tutorial comes to you subject to GNU Free Documentation License . Tale a look at it befor using the code. Thanx. 
