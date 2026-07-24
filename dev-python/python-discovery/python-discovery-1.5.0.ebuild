# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="hatchling"
inherit distutils-r1

DESCRIPTION="Python interpreter discovery"
HOMEPAGE="https://github.com/tox-dev/python-discovery"
SRC_URI="https://files.pythonhosted.org/packages/f1/51/276f964496a5714ab9f320896195639086881c2b39c03b5ad13de84acbb8/python_discovery-1.5.0.tar.gz -> python_discovery-1.5.0.tar.gz
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
S="${WORKDIR}/python_discovery-1.5.0"
