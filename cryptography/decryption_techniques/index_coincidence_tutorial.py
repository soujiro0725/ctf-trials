# codign: utf-8
# in order to understand index of coincidence

import random
import string
from util import load

plaintext = load('./plaintext.txt')
ciphertext = load('./ciphertext.txt')

alphabet = string.lowercase

def count_alphabet(a, alphabet):
    return [a.count(x) for x in alphabet]

def index_of_conincidence(a, alphabet):
    ret = []
    n = len(a)
    return sum([x * (x - 1) for x in count_alphabet(a, alphabet)]) * 1.0 / (n * (n - 1))

english_freq = [
  ("e", 0.1249), ("t", 0.0928), ("a", 0.0804), ("o", 0.0764), ("i", 0.0757),
  ("n", 0.0723), ("s", 0.0651), ("r", 0.0628), ("h", 0.0505), ("l", 0.0407),
  ("d", 0.0382), ("c", 0.0334), ("u", 0.0273), ("m", 0.0251), ("f", 0.0240),
  ("p", 0.0214), ("g", 0.0187), ("w", 0.0168), ("y", 0.0166), ("b", 0.0148),
  ("v", 0.0105), ("k", 0.0054), ("x", 0.0023), ("j", 0.0016), ("q", 0.0012),
  ("z", 0.0009)]

sorted_freq = sorted(english_freq, key=lambda x: x[0])

t = 3
tmp = [alphabet[(alphabet.index(x) - t) % 26] for x in ciphertext]
print "length of ciphertext {}".format(len(ciphertext))
print "length of tmp is {}".format(len(tmp))
counted = count_alphabet(tmp, alphabet)
print "count_alphabet gives {}".format(counted)
zipresult = zip(counted, sorted_freq)
print "zip gives {}".format(zipresult)
mapresult = map(lambda x: (x[0]-1)*x[1][1]/(len(tmp)-1), zipresult)
print "map gives {}".format(mapresult)
print index_of_conincidence(plaintext, alphabet)

