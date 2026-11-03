# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="hatchling"
inherit distutils-r1

DESCRIPTION="Python interpreter discovery"
HOMEPAGE="https://github.com/tox-dev/python-discovery"
SRC_URI="https://files.pythonhosted.org/packages/e9/a2/c98905e39dfe464612b8032014fbe7b8b6e939217cd705d0152b981aeba6/python_discovery-1.9.1.tar.gz -> python_discovery-1.9.1.tar.gz
"
LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
RDEPEND="
>=dev-python/filelock-3.16.1[${PYTHON_USEDEP}]
"
DEPEND="

>=dev-python/filelock-3.16.1[${PYTHON_USEDEP}]
"
S="${WORKDIR}/python_discovery-1.9.1"
