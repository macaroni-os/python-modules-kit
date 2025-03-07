# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="standalone"
inherit distutils-r1

DESCRIPTION="Simplified packaging of Python modules (core module)"
HOMEPAGE="None https://pypi.org/project/flit-core/"
SRC_URI="https://files.pythonhosted.org/packages/bc/18/b9b81cab2b8f63e6e7f72e1ba2766a0454fcd563e7a77b8299cb917ba805/flit_core-3.11.0.tar.gz -> flit_core-3.11.0.tar.gz"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/flit_core-3.11.0"