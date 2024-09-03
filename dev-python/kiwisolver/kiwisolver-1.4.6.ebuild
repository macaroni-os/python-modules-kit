# Distributed under the terms of the GNU General Public License v2

EAPI=7
PYTHON_COMPAT=( python3+ )

inherit distutils-r1

DESCRIPTION="An efficient C++ implementation of the Cassowary constraint solving algorithm"
HOMEPAGE="https://github.com/nucleic/kiwi"
SRC_URI="https://files.pythonhosted.org/packages/52/bd/e54734b47fa63b52e34bad5b60e6842628b9a47c14254c5557f2a4b37b2e/kiwisolver-1.4.6.tar.gz -> kiwisolver-1.4.6.tar.gz"

LICENSE="Clear-BSD"
SLOT="0"
KEYWORDS="*"

RDEPEND="
	>=dev-python/cppy-1.1.0[${PYTHON_USEDEP}]
"

distutils_enable_tests pytest