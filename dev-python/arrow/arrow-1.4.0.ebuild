# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="flit"
inherit distutils-r1

DESCRIPTION="Better dates & times for Python"
HOMEPAGE="https://github.com/arrow-py/arrow"
SRC_URI="https://files.pythonhosted.org/packages/b9/33/032cdc44182491aa708d06a68b62434140d8c50820a087fac7af37703357/arrow-1.4.0.tar.gz -> arrow-1.4.0.tar.gz
"
LICENSE=""
SLOT="0"
KEYWORDS="*"
RDEPEND="
dev-python/python-dateutil[${PYTHON_USEDEP}]
"
DEPEND="

dev-python/python-dateutil[${PYTHON_USEDEP}]
"
S="${WORKDIR}/arrow-1.4.0"
