# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Automagic shell tab completion for Python CLI applications"
HOMEPAGE="https://github.com/iterative/shtab/"
SRC_URI="https://files.pythonhosted.org/packages/ef/71/ddb3c0a7a86db44d2fb3f9cbac162f7ddbcbf563b4a174963ba2b3d4d819/shtab-1.12.1.tar.gz -> shtab-1.12.1.tar.gz
"
LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="*"
BDEPEND="dev-python/setuptools_scm[${PYTHON_USEDEP}]
"
S="${WORKDIR}/shtab-1.12.1"
