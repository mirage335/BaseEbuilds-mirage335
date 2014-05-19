# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-vcs/git/git-1.9.2.ebuild,v 1.1 2014/04/09 23:59:31 robbat2 Exp $
# Modified for another purpose by mirage335, under same copyright as above.

EAPI=5

DESCRIPTION="Allows localhost to connect to X11."
HOMEPAGE="http://mirage335.dyndns.org"
SRC_URI=""
KEYWORDS="*"

LICENSE="*"
SLOT="0"
IUSE=""

DEPEND="x11-apps/xhost"

src_unpack() {
	mkdir -p ${S}
}

src_install() {
	mkdir -p "${D}"etc/X11/xinit/xinitrc.d/
	cd "${D}"etc/X11/xinit/xinitrc.d/
	
	cp $FILESDIR/* ./
	chmod 755 ./*
	chown root:root ./*
}
