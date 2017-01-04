### elisp.lib.mk -- Manage Emacs Lisp Directories

# Author: Michael Grünewald
# Date: Fri Feb 10 17:59:16 GMT 2006

# BSD Owl Scripts (https://github.com/michipili/bsdowl)
# This file is part of BSD Owl Scripts
#
# Copyright © 2002–2017 Michael Grünewald. All Rights Reserved.
#
# This file must be used under the terms of the BSD license.
# This source file is licensed as described in the file LICENSE, which
# you should have received as part of this distribution.


### SYNOPSIS

# SRCS+= module1.el
# SRCS+= module2.el
#
# ELISPC.module1.elc = A command to compile my elisp thing
# ELISPMODE.module2.elc = 400
#
# ELISP_INSTALL_SRC.module2.el = no
#
# .include "elisp.lib.mk"


### DESCRIPTION

# Ce module compile et installe des modules EMACS LISP. Le répertoire
# d'installation est déterminé par la valeur de ELISPDIR
# (/share/emacs/site-lisp).
#
# La variable ELISP_INSTALL_SRC (yes) contrôle l'installation des
# fichiers source avec les fichiers byte-code.

FILESGROUPS+= ELISP
ELISP_INSTALL_SRC = yes

ELISPDIR?= ${datarootdir}/emacs/site-lisp
ELISPC?= emacs -batch -f batch-byte-compile

.if defined (SRCS) && !empty(SRCS:M*.el)

ELISP+=		${SRCS:M*.el:.el=.elc}

.for file in ${SRCS:M*.el}

#
# Installation des fichiers sources
#

.if !defined(ELISP_INSTALL_SRC.${file})
ELISP_INSTALL_SRC.${file}=${ELISP_INSTALL_SRC}
.endif

.if ${ELISP_INSTALL_SRC.${file}} == yes
ELISP+=${file}
.endif
.endfor


.for obj in ${SRCS:M*.el:.el=.elc}

#
# Fichiers à nettoyer
#

CLEANFILES+= ${obj}

#
# Calcul de la ligne de compilation
#

.if !defined(ELISPC.${obj})
ELISPC.${obj} = ${ELISPC}
.endif

${obj}: ${obj:.elc=.el}
	${ELISPC.${obj}} ${.ALLSRC}


.endfor

.endif

.include "bps.init.mk"
.include "bps.clean.mk"
.include "bps.files.mk"
.include "bps.usertarget.mk"

### End of file `elisp.lib.mk'
