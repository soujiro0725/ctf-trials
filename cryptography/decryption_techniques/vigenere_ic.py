# codign: utf-8

import random
import string

f = open('plaintext.txt')
plaintext = f.read()
f.close()

plaintext = "".join(plaintext.split())
alphabet = string.lowercase

def count_alphabet(a, alphabet):
    return [a.count(x) for x in alphabet]

def index_of_conincidence(a, alphabet):
    ret = []
    n = len(a)
    return sum([x * (x - 1) for x in count_alphabet(a, alphabet)]) * 1.0 / (n * (n - 1))


print index_of_conincidence(plaintext, alphabet)
