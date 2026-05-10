# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Python wrapper module around the OpenSSL library"
HOMEPAGE="https://pyopenssl.org/"
SRC_URI="https://files.pythonhosted.org/packages/1a/51/27a5ad5f939d08f690a326ef9582cda7140555180db71695f6fb747d6a36/pyopenssl-26.2.0.tar.gz -> pyopenssl-26.2.0.tar.gz
"
DEPEND="


	<dev-python/cryptography-49[${PYTHON_USEDEP}]
	>=dev-python/cryptography-46.0.0[${PYTHON_USEDEP}]
	>=dev-python/typing-extensions-4.9[${PYTHON_USEDEP}]
"
RDEPEND="

	<dev-python/cryptography-49[${PYTHON_USEDEP}]
	>=dev-python/cryptography-46.0.0[${PYTHON_USEDEP}]
	>=dev-python/typing-extensions-4.9[${PYTHON_USEDEP}]
"
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"
S="${WORKDIR}/pyopenssl-26.2.0"
