# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="hatchling"
inherit distutils-r1

DESCRIPTION="Python interpreter discovery"
HOMEPAGE="https://github.com/tox-dev/python-discovery"
SRC_URI="https://files.pythonhosted.org/packages/de/ef/3bae0e537cfe91e8431efcba4434463d2c5a65f5a89edd47c6cf2f03c55f/python_discovery-1.2.2.tar.gz -> python_discovery-1.2.2.tar.gz
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
S="${WORKDIR}/python-discovery-1.2.2"
