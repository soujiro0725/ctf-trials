import sys
# sys.setrecursionlimit(99999)
sys.setrecursionlimit(11011)
def f(n):
    return n if n < 2 else f(n-2) + f(n-1)
print "SECCON{" + str(f(11011))[:32] + "}"
