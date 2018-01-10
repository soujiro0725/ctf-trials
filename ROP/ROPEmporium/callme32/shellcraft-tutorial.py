from pwn import *
import os

"""
test shellcraft
"""

print shellcraft.sh()
m = (asm(shellcraft.sh()))

os.system("ls")
open('binsh', 'wb').write(m)

