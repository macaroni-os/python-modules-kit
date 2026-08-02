# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Python wrapper module around the OpenSSL library"
HOMEPAGE="https://pyopenssl.org/"
SRC_URI="https://files.pythonhosted.org/packages/3f/e8/7325d258199b159eb2c03fe32107533e2832e70e63f4fb88a6aa00023201/pyopenssl-26.4.0.tar.gz -> pyopenssl-26.4.0.tar.gz
"
DEPEND="


	<dev-python/cryptography-51[${PYTHON_USEDEP}]
	>=dev-python/cryptography-49.0.0[${PYTHON_USEDEP}]
	>=dev-python/typing-extensions-4.9[${PYTHON_USEDEP}]
"
RDEPEND="

	<dev-python/cryptography-51[${PYTHON_USEDEP}]
	>=dev-python/cryptography-49.0.0[${PYTHON_USEDEP}]
	>=dev-python/typing-extensions-4.9[${PYTHON_USEDEP}]
"
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"
S="${WORKDIR}/pyopenssl-26.4.0"
