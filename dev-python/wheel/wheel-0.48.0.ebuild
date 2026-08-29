# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="flit"
inherit distutils-r1

DESCRIPTION="Command line tool for manipulating wheel files, as defined in PEP 427"
HOMEPAGE="https://github.com/pypa/wheel/ https://pypi.org/project/wheel/"
SRC_URI="https://files.pythonhosted.org/packages/d0/20/50ed6bdf27dec98b568a8ae25dc599f35baa3d9709f9e83fd1edb56b9a90/wheel-0.48.0.tar.gz -> wheel-0.48.0.tar.gz
"
RDEPEND="
dev-python/packaging[${PYTHON_USEDEP}]
"
BDEPEND="dev-python/packaging[${PYTHON_USEDEP}]
"
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/wheel-0.48.0"
