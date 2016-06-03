WWWMAIN?= main.sgml

SRCS+= main.sgml
SRCS+= head-css-global.sgml
SRCS+= more-news.sgml
SRCS+= copyright-statement.sgml

DIRS+= .
DIRS+= ${PROJECTBASE}/style
DIRS+= ${PROJECTBASE}/sgml

SCROLL_INCLUSION = head-css-local
SCROLL_INCLUSION+= more-news
SCROLL_INCLUSION+= more-ilink
SCROLL_INCLUSION+= more-elink
SCROLL_INCLUSION+= more-download

.for inclusion in ${SCROLL_INCLUSION}
.if !empty(SRCS:M${inclusion}.sgml)
INCLUDE+= with.${inclusion}
.endif
.endfor

.include "www.sgml.mk"
