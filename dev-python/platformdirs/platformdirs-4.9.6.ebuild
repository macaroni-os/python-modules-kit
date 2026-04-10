# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="hatchling"
inherit distutils-r1

DESCRIPTION="A small Python package for determining appropriate platform-specific dirs"
HOMEPAGE="https://github.com/tox-dev/platformdirs"
SRC_URI="https://files.pythonhosted.org/packages/9f/4a/0883b8e3802965322523f0b200ecf33d31f10991d0401162f4b23c698b42/platformdirs-4.9.6.tar.gz -> platformdirs-4.9.6.tar.gz
"
BDEPEND="dev-python/hatch-vcs[${PYTHON_USEDEP}]
"
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/platformdirs-4.9.6"
