# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-vcs/git/git-1.9.2.ebuild,v 1.1 2014/04/09 23:59:31 robbat2 Exp $
# Modified for another purpose by mirage335, under same copyright as above.

EAPI=5

DESCRIPTION="Reconfigures KDM to drop the nolisten tcp X11 server args."
HOMEPAGE="http://mirage335.dyndns.org"
SRC_URI=""
KEYWORDS="*"

LICENSE="*"
SLOT="0"
IUSE=""

DEPEND="kde-base/kdm"

pkg_postinst() {
	einfo "Removing nolisten tcp args. ."
	sed -i 's/\-nolisten\ tcp//g' "${ROOT}"usr/share/config/kdm/kdmrc
}
