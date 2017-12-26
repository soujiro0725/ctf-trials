#include <stdlib.h>

int test(int a)
{
  return a + 5;
}

void main()
{

  int a = 5;
  int b;

  b = test(a);
  printf("%d is the answer\n", b);
  return 0;
}
