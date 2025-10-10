# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="standalone"
inherit distutils-r1

DESCRIPTION="Accelerated property cache"
HOMEPAGE="https://github.com/aio-libs/propcache"
SRC_URI="https://files.pythonhosted.org/packages/9e/da/e9fc233cf63743258bff22b3dfa7ea5baef7b5bc324af47a0ad89b8ffc6f/propcache-0.4.1.tar.gz -> propcache-0.4.1.tar.gz
"
BDEPEND="
	dev-python/expandvars[${PYTHON_USEDEP}]
	dev-python/setuptools[${PYTHON_USEDEP}]
	native-extensions? ( dev-python/cython[${PYTHON_USEDEP}] )
"
IUSE="+native-extensions"
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"
S="${WORKDIR}/propcache-0.4.1"

python_compile() {
	local -x PROPCACHE_NO_EXTENSIONS=0
	if ! use native-extensions || [[ ${EPYTHON} != python* ]]; then
		PROPCACHE_NO_EXTENSIONS=1
	fi
	distutils-r1_python_compile
}

