# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 pypy )
DISTUTILS_USE_PEP517="flit"
inherit distutils-r1

DESCRIPTION="reference implementation of the Python wheel packaging standard, as defined in PEP 427"
HOMEPAGE="None https://pypi.org/project/wheel/"
SRC_URI="https://files.pythonhosted.org/packages/11/d9/f16ef50f69f8b85961f8df7a2bdad08a98a32e79dfabf9f14f250fc0324d/wheel-0.46.0.tar.gz -> wheel-0.46.0.tar.gz"

DEPEND=""
RDEPEND="python_targets_python2_7? ( dev-python/wheel-compat )"
IUSE="python_targets_python2_7"
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/wheel-0.46.0"