### ocaml.uses.mk -- Process module options

# Author: Michael Grünewald
# Date: Sun Nov  9 21:03:07 CET 2014

# BSD Owl Scripts (https://github.com/michipili/bsdowl)
# This file is part of BSD Owl Scripts
#
# Copyright © 2002–2017 Michael Grünewald. All Rights Reserved.
#
# This file must be used under the terms of the BSD license.
# This source file is licensed as described in the file LICENSE, which
# you should have received as part of this distribution.


### SYNOPSIS

### DESCRIPTION

# Variables:
#
#  USES [not set]
#   List of options

.if !defined(THISMODULE)
.error ocaml.uses.mk cannot be included directly.
.endif

.if !target(__<ocaml.uses.mk>__)
__<ocaml.uses.mk>__:

_USES_ocamldoc_VALIDARGS=html odoc

.if !empty(_USES_OPTIONS:Mocamldoc)
.for argument in ${_USES_ocamldoc_ARGS}
.if empty(_USES_ocamldoc_VALIDARGS:M${argument})
.error Incorrect "USES+= ocamldoc:${argument}" usage:\
	  valid arguments are ${_USES_ocamldoc_VALIDARGS}.
.endif
.endfor
.endif

.if !empty(_USES_OPTIONS:Mdynlink)
.if !empty(_USES_ocamldoc_ARGS)
.error Incorrect "USES+= dynlink:${_USES_ocamldoc_ARGS}" usage:\
	  arguments are not allowed.
.endif
_OCAML_COMPILE_PLUGIN=	yes
.endif

.endif # !target(__<ocaml.uses.mk>__)

### End of file `ocaml.uses.mk'
