.include "p24Hxxxx.inc"
.global __reset
.bss
x:     .space 2
y:     .space 2
count: .space 1
.text
__reset:
       mov #__SP_init, w15
       mov #__SPLIM_init,W0
       mov W0, SPLIM

;User Code starts here.
       mov #0x3, w0
       mov.b wreg, count
       mov #0x1, w1
       mov w1, x
       mov #0x3, w2
       mov w2, y
top:
       cp0.b count
       bra z, done
       cp w1, w2
       bra nz, next
       inc w2, w2
       mov w2, y
next:
       cp w1, w2
       bra GEU, next2
       add #0x2, w1
       mov w1, x
next2:
       dec.b count
       goto top

done: goto done

.end