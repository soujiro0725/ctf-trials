import sys

def f(x):
    if x <= 1:
        return x
    fibo = 1
    fiboPrev = 1
    for i in range(2, x, 1):
        tmp = fibo
        fibo += fiboPrev
        fiboPrev = tmp
    return fibo

print "SECCON{" + str(f(11011))[:32] + "}"

# int fibo(int n){
#  if(n <= 1){
#   return n;
#  }
#  int fibo = 1;
#  int fiboPrev = 1;
#  for(int i = 2; i < n; ++i){
#   int temp = fibo;
#   fibo += fiboPrev;
#   fiboPrev = temp;
#  }
#  return fibo;
# }
