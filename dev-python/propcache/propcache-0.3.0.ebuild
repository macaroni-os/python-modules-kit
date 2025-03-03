# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="standalone"
inherit distutils-r1

DESCRIPTION="Accelerated property cache"
HOMEPAGE="https://github.com/aio-libs/propcache https://pypi.org/project/propcache/"
SRC_URI="https://files.pythonhosted.org/packages/92/76/f941e63d55c0293ff7829dd21e7cf1147e90a526756869a9070f287a68c9/propcache-0.3.0.tar.gz -> propcache-0.3.0.tar.gz"

DEPEND="
	dev-python/expandvars[${PYTHON_USEDEP}]
	dev-python/setuptools[${PYTHON_USEDEP}]
	native-extensions? ( dev-python/cython[${PYTHON_USEDEP}] )"
IUSE="native-extensions"
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"
S="${WORKDIR}/propcache-0.3.0"