# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="The Cython compiler for writing C extensions in the Python language."
HOMEPAGE="https://cython.org/"
SRC_URI="https://files.pythonhosted.org/packages/b4/a4/ec55945b52d0b888e2a090450a5524001bfa17c8b68348379a154badb850/cython-3.1.8.tar.gz -> cython-3.1.8.tar.gz
"
LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="*"
S="${WORKDIR}/cython-3.1.8"
