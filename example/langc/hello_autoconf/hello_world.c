/* hello_world.c -- The obnoxious hello world program
BSD Owl Scripts (https://github.com/michipili/bsdowl)
This file is part of BSD Owl Scripts

Copyright © 2002–2017 Michael Grünewald. All Rights Reserved.

This file must be used under the terms of the BSD license.
This source file is licensed as described in the file LICENSE, which
you should have received as part of this distribution. */

#include <stdlib.h>
#include <stdio.h>

void print_config();

int
main(void)
{
  printf("Hello, World!\n");
  print_config();
}
