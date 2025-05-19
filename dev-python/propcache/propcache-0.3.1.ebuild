# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="standalone"
inherit distutils-r1

DESCRIPTION="Accelerated property cache"
HOMEPAGE="https://github.com/aio-libs/propcache"
SRC_URI="https://files.pythonhosted.org/packages/07/c8/fdc6686a986feae3541ea23dcaa661bd93972d3940460646c6bb96e21c40/propcache-0.3.1.tar.gz -> propcache-0.3.1.tar.gz
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
S="${WORKDIR}/propcache-0.3.1"

python_compile() {
	local -x PROPCACHE_NO_EXTENSIONS=0
	if ! use native-extensions || [[ ${EPYTHON} != python* ]]; then
		PROPCACHE_NO_EXTENSIONS=1
	fi
	distutils-r1_python_compile
}

