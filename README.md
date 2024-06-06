# man-recode

This repository builds a package that contains the man-recode binary and
libman.so taken directly from the man-db .deb package.

## Why

Ragnarok uses mandoc by default, and no compromise will be made in that
regard. However, debhelper(7)'s `dh_installman` uses `man-recode` when
building .deb packages, which means that up until now, packages could
not be built on a full Ragnarok system. Although building packages on
main systems is highly discouraged (for security reasons primarily), it
should be possible to do so on dedicated systems with a full Ragnarok
install, be it in a Virtual Machine or bare metal.

With this man-recode package, the problem is solved.
