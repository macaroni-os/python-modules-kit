# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="standalone"
inherit distutils-r1

DESCRIPTION="Yet another URL library"
HOMEPAGE="https://github.com/aio-libs/yarl https://pypi.org/project/yarl/"
SRC_URI="https://files.pythonhosted.org/packages/fc/4d/8a8f57caccce49573e567744926f88c6ab3ca0b47a257806d1cf88584c5f/yarl-1.19.0.tar.gz -> yarl-1.19.0.tar.gz"

DEPEND="dev-python/expandvars[${PYTHON_USEDEP}]"
RDEPEND="
	>=dev-python/idna-2.0[${PYTHON_USEDEP}]
	>=dev-python/propcache-0.2.0[${PYTHON_USEDEP}]
	>=dev-python/multidict-4.0[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"
S="${WORKDIR}/yarl-1.19.0"