--- 
layout: post
status: ok
title: SharpNNTP .NET Newsgroup Access Library
meta: 
tags:
- develop
---
##What is SharpNNTP.dll?
SharpNNTP is a little useful bit of library for accessing Newsgroups within .NET/Mono Framework. Fullstop.
It provides some useful method for reading Newsgroup Listing, reading posts within a single Newsgroup and posting some new stuff all over the Net with your brand new .NET/Mono application.  
It is FAR from being "most comprehensive" and far form being "bulletproof", but provides me all the functionalities I needed at that time.  
If you want something REALLY lightweight and REALLY basilar for handling most dostressing tasks or for accessing newsgroup in a simple and rational way, maybe this is for you. It's a good start even if you want to "play around" with Newsgroups without banging you head on the walls fo too long... ;)
##Usage Example
SharpNNTP gives you Datasets and XML to play with. Dake the DataSet and bind it to whatever control to play with.
All the datasets return 2 columns : "ID" and "Name".  
Here it is a little demo code snippet.  
Please refer to the documentation (in the ZIP file) or the fully implemented IntelliSense syntax for further reference.  
<code lang="csharp">
 using LkProject.WebUtilities;
 [...]
 try
 	{
		// new newsreader using server my.nntp.server
		SharpNNTP nntp = new SharpNNTP("my.nntp.server");
		// connect to the server
		nntp.Connect();
		// New dataset containing listing of all ng
		DataSet newsGroups = nntp.GetNewsgroups();
		// New Dataset containing first 100 messages in alt.2600
		DataSet mex;
		mex = nntp.GetNewsgroupMessages("alt.2600",100);
	}
	catch (NntpException e)
	{
		Response.write(e.toString());
	}
</code>
##License
SharpNNTP 1.0 is freeware for Commercial and Non-Commercial Use.  
I require, (though) a COMUNICATION of all the uses that get published.  
  
THIS SOFTWARE IS PROVIDED "AS IS" AND ANY EXPRESS OR IMPLIED
WARRANTIES, INCLUDING (BUT NOT LIMITED TO) THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.  
IN NO EVENT SHALL THE AUTHOR OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,INCIDENTAL,SPECIAL,EXEMPLARY OR CONSEQUENTIAL DAMAGES INCLUDING (BUT NOT LIMITED TO) PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES, LOSS OF USE, DATA OR PROFITS; OR BUSINESS INTERRUPTION HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE  
##Download
You can download version 1.0 and all the documentation from following link: [SharpNNTP_10.zip](/download/SharpNNTP_10.zip), remembering what stated into the License. Remember it is a LIB, so you have to do an "Add Reference" from Visual Studio... :)
Into the pakage you will find:
*  */bin/sharpNNTP.dll* : MS compiled Library
*   */bin/sharpNNTPmono.dll* : Mono 0.30.0 compiled Library
*  */doc/index.htm* : Documntation API
*  */doc/Documentation.chm* : Windows Help File documentation 
