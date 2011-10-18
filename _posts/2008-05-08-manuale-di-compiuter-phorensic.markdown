--- 
layout: post
status: ok
title: Manuale di Compiuter Phorensics (parte I)
meta: {}
tags: 
- forensic
- weird
---
<a href="http://www.flickr.com/photos/59463761@N00/616649762/" title="F*@king monitors!" target="_blank"><img src="http://farm2.static.flickr.com/1121/616649762_9f8ac3dad1.jpg" alt="F*@king monitors!" border="0" /></a>  
<small><a href="http://creativecommons.org/licenses/by-nc-nd/2.0/" title="Attribution-NonCommercial-NoDerivs License" target="_blank"><img src="http://www.lastknight.com/wp-content/plugins/photo-dropper/images/cc.png" alt="Creative Commons License" border="0" width="16" height="16" align="absmiddle" /></a> <a href="http://www.photodropper.com/photos/" target="_blank">photo</a> credit: <a href="http://www.flickr.com/photos/59463761@N00/616649762/" title="tractorpirate" target="_blank">tractorpirate</a></small>  
  
No, non è un errore di ortografia, ma proprio quello che penso.  
  
Sto leggendo un "sedicente" manuale di Computer Forensics scritto da un "sedicente" esperto ed autoprodotto su un noto sito di stampe on demand.  
Non faccio nomi, per ora, non ho ancora finito la review.  
  
Ma posso iniziare a fare qualche stralcio di qualche paragrafo e fare capire cosa intendo per **Compiuter Phorensics** (d'ora in poi i *corsivi* sono miei per sottolineare alcuni concetti):  
  
> Scegliamo il nome del file immagine (es. image.img) e poi nelle opzioni di copia scegliamo lSDD (che è una versione più veloce del famoso DD di Linux), infine scegliamo lhash MD5 per *firmare digitalmente* la copia  
  
Ora, a parte che usare [SDD][1] per scopi di Forensics è quantomeno particolare, visto che è più veloce solo ed esclusivamente nel caso in cui IBD e OBS non coincidano (lo dice anche [chi lo ha fatto][1]), anche e soprattutto in virtù del fatto che o si usa lo standard DD oppure il ben più famoso, comodo e soprattutto STANDARD per la Forensics [DCLFDD][2].  
E, in aggiunta a questo, usare MD5 (noto per collidere) è idiosincratico. E soprattutto dovrebbe essere tolta la facoltà di parola a chi sostiene che MD5 rappresenta una [firma digitale][4], visto che il concetto stesso di firma digitale si basa sulla crittografia forte **associata** ad un Hash. Significa veramente non aver capito un piffero dell'argomento.  
  
Poi arrivano le parti ilari, come ad esempio:  
  
> Se lhard disk esterno è stato formattato in Ext3, nonostante i driver EXT2FSD per Windows, che permettono la scrittura su HD EXT3 e EXT2 da Windows, conviene *zippare da Linux col gzip*, poichè ho provato che la lettura e scrittura di grosse moli di dati genera errori di lettura dopo un pò di ore...   
 
Innanzitutto PERCHE' dovrei avere qualcosa in EXT3 in Windows. Gli strumenti di carving non si sposano poi un gran che bene con una lettura del filesystem fatta da driver terzi...  
Eppoi la vogliamo commentare 'sta affermazione del GZIP? Io mi stavo rotolando per terra dalle risate, ma magari è solamente una mia opinione...  
  
> Dai riferimenti uscenti da Autopsy possiamo salvare i contenuti dei files in rapporti testuali (magari da allegare) e poi *montare limmagine magari con un software come Mount Image Pro* e poi andare a copiare i files da esaminare con software più GUI  
  
Perché, ho bisogno di Mount Image Pro ogni volta che devo estrapolare un file da Autopsy? E le comode impostazioni di esportazione che fine hanno fatto? E come posso esportare essendo sicuro di ciò che faccio? E per i file nascosti che faccio, monto Mount Image Pro e lancio un Undelete Pro?  
  
> In un esercizio di computer forensics è capitato di ritrovare levidenza in un file ascii senza estensione e solamente guardando il suo contenuto ho visto il suo header che, cercando su Google, ho scoperto essere una codifica base64  
  
E da quando valutiamo i file dalla loro ESTENSIONE in Computer Forensics?  
  
Anche per quanto riguarda la cifratura ce la caviamo bene:  
  
> A questo punto, effettuando un'analisi con un editor esadecimale, potremmo ottenere 80 file conosciuti. Infine potremmo dare in pasto, questi files rimasti, a vari tool di cifratura (AxCrypt, *TrueCrypt*, gnuPGP, PGP, ecc.)  
  
Ah si? Bello!  
E da quando TrueCrypt ha una header distintiva come tipo di File? E, soprattutto, li diamo in pasto e cosa ci facciamo? Truecrypt non HA MODO senza la chiave corretta di dire che si tratta o meno di un filesystem cifrato. Tant'è che il programma da un errore del tipo "Password non corretta o questo non è un file di Treucrypt"....  
  
COntinuo ad avere le mier riserve... ma forse forse fossi in un lettore lascerei perdere e comprerei il [manuale edito da Apogeo][3] di Andrea "Pila" Ghirardini...  
  
 
[1]: http://linux.maruhn.com/sec/sdd.html
[2]: http://dcfldd.sourceforge.net/
[3]: http://www.apogeonline.com/libri/88-503-2593-2/scheda
[4]: http://it.wikipedia.org/wiki/Firma_digitale 
