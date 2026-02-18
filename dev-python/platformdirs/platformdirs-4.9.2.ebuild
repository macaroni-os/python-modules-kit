# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="hatchling"
inherit distutils-r1

DESCRIPTION="A small Python package for determining appropriate platform-specific dirs"
HOMEPAGE="https://github.com/tox-dev/platformdirs"
SRC_URI="https://files.pythonhosted.org/packages/1b/04/fea538adf7dbbd6d186f551d595961e564a3b6715bdf276b477460858672/platformdirs-4.9.2.tar.gz -> platformdirs-4.9.2.tar.gz
"
BDEPEND="dev-python/hatch-vcs[${PYTHON_USEDEP}]
"
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/platformdirs-4.9.2"
