# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-vcs/git/git-1.9.2.ebuild,v 1.1 2014/04/09 23:59:31 robbat2 Exp $
# Modified for another purpose by mirage335, under same copyright as above.

EAPI=5

DESCRIPTION="Desktop switching based on xbindkeysrc and wmctrl."
HOMEPAGE="mirage335.dyndns.org"
SRC_URI=""
KEYWORDS="*"

LICENSE="*"
SLOT="0"
IUSE=""

DEPEND="x11-misc/xbindkeys x11-misc/wmctrl"

src_unpack() {
	mkdir -p ${S}
}

src_install() {
	mkdir -p "${D}"etc/X11/xinit/xinitrc.d/
	cd "${D}"etc/X11/xinit/xinitrc.d/
	
	cp $FILESDIR/20-xbindkeys ./
	chmod 755 ./20-xbindkeys
	chown root:root ./20-xbindkeys
	
	#####
	
	mkdir -p "${D}"etc/skel/
	cd "${D}"etc/skel/
	
	cp $FILESDIR/.xbindkeysrc ./
	chmod 644 ./.xbindkeysrc
	chown root:root ./.xbindkeysrc
	
	einfo "Installed file .xbindkeysrc to /etc/skel . Copy /etc/skel/.xbindkeysrc to the corresponding home for any existing users."
}