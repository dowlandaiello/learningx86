global _main

section.data:
	msg: db "Hello World!", 0xA
	msg_len: equ $-msg

section.text:

_main:
	mov eax, 0x4     ; use the write syscall
	mov ebx, 1       ; use stdout
	mov ecx, msg     ; print msg
	mov edx, msg_len ; length of msg
	int 0x80         ; run the syscall

	mov eax, 0x1     ; exit
	mov ebx, 0       ; return 0
	int 0x80         ; run the syscall
