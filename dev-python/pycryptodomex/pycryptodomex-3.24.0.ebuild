# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Cryptographic library for Python"
HOMEPAGE="https://www.pycryptodome.org"
SRC_URI="https://files.pythonhosted.org/packages/4c/25/214ea825a9031f5af2c8b2506ee16701a2560d4712165dd00098dd527bcb/pycryptodomex-3.24.0.tar.gz -> pycryptodomex-3.24.0.tar.gz
"
LICENSE="BSD"
SLOT="0"
KEYWORDS="*"
S="${WORKDIR}/pycryptodomex-3.24.0"
