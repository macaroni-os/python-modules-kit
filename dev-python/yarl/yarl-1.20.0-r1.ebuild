# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="standalone"
inherit distutils-r1

DESCRIPTION="Yet another URL library"
HOMEPAGE="https://github.com/aio-libs/yarl"
SRC_URI="https://files.pythonhosted.org/packages/62/51/c0edba5219027f6eab262e139f73e2417b0f4efffa23bf562f6e18f76ca5/yarl-1.20.0.tar.gz -> yarl-1.20.0.tar.gz
"
RDEPEND="
	>=dev-python/idna-2.0[${PYTHON_USEDEP}]
	>=dev-python/multidict-4.0[${PYTHON_USEDEP}]
	>=dev-python/propcache-0.2.0[${PYTHON_USEDEP}]
"
BDEPEND="
	dev-python/setuptools[${PYTHON_USEDEP}]
	dev-python/expandvars[${PYTHON_USEDEP}]
	native-extensions? ( dev-python/cython[${PYTHON_USEDEP}] )
"

IUSE="+native-extensions"
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"
S="${WORKDIR}/yarl-1.20.0"

python_compile() {
	local -x YARL_NO_EXTENSIONS=0
	if ! use native-extensions || [[ ${EPYTHON} != python* ]]; then
		YARL_NO_EXTENSIONS=1
	fi
	distutils-r1_python_compile
}

