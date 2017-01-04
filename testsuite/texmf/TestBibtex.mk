### TestBibtex.mk -- Test bibtex support

# Author: Michael Grünewald
# Date: Thu Nov 27 09:34:30 CET 2014

# BSD Owl Scripts (https://github.com/michipili/bsdowl)
# This file is part of BSD Owl Scripts
#
# Copyright © 2002–2016 Michael Grünewald. All Rights Reserved.
#
# This file must be used under the terms of the BSD license.
# This source file is licensed as described in the file LICENSE, which
# you should have received as part of this distribution.

TEST_DESCRIPTION=	LaTeX document with BibTeX generated bibliography
TEST_SOURCEDIR=		example/texmf/bibtex

.if "${WITH_TESTSUITE_TEXMF}" == "yes"
TEST_SEQUENCE=		preparatives all install
.else
TEST_SEQUENCE=		IGNORE
.endif

test:
	test -f ${DESTDIR}${DOCDIR}/galley.pdf

### End of file `TestBibtex.mk'
