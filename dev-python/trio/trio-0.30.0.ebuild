# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="A friendly Python library for async concurrency and I/O"
HOMEPAGE="None https://pypi.org/project/trio/"
SRC_URI="https://files.pythonhosted.org/packages/01/c1/68d582b4d3a1c1f8118e18042464bb12a7c1b75d64d75111b297687041e3/trio-0.30.0.tar.gz -> trio-0.30.0.tar.gz"

DEPEND=""
RDEPEND="
	>=dev-python/attrs-20.1.0[${PYTHON_USEDEP}]
	dev-python/sortedcontainers[${PYTHON_USEDEP}]
	>=dev-python/async-generator-1.9[${PYTHON_USEDEP}]
	dev-python/idna[${PYTHON_USEDEP}]
	dev-python/outcome[${PYTHON_USEDEP}]
	dev-python/sniffio[${PYTHON_USEDEP}]
	dev-python/exceptiongroup[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="|| ( Apache-2.0 MIT )"
KEYWORDS="*"
S="${WORKDIR}/trio-0.30.0"

src_prepare() {
	sed -i -e 's/license = "MIT OR Apache-2.0"/license = { text = "MIT OR Apache-2.0" }/' pyproject.toml || die
	sed -i -e '/license-files/d' pyproject.toml || die
	distutils-r1_src_prepare
}
