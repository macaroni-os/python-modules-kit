# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Library for manipulating TrueType, OpenType, AFM and Type1 fonts"
HOMEPAGE="https://github.com/fonttools/fonttools/"
SRC_URI="https://files.pythonhosted.org/packages/13/8d/8912cdde6a2b4c19ced69ea5790cd17d1c095a3c0104c1c936a1de804a64/fonttools-4.55.4.tar.gz -> fonttools-4.55.4.tar.gz"

DEPEND="dev-python/cython[${PYTHON_USEDEP}]"
RDEPEND="dev-python/fs[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/fonttools-4.55.4"

src_configure() {
	DISTUTILS_ARGS=( --with-cython )
}
