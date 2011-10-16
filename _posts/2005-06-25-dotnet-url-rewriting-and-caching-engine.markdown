--- 
layout: post
title: DotNet Url Rewriting and Caching Engine
published: true
meta: 
  _wp_page_template: page_eng.php
  autometa: ""
tags: []

type: post
status: publish
---
#Playing with URL rewrite

I came across Url Rewrite in .NET a little time ago, trying to get rid of the quesrystrings of an old-ASP CMS I deveoped and worked great (see Pitagora / WOE Web Content Management System ) but had the problems that afflict a lot of asp scripts: all the pages are something like

> http://myhost/mypage.asp?pagetoget=MyVeryGoodPage.

While working at this I came across a fancy all pourpose Url rewriting and caching engine for any programming language. Strange as it seems this was the very complex simplest solution I found to handle a very simple task.
These are the stories of the Starship Enterpri... hemm... of my implementation.

#The Main Idea

...or how I got into this mess.
Mainly I have a very good CMS ( Pitagora / WOE Web Content Management System , shameless self-promotion intended) that handles all the pages with a URL that is http://myhost/template.asp?page=Title_Of_Page . While this approach is really useful and very good for memory (I only need to remember the title of the page I want to access), it is a hege problem for search engines and web statistics, cause actually ALL pages only call template.asp.
What I really wanted was something that could:

*  translate http://myhost/template.asp?page=Title_Of_Page
*  into http://myhost/Title_Of_Page.aspx while using the CMS.

I didnt want to use a mere redirect, maily because it uses a 302/303 HTTP code that means a normal redirect not followed by search engines. And I obviously wanted to make it automatical, not needing to manually create the aspx file for each page.
When I first went into Url Rewriting in .NET I though I was really OK. Using ASP I already had a Wintel machine, I can program in ASP.NET, in my imaginery whis had to be as simple as 1 + 1.
Of that stuff is Hell made.

#How to crash a Wonderful Idea

I started simple (thay all do).
The beautiful thing is that if I correctly implement the trick I didnt need the MyFakePage.aspx to REALLY exist on server; I only needed to implement the Application_BeginRequest method on Global.asax.
Application_BeginRequest is fired BEFORE the actual page, so I can SIMULATE the page exist and doing my redirect job fast and neat.
So Id have something like this:

<!--adsense-->

<code lang="csharp">
protected void Application_BeginRequest(Object sender, EventArgs e)
{
  string myBaseUrl = "/vox/";
  string strCustomPath;
  string mypath = Request.ServerVariables["PATH_INFO"];
  string filename;

  filename = mypath.Substring(mypath.LastIndexOf("/"));
  string destinationUrl = "/myCMS/template.aspx?page=" +
  filename.Replace("aspx", "");
  Server.Transfert(destinationUrl);
}
</code>

Ok. Thats all folks. It is all well and done, Its Ok... ACHK!!! It is not.
It seems that HttpHandler in machine.Config gets hangry if you try to execute an ASP this way. You cannot. Thats all.
Well, I can modify Machine.Config here, but what about my HOSTED site? This could be the end of a dream.
To make the things even worst, the same problem afflict RewriteUrl method. I had to quickly devise a new method for being maybe LESS neat but functioning.

#Fetching what I need

Well, all in all an ASP page is something that is sent via HTTP. All I have to do is to fetch it a Web Browser will do and have it spitted back to the client. I was starting to hope again...
First of all lets get that damn page and store it into a string:


<code lang="csharp">
private string getPage(string URL)
{
  string res ="";
  try
  {
    WebRequest wrGETURL;
    wrGETURL = WebRequest.Create(URL);
    Stream objStream;
    objStream = wrGETURL.GetResponse().GetResponseStream();
    StreamReader objReader = new StreamReader(objStream);
    res = objReader.ReadToEnd().ToString();
  }
catch () {}
return res;
}
</code>

And now we can kindly use it over and over and over...  

<!--adsense-->  

<code lang="csharp">
protected void Application_BeginRequest(Object sender, EventArgs e)
{
  string myBaseUrl = "/vox/";
  String strCustomPath;
  string mypath = Request.ServerVariables["PATH_INFO"];
  string filename;
  filename = mypath.Substring(mypath.LastIndexOf("/"));
  string destinationUrl = "/myCMS/template.aspx?page=" +
  filename.Replace("aspx", "");
  string destinationHost = Request.ServerVariables["HTTP_HOST"];
  Response.Write(destinationHost + destinationUrl;
  Response.End
}
</code>
This could be the end of the article, as the Machine.COnfig problem above, but once again Im struck with the fact Im on a Hosted Environment. An hosting environment with PAID BANDWIDTH.
Im sure you can get my point. Every time I call for a page, it is fetched over and over again by the ASP.NET process. It can really lead into disaster. I need another trick...  



#Maybe Akamai started from here too...

The more I though about all this, the more I was convinced a cache system of some kind would be a neat job. In addition to making all this article function it would provide the CMS with a cache for content.
Not only that. It would make the system an URl Rewriting and caching engine fo EVERY language. Why wouldnt you not use it on PHP (for example) or Pyton etc as long as they are on the same server?
And why to limit on the SAME server? You can change the destinationHost string and fetch the content from everywhere in the world, as far as I know.
Well... We were talking about the cache... I know that ASP.NET has a beautiful set of caching features, but they are in the PAGE object. I didnt wanted to use it. So I went into the dear old Application object.
The trick is easy: have you the page on cache? Yes? Ok, spit it to the browser. No? Ok, get it, store it and spit it to the browser. Likethis:
<code lang="csharp">
protected void Application_BeginRequest(Object sender, EventArgs e)
{
  string myBaseUrl = "/vox/";
  string strCustomPath;
  string mypath = Request.ServerVariables["PATH_INFO"];
  string filename;
  filename = mypath.Substring(mypath.LastIndexOf("/"));
  string destinationUrl = "/myCMS/template.aspx?page=" +
  filename.Replace("aspx", "");
  string destinationHost = Request.ServerVariables["HTTP_HOST"];
  string destinationAddress = destinationHost + destinationUrl;
  if (Application[destinationAddress] == null)
  {
    Application[destinationAddress] = getPage(destinationAddress);
    Response.Write(Application[destinationAddress ].ToString());
    Response.Write("<!-- Got it from LIVE -->");
  }
  else
  {
    Response.Write(Application[destinationAddress ].ToString());
    Response.Write("<!-- Got it from CACHE -->");
  }
  Response.End
}
</code>
Thats all. I now can navigate every fake page and get it from the CMS. I can gat it stored so that I have a cache and I can even add a comment on the bottom line to remind me where it comes from (open the resulting HTML and youll see).

#I need to change a page!

You should have noted that if you want to change a page you need to restart the application to erase Application values. Once again, being hosted, I needed to find some sort of sideway to handle this (and seriously thinking of housing ;).
A very quick way is to catch if a particular aspx pafe is called (suppose to call it clearall.aspx) and doing the job. Something like this:
<code lang="csharp">
if (filename == "clear")
{
  Application.RemoveAll();
  Response.Write("Done it!");
}
</code>
That should handle all the stuff pretty easly.

#Playing with Content

Please, remind that we have all the page into a string! That means we can alterate it as difficoultly as a Replace("oldVar", "newVar") is. We can, for example, modify all HREFs to reflect a new position with a Replace("href="", "hraf="/mynewdir/"), or even substitute the title of the site we are thieving the content from with our one (ok, ok, thats too nasty ;) I promise not to do that...).

#Conclusion

While this article is FAR from being a Guru vision or something like that, I hope it will provide you some good idea to experiment your way to this approach. I do not know if this "stripped down" version of the actual system I use is safe (I am a little concerned about memory allocation of Applications after a while), but is a good start for implementing something better.
Please, avoid sending me flame mails about hwo my code-style sucks. I know it. Im good at inventing things, not at the fine carpentering job of stylish-coding... And if you create a polished version Id be more than glad to take a look at it!
It has helped me much, it was fun to write it and right now my site ( Lastknight Dot Com ) runs by using it (well, a more sophisticated and database driven version of it, but this was the core idea). As far as I know it funcions and my statistics are referring the ASPX page correctly and nicely. Its fun to have all the stats made on PAGES (top view, permanence, etc) as if I wasnt at all using a CMS... It takes the better of both worlds.
And Google is handling the page as a static one. That means I have more than ONE PAGE in all the domain, right now. Astionishing, isnt that?
Have my greetings and I'll be most pleased to know about your experimenting with this, as well as to correct the thousands scores of errors I made in this article that youll kindly signal. 
