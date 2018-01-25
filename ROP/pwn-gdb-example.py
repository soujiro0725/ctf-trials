from pwn import * 


elf = ELF('./callme32')

EntryPoint = elf.symbols['main'] or elf.entrypoint
conn = gdb.debug(['./callme32'], execute="b *{0}\nc".format(hex(EntryPoint)))



