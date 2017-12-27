/* bof.c */
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main(int argc, char *argv[])
{
  char buf[300] = {};  /* set all bytes to zero */
  printf("buf = %p\n", buf);
  strcpy(buf, argv[1]);
  puts(buf);
  return 0;
}

