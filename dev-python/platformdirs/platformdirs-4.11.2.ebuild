# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="hatchling"
inherit distutils-r1

DESCRIPTION="A small Python package for determining appropriate platform-specific dirs"
HOMEPAGE="https://github.com/tox-dev/platformdirs"
SRC_URI="https://files.pythonhosted.org/packages/e5/98/0bf930c4f97d0266b58a89e36c015f56232c52b5d2f207215d48cca9e8f7/platformdirs-4.11.2.tar.gz -> platformdirs-4.11.2.tar.gz
"
BDEPEND="dev-python/hatch-vcs[${PYTHON_USEDEP}]
"
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/platformdirs-4.11.2"
