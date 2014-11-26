### metapost.doc.mk -- Prepare pictures with METAPOST

# Author: Michael Grünewald
# Date: Wed Nov 26 19:21:34 CET 2014

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

# PACKAGE=		linalg
# MPDEVICE=		eps svg pdf
#
# DOCUMENT=		figure1
# DOCUMENT+=		figure2
# DOCUMENT+=		figure3
#
# SRCS=			macro.mp
# SRCS.figure2=		macro2.mp


# Variables:
#
#  MPDEVICE [eps]
#   The METAPOST backend that should be used to produce documents
#
#   Several backends can be simultaneously used. Available backends
#   are eps, svg and pdf.
#
#
#  DOCUMENT [not set]
#   The list of documents to be produced
#
#
#  SRCS [not set]
#   The sources used to produce our document
#
#   This list can contain macro files, TeX files and Metapost files.
#
#
#  MPINPUTS [not set]
#   The list of directories where METAPOST input files are looked up

THISMODULE=		metapost.doc

.if !defined(DOCUMENT)||empty(DOCUMENT)
.error The metapost.doc.mk module expects you to set the DOCUMENT\
	  variable to a sensible value.
.endif

MPDEVICE?=		eps
_PACKAGE_CANDIDATE=	${DOCUMENT}
PRODUCT=		${DOC}

.include "texmf.init.mk"

.for document in ${DOCUMENT}
.if defined(SRCS)
SRCS.${document:T}+=	${SRCS}
.endif
.if exists(${document:T}.mp)&&empty(SRCS.${document:T}:M${document:T}.mp)
SRCS.${document:T}+=	${document:T}.mp
.endif
.endfor

.for document in ${DOCUMENT}
.for device in ${MPDEVICE}
DOC+=			${_MPOST_LIST.${document:T}.mp:.mps=.${device}}
.endfor
.endfor

.include "texmf.build.mk"
.include "texmf.mpost.mk"
.include "texmf.depend.mk"
.include "texmf.clean.mk"
.include "bps.files.mk"
.include "bps.clean.mk"
.include "bps.usertarget.mk"

### End of file `metapost.doc.mk'
