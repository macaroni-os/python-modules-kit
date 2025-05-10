# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )
inherit distutils-r1

DESCRIPTION="Fixtures, reusable state for writing clean tests and more."
HOMEPAGE="None https://pypi.org/project/fixtures/"
SRC_URI="https://files.pythonhosted.org/packages/38/12/49e56f952ec7d1425a27e15b286ac665b243eb0ed79ed35fc735c92d0167/fixtures-4.2.5.tar.gz -> fixtures-4.2.5.tar.gz"

DEPEND=""
RDEPEND="
	dev-python/pbr[${PYTHON_USEDEP}]
	dev-python/six[${PYTHON_USEDEP}]
	dev-python/testtools[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="Apache-2.0 BSD"
KEYWORDS="*"
S="${WORKDIR}/fixtures-4.2.5"