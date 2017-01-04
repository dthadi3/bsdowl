### TestLibrary.mk -- Prepare and install a shell library

# Author: Michael Grünewald
# Date: Fri Nov 21 15:39:08 CET 2014

# BSD Owl Scripts (https://github.com/michipili/bsdowl)
# This file is part of BSD Owl Scripts
#
# Copyright © 2002–2016 Michael Grünewald. All Rights Reserved.
#
# This file must be used under the terms of the BSD license.
# This source file is licensed as described in the file LICENSE, which
# you should have received as part of this distribution.

TEST_DESCRIPTION=	Simple shell library
TEST_SOURCEDIR=		example/script/shell/selftest
TEST_SEQUENCE=		preparatives all install

test:
	test -f ${DESTDIR}${SHAREDIR}/libselftest.subr
	test -f ${DESTDIR}${MANDIR}/man3/libselftest.3.gz

### End of file `TestLibrary.mk'
