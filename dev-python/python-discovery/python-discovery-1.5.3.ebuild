# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="hatchling"
inherit distutils-r1

DESCRIPTION="Python interpreter discovery"
HOMEPAGE="https://github.com/tox-dev/python-discovery"
SRC_URI="https://files.pythonhosted.org/packages/b2/8f/3c92c45737f654f2488ab3662b7604a55d3d35146d37c9ce80f5c95b95a6/python_discovery-1.5.3.tar.gz -> python_discovery-1.5.3.tar.gz
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
S="${WORKDIR}/python_discovery-1.5.3"
