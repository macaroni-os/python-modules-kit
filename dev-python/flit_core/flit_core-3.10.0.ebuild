# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="standalone"
inherit distutils-r1

DESCRIPTION="Simplified packaging of Python modules (core module)"
HOMEPAGE="None https://pypi.org/project/flit-core/"
SRC_URI="https://files.pythonhosted.org/packages/52/92/89cceb9c49f3e6c72091304636c5ebc2fc48c546742bbf8a6a474e48e666/flit_core-3.10.0.tar.gz -> flit_core-3.10.0.tar.gz"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/flit_core-3.10.0"