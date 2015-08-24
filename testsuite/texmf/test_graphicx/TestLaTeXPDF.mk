### TestLaTeXPDF.mk -- PDF document with figures using LaTeX

# Author: Michael Grünewald
# Date: Sun Nov 23 17:58:17 CET 2014

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

DOCUMENT=		illustrated
TEXDEVICE=		pdf

SRCS=			illustrated.tex
SRCS+=			square.mp

test:
	test -f ${DESTDIR}${DOCDIR}/illustrated.pdf

.PATH:			${BSDOWLSRCDIR}/example/texmf/graphicx

.include "latex.doc.mk"

### End of file `TestLaTeXPDF.mk'
