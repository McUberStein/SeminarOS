global _start
	
_start:
	mov rax, 1
	mov rdi, 1
	mov rsi, string_message
	mov rdx, message_len	
	syscall

	mov rax, 60
	mov rdi, 0
	syscall
	ret

string_message:	db 'Hello, World!', 10
message_len:	equ $ - string_message
