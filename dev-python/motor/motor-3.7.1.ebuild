# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="hatchling"
inherit distutils-r1

DESCRIPTION="Non-blocking MongoDB driver for Tornado or asyncio"
HOMEPAGE="None https://pypi.org/project/motor/"
SRC_URI="https://files.pythonhosted.org/packages/93/ae/96b88362d6a84cb372f7977750ac2a8aed7b2053eed260615df08d5c84f4/motor-3.7.1.tar.gz -> motor-3.7.1.tar.gz"

DEPEND="dev-python/hatch-requirements-txt[${PYTHON_USEDEP}]"
RDEPEND="
	!<dev-python/pymongo-4.1
	>=dev-python/pymongo-4.1[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"
S="${WORKDIR}/motor-3.7.1"