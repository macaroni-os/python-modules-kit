# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="hatchling"
inherit distutils-r1

DESCRIPTION="Python interpreter discovery"
HOMEPAGE="https://github.com/tox-dev/python-discovery"
SRC_URI="https://files.pythonhosted.org/packages/04/b7/1581a8103855c43567776aa34135e5ec3c597346c23bfd10c7eb5e0b10a4/python_discovery-1.5.1.tar.gz -> python_discovery-1.5.1.tar.gz
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
S="${WORKDIR}/python_discovery-1.5.1"
