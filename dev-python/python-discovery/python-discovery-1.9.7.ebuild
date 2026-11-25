# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="hatchling"
inherit distutils-r1

DESCRIPTION="Python interpreter discovery"
HOMEPAGE="https://github.com/tox-dev/python-discovery"
SRC_URI="https://files.pythonhosted.org/packages/0c/72/8e1d062fa1eed059b49a981394ab3ae26fffea6bbcffa4f7545aa2fb8c4f/python_discovery-1.9.7.tar.gz -> python_discovery-1.9.7.tar.gz
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
S="${WORKDIR}/python_discovery-1.9.7"
