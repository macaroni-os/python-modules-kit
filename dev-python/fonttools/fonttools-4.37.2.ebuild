# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="http://github.com/fonttools/fonttools https://pypi.org/project/fonttools/"
SRC_URI="https://files.pythonhosted.org/packages/1c/ba/ec6c77400dd8dd35a6b7d825cd50401c8fbe64c708f7ce7f766fcb2faa09/fonttools-4.37.2.zip -> fonttools-4.37.2.zip
"

DEPEND="dev-python/cython[${PYTHON_USEDEP}]"
RDEPEND="dev-python/fs[${PYTHON_USEDEP}]"

IUSE=""
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/fonttools-4.37.2"

src_configure() {
	DISTUTILS_ARGS=( --with-cython )
}