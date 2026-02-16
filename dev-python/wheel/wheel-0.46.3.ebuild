# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="flit"
inherit distutils-r1

DESCRIPTION="Command line tool for manipulating wheel files, as defined in PEP 427"
HOMEPAGE="https://github.com/pypa/wheel/ https://pypi.org/project/wheel/"
SRC_URI="https://files.pythonhosted.org/packages/89/24/a2eb353a6edac9a0303977c4cb048134959dd2a51b48a269dfc9dde00c8a/wheel-0.46.3.tar.gz -> wheel-0.46.3.tar.gz
"
RDEPEND="
dev-python/packaging[${PYTHON_USEDEP}]
"
BDEPEND="dev-python/packaging[${PYTHON_USEDEP}]
"
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/wheel-0.46.3"
