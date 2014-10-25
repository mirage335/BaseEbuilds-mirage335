# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="3"

inherit multilib autotools toolchain-funcs

DESCRIPTION="Calculate GCode from given PCB layouts"
HOMEPAGE="http://sourceforge.net/apps/mediawiki/pcb2gcode/"
#SRC_URI="mirror://sourceforge/${PN}/${P}.tar.gz"
EGIT_REPO_URI="git://pcb2gcode.git.sourceforge.net/gitroot/pcb2gcode/pcb2gcode"

inherit git-2

#RESTRICT="nomirror"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="sci-electronics/gerbv"
DEPEND="${RDEPEND}"


src_configure() {
libtoolize && aclocal && automake --add-missing && autoreconf && ./configure
}

src_install() {
	exeinto /usr/bin
	doexe pcb2gcode

	doman man/pcb2gcode.1

	dodoc AUTHORS ChangeLog COPYING INSTALL NEWS README
}
