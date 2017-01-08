; asmsyntax=apricos
; ===================================
; ==                               ==
; ==  Apricos shell storage labels ==
; ==                               ==
; ==          Revision 1           ==
; ==                               ==
; ==  (C) 2014  Nick Stones-Havas  ==
; ==                               ==
; ==                               ==
; ==  Provides labels for shell    ==
; ==  variables and data storage.  ==
; ==                               ==
; ===================================
;
#name "shellmem"
#segment 10

DIRSTACKPTR: .nearptr DIRSTACK  ; Directory stack pointer
DIRSTACK: .blockw 64 0          ; 64 entry directory stack

CMDBUFF: .blockw 128 0          ; Command buffer
CMDBUFFEND: .fill 0             ; Guarantee a null terminator for the buffer



;============================
;=                          =
;=       SHELL STRINGS      =
;=                          =
;============================

PROMPT: .stringz "\n>"          ; Prompt string
UNKNOWN_CMD: .stringz "BAD COMMAND OR FILENAME\n"

;====================
;  SEGMENT BOUNDARY
;====================
.padseg 0x00

GREET:       .stringz "ApricOS PIE shell [Version 0.0.1]\n(C) Copyright 2014-2015 Nick Stones-Havas\n"
HI:          .stringz "Hello Sailor...\n"
