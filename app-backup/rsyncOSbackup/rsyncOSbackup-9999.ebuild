# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-vcs/git/git-1.9.2.ebuild,v 1.1 2014/04/09 23:59:31 robbat2 Exp $
# Modified for another purpose by mirage335, under same copyright as above.

EAPI=5

DESCRIPTION="Provides low level functions useful in many bash scripts."
HOMEPAGE="http://mirage335.dyndns.org"
SRC_URI=""
KEYWORDS="*"

LICENSE="MIT"
SLOT="0"
IUSE=""

DEPEND="net-misc/rsync app-shells/ubiquitious_bash"

src_unpack() {
	mkdir -p ${S}
}

src_install() {
	mkdir -p "${D}"usr/bin/
	cd "${D}"usr/bin/
	
	cp $FILESDIR/rsyncBackup.sh ./
	chmod 755 ./rsyncBackup.sh
	chown root:root ./rsyncBackup.sh
}