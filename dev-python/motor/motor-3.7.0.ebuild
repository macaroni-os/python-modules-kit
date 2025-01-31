# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="hatchling"
inherit distutils-r1

DESCRIPTION="Non-blocking MongoDB driver for Tornado or asyncio"
HOMEPAGE="None https://pypi.org/project/motor/"
SRC_URI="https://files.pythonhosted.org/packages/2b/c0/b94558a88fb8406b092bb180c6fa5fb3068f8ec2c7e84dd2b0625f4f4f6e/motor-3.7.0.tar.gz -> motor-3.7.0.tar.gz"

DEPEND="dev-python/hatch-requirements-txt[${PYTHON_USEDEP}]"
RDEPEND="
	!<dev-python/pymongo-4.1
	>=dev-python/pymongo-4.1[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"
S="${WORKDIR}/motor-3.7.0"