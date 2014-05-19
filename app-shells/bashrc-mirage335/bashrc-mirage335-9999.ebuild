# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-vcs/git/git-1.9.2.ebuild,v 1.1 2014/04/09 23:59:31 robbat2 Exp $
# Modified for another purpose by mirage335, under same copyright as above.

EAPI=5

EGIT_REPO_URI="https://github.com/mirage335/bashrc-mirage335.git"

inherit git-2 eutils

DESCRIPTION="Includes enhancements for bash prompts."
HOMEPAGE="http://mirage335.dyndns.org"
SRC_URI=""
KEYWORDS="*"

LICENSE="MIT"
SLOT="0"
IUSE=""

pkg_postinst() {
	einfo "Installing global bashrc inclusion."
	if [[ $(grep bashrc-mirage335 "${ROOT}"/etc/bash/bashrc) == "" ]]
	then
		einfo "Global bashrc inclusion not found, updating."
		echo ". /usr/bin/bashrc-mirage335.sh" >> "${ROOT}"etc/bash/bashrc
	fi
}

pkg_prerm() {
	einfo "Uninstalling global bashrc inclusion."
	if [[ $(grep bashrc-mirage335 "${ROOT}"/etc/bash/bashrc) != "" ]]
	then
		einfo "Global bashrc inclusion found, uninstalling."
		grep -v ". /usr/bin/bashrc-mirage335.sh" "${ROOT}"etc/bash/bashrc > "${ROOT}"etc/bash/bashrc.temp
		mv "${ROOT}"etc/bash/bashrc.temp "${ROOT}"etc/bash/bashrc
	fi
}
