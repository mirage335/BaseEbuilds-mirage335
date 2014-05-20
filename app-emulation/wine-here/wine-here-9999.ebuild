# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-vcs/git/git-1.9.2.ebuild,v 1.1 2014/04/09 23:59:31 robbat2 Exp $
# Modified for another purpose by mirage335, under same copyright as above.

EAPI=5

EGIT_REPO_URI="https://github.com/mirage335/PortableWine.git"

inherit git-2 eutils

DESCRIPTION="Global wine bottle template and containment scripts. Part of PortableWine ."
HOMEPAGE="http://mirage335.dyndns.org"
SRC_URI=""
KEYWORDS="*"

LICENSE="GPL-3"
SLOT="0"
IUSE=""

DEPEND="wine"

src_install() {
	mkdir -p "${D}"usr/bin/
	cp "${S}"/wine-here "${S}"/winecfg-here "${D}"usr/bin/
	chmod 755 "${D}"usr/bin/wine-here "${S}"/winecfg-here
}