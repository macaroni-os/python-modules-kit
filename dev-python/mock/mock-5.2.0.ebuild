# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )
inherit distutils-r1

DESCRIPTION="Stand-alone version of unittest.mock included in py3.3+"
HOMEPAGE="https://github.com/testing-cabal/mock"
SRC_URI="https://files.pythonhosted.org/packages/07/8c/14c2ae915e5f9dca5a22edd68b35be94400719ccfa068a03e0fb63d0f6f6/mock-5.2.0.tar.gz -> mock-5.2.0.tar.gz"

DEPEND=""
RDEPEND=">=dev-python/six-1.9[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/mock-5.2.0"