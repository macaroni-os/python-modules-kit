# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="python library for reading and writing collada documents"
HOMEPAGE="None https://pypi.org/project/pycollada/"
SRC_URI="https://files.pythonhosted.org/packages/da/6b/caadd3d65fde5a6a5a33e608183d5a52525a41e2c44f479a99620413a661/pycollada-0.9.tar.gz -> pycollada-0.9.tar.gz"

DEPEND=""
RDEPEND="
	dev-python/lxml[${PYTHON_USEDEP}]
	dev-python/numpy[${PYTHON_USEDEP}]
	>=dev-python/python-dateutil-2.2[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/pycollada-0.9"