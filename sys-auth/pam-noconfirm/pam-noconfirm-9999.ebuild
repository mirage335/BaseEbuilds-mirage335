# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-vcs/git/git-1.9.2.ebuild,v 1.1 2014/04/09 23:59:31 robbat2 Exp $
# Modified for another purpose by mirage335, under same copyright as above.

EAPI=5

EGIT_REPO_URI="https://github.com/mirage335/bashrc-mirage335.git"

inherit git-2 eutils

DESCRIPTION="Removes previous login configuration."
HOMEPAGE="https://forums.gentoo.org/viewtopic-t-944276-start-0.html"
SRC_URI=""
KEYWORDS="*"

LICENSE="MIT"
SLOT="0"
IUSE=""

pkg_postinst() {
	einfo "Global bashrc inclusion found, uninstalling."
	grep -v "pam_lastlog.so" "${ROOT}"/etc/pam.d/system-login > "${ROOT}"/etc/pam.d/system-login.temp
	mv "${ROOT}"/etc/pam.d/system-login.temp "${ROOT}"/etc/pam.d/system-login
}
