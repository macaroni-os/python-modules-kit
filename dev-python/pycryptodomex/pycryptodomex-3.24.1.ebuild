# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Cryptographic library for Python"
HOMEPAGE="https://www.pycryptodome.org"
SRC_URI="https://files.pythonhosted.org/packages/f4/e7/50e72301e32acb73a314e663c2014e1ddefc019d5f434ff14ec89861d664/pycryptodomex-3.24.1.tar.gz -> pycryptodomex-3.24.1.tar.gz
"
LICENSE="BSD"
SLOT="0"
KEYWORDS="*"
S="${WORKDIR}/pycryptodomex-3.24.1"
