# Distributed under the terms of the GNU General Public License v2

EAPI=7
PYTHON_COMPAT=( python3+ )

inherit distutils-r1 toolchain-funcs

DESCRIPTION="Fast C based HTML 5 parsing for python"
HOMEPAGE="https://github.com/kovidgoyal/html5-parser/"
SRC_URI="https://files.pythonhosted.org/packages/a9/f6/7b330c4bfd46a7d002c627646b157521d103a39ebab942a654a90119e176/html5-parser-0.4.12.tar.gz -> html5-parser-0.4.12.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="*"
IUSE=""

BDEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
DEPEND="dev-libs/libxml2:="
RDEPEND="${DEPEND}
	dev-python/chardet[${PYTHON_USEDEP}]
	>=dev-python/lxml-3.8.0[${PYTHON_USEDEP}]"

src_prepare() {
	# Soup is not used when lxml is available.
	rm test/soup.py || die
	distutils-r1_src_prepare
}

src_configure() {
	export PKGCONFIG_EXE=$(tc-getPKG_CONFIG)
}

python_test() {
	esetup.py test || die "Tests failed under ${EPYTHON}"
}