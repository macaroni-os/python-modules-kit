# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="hatchling"
inherit distutils-r1

DESCRIPTION="Python interpreter discovery"
HOMEPAGE="https://github.com/tox-dev/python-discovery"
SRC_URI="https://files.pythonhosted.org/packages/66/26/8b004cc36f430345136f6f00fa1aa9ed596c8ed1e8504625fa79522ff39c/python_discovery-1.4.3.tar.gz -> python_discovery-1.4.3.tar.gz
"
DEPEND="


	>=dev-python/filelock-3.15.4[${PYTHON_USEDEP}]
	<dev-python/platformdirs-5[${PYTHON_USEDEP}]
	>=dev-python/platformdirs-4.3.6[${PYTHON_USEDEP}]
"
RDEPEND="

	>=dev-python/filelock-3.15.4[${PYTHON_USEDEP}]
	<dev-python/platformdirs-5[${PYTHON_USEDEP}]
	>=dev-python/platformdirs-4.3.6[${PYTHON_USEDEP}]
"
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/python_discovery-1.4.3"
