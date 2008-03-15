### tex.texdoc.ps.mk -- R�clame la production de fichiers PostScript

# Author: Micha�l Gr�newald
# Date: Dim  9 sep 2007 14:49:18 CEST
# Lang: fr_FR.ISO8859-15

# $Id$

# Copyright (c) 2006, 2007, 2008, Micha�l Gr�newald
# All rights reserved.
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions
# are met:
#
#    1. Redistributions of source code must retain the above copyright
#    notice, this list of conditions and the following disclaimer.
#
#    2. Redistributions in binary form must reproduce the above
#    copyright notice, this list of conditions and the following
#    disclaimer in the documentation and/or other materials provided
#    with the distribution.
#
#    3. The name of the author may not be used to endorse or promote
#    products derived from this software without specific prior written
#    permission.
#
# THIS SOFTWARE IS PROVIDED BY THE AUTHOR ``AS IS'' AND ANY EXPRESS OR
# IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
# WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
# DISCLAIMED. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY DIRECT,
# INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
# (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
# SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
# HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT,
# STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING
# IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
# POSSIBILITY OF SUCH DAMAGE.

# La production des fichiers PostScript est param�tr�e par
# l'imprimante � laquelle est destin� le fichier. Dees param�tres
# sp�ciaux permettent de cibler la publication �l�ctronique
# (i.e. l'imprimante est un interpr�te PostScript comme GHOSTSCRIPT).

### SYNOPSIS

# PRINTERS = hp920c lex4400
#
# Peuvent appara�tre toutes les imprimantes ayant �t� configur�es avec
# texconfig --- ou d'une autre fa�on.


### R�ALISATION

#
# Augmentation de PRINTERS
#

# Un membre hp920c.ps dans la variable TEXDEVICE ajoute hp920c � la
# variable PRINTERS.

.if !empty(TEXDEVICE:M*.ps:.ps=)
.for printer in ${TEXDEVICE:M*.ps:.ps=}
.if empty(PRINTERS:M${printer})
PRINTERS+= ${printer}
.endif
.endfor
.endif

#
# R�clamation de fichiers
#

.for doc in ${_TEX_DOC}
.for device in ${TEXDEVICE:M*ps}
_TEX_PS+= ${doc}.${device}
_TEX_DVI+= ${doc}.${device}.dvi
_TEX_SRC.${doc}.${device}.dvi = ${doc}.tex
JOBNAME.${doc}.${device}.dvi = ${doc}.${device}
.endfor
.endfor


#
# Build and install files
#

.if !empty(TEXDEVICE:M*ps)
.for device in ${TEXDEVICE:M*ps}
DOCUMENT+= ${_TEX_DOC:=.${device}}
.endfor
.endif

### End of file `tex.device.ps.mk'
