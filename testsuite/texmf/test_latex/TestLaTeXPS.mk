### TestLaTeXPS.mk -- Simple PostScript document using LaTeX

# Author: Michael Grünewald
# Date: Sun Nov 23 16:20:26 CET 2014

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

DOCUMENT=		simple
TEXDEVICE=		ps

test:
	test -f ${DESTDIR}${DOCDIR}/simple.ps

.PATH:			${BSDOWLSRCDIR}/example/texmf/latex

.include "latex.doc.mk"

### End of file `TestLaTeXPS.mk'
