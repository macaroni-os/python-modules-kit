# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="JSON Web Token implementation in Python"
HOMEPAGE="https://github.com/jpadilla/pyjwt"
SRC_URI="https://files.pythonhosted.org/packages/43/ea/5194e52748b0da83d71e082d75496eaec6e58f419f5e184786ded517e6a9/pyjwt-2.15.1.tar.gz -> pyjwt-2.15.1.tar.gz
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
S="${WORKDIR}/pyjwt-2.15.1"
