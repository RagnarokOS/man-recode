# Makefile for man-recode
# $Ragnarok: Makefile,v 1.2 2024/06/06 16:30:57 lecorbeau Exp $

VERSION  =	2.11.2
REVISION =	2
NAME	 =	man-db_${VERSION}-${REVISION}_amd64.deb

# This is a hack, but I'm not modifying the man-db deb src and the whole
# package just for man-recode. It's already built the Debian, so let's
# use it.
all:
	apt-get download man-db
	/usr/bin/dpkg-deb -R ${NAME} .
	/usr/bin/equivs-build man-recode.pkg 2>&1 | /usr/bin/tee man-recode-${VERSION}-${REVISION}.build

clean:
	/usr/bin/rm -r DEBIAN etc lib usr var
	/usr/bin/rm ${NAME}
