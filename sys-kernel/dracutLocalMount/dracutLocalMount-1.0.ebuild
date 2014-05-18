# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-vcs/git/git-1.9.2.ebuild,v 1.1 2014/04/09 23:59:31 robbat2 Exp $
# Modified for another purpose by mirage335, under same copyright as above.

EAPI=5

DESCRIPTION="Automatically detects and assembles mdadm/lvm devices."
HOMEPAGE="http://rich0gentoo.wordpress.com/2012/01/21/a-quick-dracut-module/"
SRC_URI=""
KEYWORDS="*"

LICENSE="unspecified, possibly CC, fair use, or public domain"
SLOT="0"
IUSE=""

src_unpack() {
	mkdir -p ${S}
}

src_install() {
	mkdir -p "${D}"usr/lib/dracut/modules.d/91local/
	cd "${D}"usr/lib/dracut/modules.d/91local/
	
	cp $FILESDIR/* ./
	chmod 755 ./*
	chown root:root ./*
}