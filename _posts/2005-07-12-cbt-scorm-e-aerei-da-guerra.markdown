--- 
layout: post
status: ok
title: CBT, SCORM e Aerei da guerra...
meta: {}
tags: 
- about-me
---
Eccomi a cambiare ancora lavoro ed a passare ad un ramo completamente differente. Il bello di essere consulente è proprio questo lavoro da "cavalletta" della new economy, saltellante da un'architettura di applicazione ad un'altra...  
Questa volta si tratta di creare un sistema per [CBT](http://it.wikipedia.org/wiki/E-learning) (Computer Based Training) che sia compilant con [SCORM](http://www.adlnet.org/scorm/index.cfm) (Sharable Content Object Reference Model, il sistema sviluppato in collaborazione con il Ministero della Difesa americano per l'erogazione di contenuti E-Learning) e che sia in grado di erogare contenuti in modo statico o connesso, quindi con integrazione ad un LMS (Learning Management System).  
Architettura prevalentemente 3-tier e completamente ASP.NET con integrazione di Cassini per l'erogazione stand-alone...  
Attualmente i problemi più grandi sono dati dal parsing dei vari Manifest e Metadata di SCORM e dalla "pacchettizzazione" in tempo reale delle risorse... L'obiettivo è di creare una sorta di "TinyScorm.NET LMS" che sia in grado di utilizzare le "funzioni di base" di SCORM e di creare un ambiente user-friendly per poi procedere con la programmazione. Si dovrà discutere un poco con il committente, ma sarebbe mia idea rilasciare il Player come OpenSource sempre che la scoietà sia daccordo...  
  
Vedremo! Nel frattempo chiunque sia addetto a SCORM o abbia interessanti implementazioni in C# si faccia vivo! 