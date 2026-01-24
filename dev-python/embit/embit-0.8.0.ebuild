# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="A minimal bitcoin library for MicroPython and Python3 with a focus on embedded systems."
HOMEPAGE=""
SRC_URI="https://files.pythonhosted.org/packages/83/88/b054b00ade6d2a41749e15976cdcec4b7ec4656ac1cb917ce3de395528d1/embit-0.8.0.tar.gz -> embit-0.8.0.tar.gz
"
BDEPEND="dev-python/wheel[${PYTHON_USEDEP}]
"
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/embit-0.8.0"
