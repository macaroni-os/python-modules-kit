# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Library to parse gdb mi output and interact with gdb subprocesses"
HOMEPAGE="https://cs01.github.io/pygdbmi/
https://github.com/cs01/pygdbmi/
https://pypi.org/project/pygdbmi/
"
SRC_URI="https://files.pythonhosted.org/packages/2a/d0/d386ad42b12b90e60293c56a3b793910f34aa21c63f7ddc8a857e498d458/pygdbmi-0.11.0.0.tar.gz -> pygdbmi-0.11.0.0.tar.gz
"
RDEPEND=">=sys-devel/gdb-9.6
"
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/pygdbmi-0.11.0.0"
