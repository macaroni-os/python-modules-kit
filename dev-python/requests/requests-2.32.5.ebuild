# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Python HTTP for Humans."
HOMEPAGE="https://requests.readthedocs.io"
SRC_URI="https://files.pythonhosted.org/packages/c9/74/b3ff8e6c8446842c3f5c837e9c3dfcfe2018ea6ecef224c710c85ef728f4/requests-2.32.5.tar.gz -> requests-2.32.5.tar.gz
"
DEPEND="
	>=dev-python/certifi-2017.4.17[${PYTHON_USEDEP}]
	dev-python/chardet[${PYTHON_USEDEP}]
	dev-python/idna[${PYTHON_USEDEP}]
	dev-python/urllib3[${PYTHON_USEDEP}]
	dev-python/charset_normalizer[${PYTHON_USEDEP}]
	socks5? ( >=dev-python/PySocks-1.5.6[${PYTHON_USEDEP}] )
	ssl? ( >=dev-python/cryptography-1.3.4[${PYTHON_USEDEP}] )
	ssl? ( >=dev-python/pyopenssl-0.14[${PYTHON_USEDEP}] )
"
RDEPEND="

	>=dev-python/certifi-2017.4.17[${PYTHON_USEDEP}]
	dev-python/chardet[${PYTHON_USEDEP}]
	dev-python/idna[${PYTHON_USEDEP}]
	dev-python/urllib3[${PYTHON_USEDEP}]
	dev-python/charset_normalizer[${PYTHON_USEDEP}]
	socks5? ( >=dev-python/PySocks-1.5.6[${PYTHON_USEDEP}] )
	ssl? ( >=dev-python/cryptography-1.3.4[${PYTHON_USEDEP}] )
	ssl? ( >=dev-python/pyopenssl-0.14[${PYTHON_USEDEP}] )
"
IUSE="socks5 +ssl"
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"
S="${WORKDIR}/requests-2.32.5"
