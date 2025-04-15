# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Deal PySol FreeCell cards"
HOMEPAGE="https://github.com/shlomif/pysol_cards/
https://pypi.org/project/pysol-cards/
"
SRC_URI="https://files.pythonhosted.org/packages/a7/9c/b4a1263fddf08b08f27cd7ed0faf596e2494c4293bd9258de0d69625a9ec/pysol_cards-0.18.1.tar.gz -> pysol_cards-0.18.1.tar.gz"

DEPEND=""
RDEPEND="
	dev-python/random2[${PYTHON_USEDEP}]
	dev-python/six[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/pysol_cards-0.18.1"