### TestBibtex.mk -- Test bibtex support

# Author: Michael Grünewald
# Date: Thu Nov 27 09:34:30 CET 2014

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

DOCUMENT=		galley.tex
TEXDEVICE=		pdf
USES+=			bibtex

test:
	test -f ${DESTDIR}${DOCDIR}/withbibtex.pdf

.PATH:			${BSDOWLSRCDIR}/example/texmf/bibtex

.include "latex.doc.mk"

### End of file `TestBibtex.mk'
