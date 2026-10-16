# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="JSON Web Token implementation in Python"
HOMEPAGE="https://github.com/jpadilla/pyjwt"
SRC_URI="https://files.pythonhosted.org/packages/3b/81/58d0ac84e1ef3a3843791d6954d94c0b33d526c75eeb1efbce9d0a4c4077/pyjwt-2.13.0.tar.gz -> pyjwt-2.13.0.tar.gz
"
LICENSE=""
SLOT="0"
KEYWORDS="*"
BDEPEND="
	dev-python/cryptography[${PYTHON_USEDEP}]
	dev-python/typing-extensions[${PYTHON_USEDEP}]
"
RDEPEND="

	dev-python/cryptography[${PYTHON_USEDEP}]
	dev-python/typing-extensions[${PYTHON_USEDEP}]
"
S="${WORKDIR}/pyjwt-2.13.0"
