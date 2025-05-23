# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Deal PySol FreeCell cards"
HOMEPAGE="https://github.com/shlomif/pysol_cards/
https://pypi.org/project/pysol-cards/
"
SRC_URI="https://files.pythonhosted.org/packages/b9/54/d9f1be400d4c0255871e7ff0100460d2d744c1a5102384c37f2a09bf9506/pysol_cards-0.22.0.tar.gz -> pysol_cards-0.22.0.tar.gz"

DEPEND=""
RDEPEND="
	dev-python/random2[${PYTHON_USEDEP}]
	dev-python/six[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/pysol_cards-0.22.0"