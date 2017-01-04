### TestLibraryDoc.mk -- Produce a simple library with ocamldoc documentation

# Author: Michael Grünewald
# Date: Sat Nov 29 14:47:24 CET 2014

# BSD Owl Scripts (https://github.com/michipili/bsdowl)
# This file is part of BSD Owl Scripts
#
# Copyright © 2002–2016 Michael Grünewald. All Rights Reserved.
#
# This file must be used under the terms of the BSD license.
# This source file is licensed as described in the file LICENSE, which
# you should have received as part of this distribution.

TEST_DESCRIPTION=	Simple OCaml library using ocamldoc
TEST_SOURCEDIR=		example/ocaml/newton
TEST_SEQUENCE=		preparatives all install

USES+=			ocamldoc:odoc,html

test:
	test -f ${DESTDIR}${LIBDIR}/newton.cma
	test -f ${DESTDIR}${LIBDIR}/newton.cmi
	test -f ${DESTDIR}${DOCDIR}/html/index.html
	test -f ${.OBJDIR}/newton.odoc

### End of file `TestLibraryDoc.mk'
