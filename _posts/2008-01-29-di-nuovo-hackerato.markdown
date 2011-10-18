--- 
layout: post
status: ok
title: Di nuovo hackerato ;)
meta: {}
tags: 
- about-me
- forensic
- p0wn
---
**Mea culpa, mea culpa, mea maxima culpa** sembra proprio che mi **abbiano sfondato** il vecchio Wordpress 2.2.3 che non aggiornavo per pigrizia :)  
  
**Me lo merito!**  Lazzarone come sono! Ma stavo [facendo altro](http://www.osxcrypt.org), e lo sapete...
  
A quanto pare hanno sfondato nel più **classico degli scenari** una pagina php contenente una vulnerabilità (*index-extra.php*) e tramite questa uplodato contenuto vario ed eventuale per poi **modificare user e password**, postare un paio di articoli, uplodare file ed alla fine esportare <s>tutto il DB</s> l'export di tutti i Post tramite la fuzione di esportazione di Wordpress (buon pro vi faccia =]).  
Il fingerprinting della versione di Wordpress è stato fatto grazie alla vecchia tecnica dei CSS di Admin e gli articoli sono stati online per ben **2 ore**!
    
Interessante però notare come il tutto sia stato fatto partire dall'IP [213.230.130.53](http://www.projecthoneypot.org/i_8a2c681f5004ddcce26efd0530cde3f5), probabilmente sfondata, in zona Roma...  
Ma **MOLTO più interessanti** i dati dello stesso User Agent, una stringa **MOLTO particolare** (browser particolare, versione particolare), che qualche ora prima si è collegata invece da un indirizzo IP facente capo all'**Università di Milano** e sicuramente riconducibile più semplicemente **riconducibile alla persona**, che in questo momento deve avere le chiappe che scottano un pochino...    
  
**Ora che si fa?**  
Come al solito lascio passare <s>qualche ora in attesa di scuse da parte del buontempone (i contatti li conoscete) o, altrimenti, si procede con denuncia per accesso abusivo</s> ed arriva la [mail dell'acaro :)](http://www.lastknight.com/2008/01/29/lacaro-suona-sempre-due-volte/) e così direi che siamo pari... Ed imparo a  tenere aggiornato!  
  
E nel caso vi capitasse resettare la password di Wordpress non è [poi così complesso](http://noteslog.com/post/how-to-reset-a-wordpress-password/).  
  
Ora, però, **nanna**!   
