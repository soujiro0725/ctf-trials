import sys

"""
In [12]: _l(3, s)
Out[12]: 'DEFGHIJKLMNOPQRSTUVWXYZ0123456789abcdefghijklmnopqrstuvwxyz_{}ABC'
"""
def _l(idx, s):
    return s[idx:] + s[:idx]

def main():
    s = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789abcdefghijklmnopqrstuvwxyz_{}" # len(s) = 65
    print [[_l((i + j) % len(s), s) for j in range(len(s))] for i in range(len(s))]
    #  t = [[_l((i + j) % 65, s) for j in range(65)] for i in range(65)]

main()
