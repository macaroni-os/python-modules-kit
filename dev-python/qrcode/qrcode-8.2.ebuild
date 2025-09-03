# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="poetry"
inherit distutils-r1

DESCRIPTION="QR Code image generator"
HOMEPAGE="https://github.com/lincolnloop/python-qrcode"
SRC_URI="https://files.pythonhosted.org/packages/8f/b2/7fc2931bfae0af02d5f53b174e9cf701adbb35f39d69c2af63d4a39f81a9/qrcode-8.2.tar.gz -> qrcode-8.2.tar.gz
"
DEPEND=">=dev-python/pillow-9.1.0[${PYTHON_USEDEP}]
"
RDEPEND="
>=dev-python/pillow-9.1.0[${PYTHON_USEDEP}]
"
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/qrcode-8.2"
