# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="hatchling"
inherit distutils-r1

DESCRIPTION="Pygments is a syntax highlighting package written in Python."
HOMEPAGE="None https://pypi.org/project/Pygments/"
SRC_URI="https://files.pythonhosted.org/packages/d3/c0/9c9832e5be227c40e1ce774d493065f83a91d6430baa7e372094e9683a45/pygments-2.19.0.tar.gz -> pygments-2.19.0.tar.gz"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/pygments-2.19.0"