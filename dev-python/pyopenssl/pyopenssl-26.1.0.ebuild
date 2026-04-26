# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Python wrapper module around the OpenSSL library"
HOMEPAGE="https://pyopenssl.org/"
SRC_URI="https://files.pythonhosted.org/packages/8c/a8/26d36401e3ab8eed9030ad33f381da7856fcfad5691780fccd1b019718fc/pyopenssl-26.1.0.tar.gz -> pyopenssl-26.1.0.tar.gz
"
DEPEND="
	<dev-python/cryptography-48[${PYTHON_USEDEP}]
	>=dev-python/cryptography-46.0.0[${PYTHON_USEDEP}]
	>=dev-python/typing-extensions-4.9[${PYTHON_USEDEP}]
"
RDEPEND="

	<dev-python/cryptography-48[${PYTHON_USEDEP}]
	>=dev-python/cryptography-46.0.0[${PYTHON_USEDEP}]
	>=dev-python/typing-extensions-4.9[${PYTHON_USEDEP}]
"
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"
S="${WORKDIR}/pyopenssl-26.1.0"
