# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-vcs/git/git-1.9.2.ebuild,v 1.1 2014/04/09 23:59:31 robbat2 Exp $
# Modified for another purpose by mirage335, under same copyright as above.

EAPI=5

EGIT_REPO_URI="https://github.com/mirage335/IQEmu.git"

inherit git-2 eutils

DESCRIPTION="Brings reliable point-and-click Microsoft Windows application integration to the linux desktop using virtualizaton, file parameter translation, and wrapper scripts."
HOMEPAGE="http://mirage335.dyndns.org/wiki/IQEmu"
SRC_URI=""
KEYWORDS="*"

LICENSE="MIT"
SLOT="0"
IUSE=""

DEPEND="app-cdr/cdrtools app-emulation/virtualbox app-emulation/virtualbox-extpack-oracle app-shells/ubiquitious_bash"

src_install() {
	mkdir -p "${D}"opt/templates/IQEmu/
	
	cp -a "${S}"/* "${D}"opt/templates/IQEmu/
	
	einfo "Template IQEmu VM scripts installed to /opt/templates/IQEmu/ . Build custom app-specific VMs from that."
}