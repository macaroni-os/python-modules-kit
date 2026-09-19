# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="hatchling"
inherit distutils-r1

DESCRIPTION="Python interpreter discovery"
HOMEPAGE="https://github.com/tox-dev/python-discovery"
SRC_URI="https://files.pythonhosted.org/packages/91/96/0f93e27c9f60a650838f2118159aa115fd5732c0716247917b7ba7ede665/python_discovery-1.6.0.tar.gz -> python_discovery-1.6.0.tar.gz
"
LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
RDEPEND="
>=dev-python/filelock-3.15.4[${PYTHON_USEDEP}]
"
DEPEND="

>=dev-python/filelock-3.15.4[${PYTHON_USEDEP}]
"
S="${WORKDIR}/python_discovery-1.6.0"
