# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="R-Tree spatial index for Python GIS"
HOMEPAGE="None https://pypi.org/project/rtree/"
SRC_URI="https://files.pythonhosted.org/packages/18/b8/0091f020acafcb034daa5b062f0626f6a73c7e0d64826af23861390a9585/rtree-1.4.0.tar.gz -> rtree-1.4.0.tar.gz"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/Rtree-1.4.0"