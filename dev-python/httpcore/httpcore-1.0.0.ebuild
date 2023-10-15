# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="hatchling"
inherit distutils-r1

DESCRIPTION="A minimal low-level HTTP client."
HOMEPAGE=" https://pypi.org/project/httpcore/"
SRC_URI="https://files.pythonhosted.org/packages/c9/c3/e6ca2cd3f218c847393287cd31739f841ba0fa3b90ace96db252b9e2013a/httpcore-1.0.0.tar.gz -> httpcore-1.0.0.tar.gz
"

DEPEND=""
RDEPEND="
	dev-python/h11[${PYTHON_USEDEP}]
	dev-python/sniffio[${PYTHON_USEDEP}]
	dev-python/anyio[${PYTHON_USEDEP}]
	dev-python/certifi[${PYTHON_USEDEP}]
	dev-python/h2[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/httpcore-1.0.0"