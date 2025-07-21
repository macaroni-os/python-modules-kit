# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="None https://pypi.org/project/cppy/"
SRC_URI="https://files.pythonhosted.org/packages/45/ed/b35645a1b285bce356f30cc0fe77a042375c385660ccd61e0cdc4c1f7c44/cppy-1.3.1.tar.gz -> cppy-1.3.1.tar.gz"

DEPEND="
	dev-python/setuptools_scm[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/cppy-1.3.1"