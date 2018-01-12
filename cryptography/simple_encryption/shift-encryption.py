#!/usr/bin/env python

import string

def caesar(plaintext, shift):
    alphabet = string.ascii_lowercase
    shifted_alphabet = alphabet[shift:] + alphabet[:shift]
    table = string.maketrans(alphabet, shifted_alphabet)
    return plaintext.translate(table)

input = "YNRJKQNJXQNPJFSFWWTB"
input = input.lower()
print 'original: {}'.format(input)
for i in range(26):
    print 'encrypted: {}'.format(caesar(input, i))

