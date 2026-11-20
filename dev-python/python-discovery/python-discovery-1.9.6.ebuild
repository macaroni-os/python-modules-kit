# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="hatchling"
inherit distutils-r1

DESCRIPTION="Python interpreter discovery"
HOMEPAGE="https://github.com/tox-dev/python-discovery"
SRC_URI="https://files.pythonhosted.org/packages/cb/4e/20a9c45c4bb839e6e03e5971a546c623d12f950aa496cf344dc8e9f07167/python_discovery-1.9.6.tar.gz -> python_discovery-1.9.6.tar.gz
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
S="${WORKDIR}/python_discovery-1.9.6"
