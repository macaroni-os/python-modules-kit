# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="hatchling"
inherit distutils-r1

DESCRIPTION="The next generation HTTP client."
HOMEPAGE="None https://pypi.org/project/httpx/"
SRC_URI="https://files.pythonhosted.org/packages/67/78/d716ef978b5c5b25b50c5ad9ed39b5e83c1e653cbcd86122a9a73814264c/httpx-0.27.1.tar.gz -> httpx-0.27.1.tar.gz"

DEPEND="dev-python/hatch-fancy-pypi-readme[${PYTHON_USEDEP}]"
RDEPEND="
	dev-python/certifi[${PYTHON_USEDEP}]
	dev-python/httpcore[${PYTHON_USEDEP}]
	dev-python/sniffio[${PYTHON_USEDEP}]
	dev-python/idna[${PYTHON_USEDEP}]
	dev-python/h2[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/httpx-0.27.1"