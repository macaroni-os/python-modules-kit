# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="hatchling"
inherit distutils-r1

DESCRIPTION="Python interpreter discovery"
HOMEPAGE="https://github.com/tox-dev/python-discovery"
SRC_URI="https://files.pythonhosted.org/packages/0f/d7/1e94df7d1636bf00b9f261bf88a4adc0414f14931ff60511eb0f34c250d1/python_discovery-1.9.4.tar.gz -> python_discovery-1.9.4.tar.gz
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
S="${WORKDIR}/python_discovery-1.9.4"
