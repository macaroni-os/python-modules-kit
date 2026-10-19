# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="hatchling"
inherit distutils-r1

DESCRIPTION="A small Python package for determining appropriate platform-specific dirs"
HOMEPAGE="https://github.com/tox-dev/platformdirs"
SRC_URI="https://files.pythonhosted.org/packages/b7/89/dfd269de936e76319cf27787d9eaaca513491f635d49b0fbe7cdb6d3bf6f/platformdirs-4.13.4.tar.gz -> platformdirs-4.13.4.tar.gz
"
LICENSE=""
SLOT="0"
KEYWORDS="*"
BDEPEND="dev-python/hatch-vcs[${PYTHON_USEDEP}]
"
S="${WORKDIR}/platformdirs-4.13.4"
