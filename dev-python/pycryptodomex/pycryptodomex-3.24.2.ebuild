# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Cryptographic library for Python"
HOMEPAGE="https://www.pycryptodome.org"
SRC_URI="https://files.pythonhosted.org/packages/f3/c2/f5855412372e47d635599a97c00cfcf9fc40accac9436a11bf9ded19f859/pycryptodomex-3.24.2.tar.gz -> pycryptodomex-3.24.2.tar.gz
"
LICENSE="BSD"
SLOT="0"
KEYWORDS="*"
S="${WORKDIR}/pycryptodomex-3.24.2"
