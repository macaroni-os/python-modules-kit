# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7
PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="https://github.com/DiosDelRayo/polyseed-python"
SRC_URI="https://api.github.com/repos/DiosDelRayo/polyseed-python/tarball/refs/tags/v0.2.2 -> polyseed-0.2.2-8a61feb.tar.gz"
LICENSE="NOASSERTION"
SLOT="0"
KEYWORDS="*"

post_src_unpack() {
	mv DiosDelRayo-polyseed-python-* ${S}
}



# vim: filetype=ebuild
