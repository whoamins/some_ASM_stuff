; Hello World with winapi messagebox using stdcall calling convention

extern _MessageBoxA@16
extern _ExitProcess@4

global _main

section .data
    msg db  "Hello, World!", 0
    ttl db  "Amazing!",0
	
section .text
_main:
	push dword	0x00
	push dword	ttl
	push dword	msg
	push dword	0
	call _MessageBoxA@16
	
	push 0
	call _ExitProcess@4