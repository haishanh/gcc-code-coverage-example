#include <stdio.h>
#include <string.h>
#include "say.h"

int main(int argc, char* argv[])
{
  if (argc > 1) {
    if ( 0 == strcmp("h", argv[1])) {
      say_hello();
    }
    else {
      say_bye();
    }
    return 0;
  }
  say_hello();
  say_bye();
  return 0;
}
