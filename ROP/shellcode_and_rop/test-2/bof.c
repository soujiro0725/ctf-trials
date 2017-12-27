#include <stdlib.h>
#include <stdlib.h>
#include <string.h>

int bof(char *p)
{
  char buf[100] = {};
  strcpy(buf, p);
  puts(buf);
  return 0;
}

int main(int argc, char *argv[])
{
  bof(argv[1]);
  return 0;
}
