# Copyright mirage335
# Distributed under the terms of the GNU General Public License v3
# $Header: $

EAPI=4

inherit base cmake-utils fdo-mime python

DESCRIPTION="GNURadio Block to pipe data through other programs."

HOMEPAGE="https://github.com/jolivain/gr-pipe"

EGIT_REPO_URI="git://github.com/jolivain/gr-pipe.git"
inherit git-2

IUSE=""
SLOT="0"
LICENSE="GPL-3"
KEYWORDS="x86"
DEPEND="net-wireless/gnuradio"

