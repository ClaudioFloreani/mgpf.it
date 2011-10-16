--- 
layout: post
title: Quick&Dirty RSS
published: true
meta: {}

tags: 
- Security and Intelligence
type: post
status: publish
---
Girovagando [Qui e là](http://www.philweber.com/articles/easy_rss_in_vbnet.htm) mi sono imbattuto nel più devastante snippet che abbia mai visto per visualizzare RSS:
<code lang="csharp">
// Create the Dataset
DataSet ds = new DataSet();
ds.ReadXml(@"http://www.startupskills.com/index.xml",
      XmlReadMode.Auto);
//Put it in a datagrid
DataGrid1.DataSource=ds.Tables[2];
DataGrid1.DataBind();
</code>
In pratica due righe di codice per visualizzare un RSS... Mi piace ;) 
