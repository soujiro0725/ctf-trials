#!/usr/bin/env python

from pwn import *

context.clear(arch='i386')

c = constants
assembly = 'read:'      + shellcraft.read(c.STDIN_FILENO, 'esp', 1024)
assembly += 'ret\n'
assembly += 'add_esp: add esp, 0x10; ret\n'

assembly += 'write: enter 0,0\n'
assembly += '    mov ebx, [ebp+4+4]\n'
assembly += '    mov ecx, [ebp+4+8]\n'
assembly += '    mov edx, [ebp+4+12]\n'
assembly += shellcraft.write('ebx', 'ecx', 'edx')
assembly += '    leave\n'
assembly += '    ret\n'
assembly += 'flag: .asciz "The flag"\n'

assembly += 'exit: ' + shellcraft.exit(0)
print asm(assembly)
#print ELF.from_assembly(assembly)


