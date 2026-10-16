# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="hatchling"
inherit distutils-r1

DESCRIPTION="Python interpreter discovery"
HOMEPAGE="https://github.com/tox-dev/python-discovery"
SRC_URI="https://files.pythonhosted.org/packages/38/b7/ac44da2cf0e53ada0e419033c2d058219c95dc1403126f163304c9e814b1/python_discovery-1.5.2.tar.gz -> python_discovery-1.5.2.tar.gz
"
DEPEND="

>=dev-python/filelock-3.15.4[${PYTHON_USEDEP}]
"
RDEPEND="
>=dev-python/filelock-3.15.4[${PYTHON_USEDEP}]
"
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/python_discovery-1.5.2"
