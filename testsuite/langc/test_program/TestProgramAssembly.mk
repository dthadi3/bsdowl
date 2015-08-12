### TestProgramAssembly.mk -- The obnoxious hello world program

# Author: Michael Grünewald
# Date: Thu Nov 20 11:56:52 CET 2014

# BSD Owl Scripts (https://github.com/michipili/bsdowl)
# This file is part of BSD Owl Scripts
#
# Copyright © 2005–2014 Michael Grünewald
#
# This file must be used under the terms of the CeCILL-B.
# This source file is licensed as described in the file COPYING, which
# you should have received as part of this distribution. The terms
# are also available at
# http://www.cecill.info/licences/Licence_CeCILL-B_V1-en.txt

PROGRAM=		hello_world

SRCS=			hello_world.c
SRCS+=			garbage.s

DIRS=			${BSDOWLSRCDIR}/example/langc/hello_world
.PATH:			${DIRS}

test:
	test -x ${DESTDIR}${BINDIR}/hello_world
	test -f ${DESTDIR}${MANDIR}/man1/hello_world.1.gz
	grep -q 'Garbage' ${DESTDIR}${BINDIR}/hello_world

.include "langc.prog.mk"

### End of file `TestProgramAssembly.mk'
