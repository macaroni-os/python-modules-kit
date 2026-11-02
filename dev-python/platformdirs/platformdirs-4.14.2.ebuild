# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="hatchling"
inherit distutils-r1

DESCRIPTION="A small Python package for determining appropriate platform-specific dirs"
HOMEPAGE="https://github.com/tox-dev/platformdirs"
SRC_URI="https://files.pythonhosted.org/packages/6e/4e/2684728d9f2c8c4110738dcadca7e0bed4b60c8dc68c40c2a9e0cf017900/platformdirs-4.14.2.tar.gz -> platformdirs-4.14.2.tar.gz
"
LICENSE=""
SLOT="0"
KEYWORDS="*"
BDEPEND="dev-python/hatch-vcs[${PYTHON_USEDEP}]
"
S="${WORKDIR}/platformdirs-4.14.2"
