# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="JSON Web Token implementation in Python"
HOMEPAGE="https://github.com/jpadilla/pyjwt"
SRC_URI="https://files.pythonhosted.org/packages/02/a5/5197bfd06417837ac079921c66fa6393f1dea3557272a263cebfef69e432/pyjwt-2.15.0.tar.gz -> pyjwt-2.15.0.tar.gz
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
S="${WORKDIR}/pyjwt-2.15.0"
