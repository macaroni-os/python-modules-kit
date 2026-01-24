# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7
PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="A comprehensive Python module for handling Monero cryptocurrency"
HOMEPAGE="https://github.com/DiosDelRayo/monero-python"
SRC_URI="https://api.github.com/repos/DiosDelRayo/monero-python/tarball/refs/tags/v1.2.4 -> monero-1.2.4-365d1e2.tar.gz"
LICENSE="BSD-3-Clause"
SLOT="0"
KEYWORDS="*"
# Commons depends
CDEPEND=">=dev-python/pycryptodomex-3.14
	dev-python/pynacl[${PYTHON_USEDEP}]
	dev-python/PySocks[${PYTHON_USEDEP}]
	dev-python/requests[${PYTHON_USEDEP}]
	dev-python/ipaddress[${PYTHON_USEDEP}]
	
"
RDEPEND="${CDEPEND}
"
DEPEND="${CDEPEND}
"

post_src_unpack() {
	mv DiosDelRayo-monero-python-* ${S}
}



# vim: filetype=ebuild
