import sys

"""
In [12]: _l(3, s)
Out[12]: 'DEFGHIJKLMNOPQRSTUVWXYZ0123456789abcdefghijklmnopqrstuvwxyz_{}ABC'
"""
def _l(idx, s):
    return s[idx:] + s[:idx]

def main(p, k1, k2):
    s = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789abcdefghijklmnopqrstuvwxyz_{}" # len(s) = 65
    t = [[_l((i + j) % len(s), s) for j in range(len(s))] for i in range(len(s))]
    i1 = 0
    i2 = 0
    c = ""
    for a in p:
        print "a={0},k1[i1]={1},k2[i2]={2}".format(a,k1[i1],k2[i2])
        c += t[s.find(a)][s.find(k1[i1])][s.find(k2[i2])]
        print "c is {}".format(c)
        i1 = (i1 + 1) % len(k1)
        i2 = (i2 + 1) % len(k2)
    return c
print main(sys.argv[1], sys.argv[2], sys.argv[2][::-1])
