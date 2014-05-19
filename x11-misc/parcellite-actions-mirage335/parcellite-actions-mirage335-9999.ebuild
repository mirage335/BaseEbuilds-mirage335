# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-vcs/git/git-1.9.2.ebuild,v 1.1 2014/04/09 23:59:31 robbat2 Exp $
# Modified for another purpose by mirage335, under same copyright as above.

EAPI=5

DESCRIPTION="Parcellite clipboard actions."
HOMEPAGE="mirage335.dyndns.org"
SRC_URI=""
KEYWORDS="*"

LICENSE="*"
SLOT="0"
IUSE=""

src_unpack() {
	mkdir -p ${S}
}

src_install() {
	mkdir -p "${D}"etc/skel/.local/share/parcellite/
	cd "${D}"etc/skel/.local/share/parcellite/
	
	cp $FILESDIR/* ./
	chmod 644 ./*
	chown root:root ./*
	
	einfo "Parcellite actions installed to /etc/skel . Copy /etc/skel/.local/share/parcellite/actions to the corresponding home for any existing users."
}