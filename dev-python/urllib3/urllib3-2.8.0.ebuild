# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="hatchling"
inherit distutils-r1

DESCRIPTION="HTTP library with thread-safe connection pooling, file post, and more."
HOMEPAGE=""
SRC_URI="https://files.pythonhosted.org/packages/e3/05/b17359e1cefb4f909b5e40b1b90a496d987258916dbbf88e842c729f510e/urllib3-2.8.0.tar.gz -> urllib3-2.8.0.tar.gz
"
LICENSE=""
SLOT="0"
KEYWORDS="*"
BDEPEND="dev-python/hatch-vcs[${PYTHON_USEDEP}]
"
RDEPEND="

	brotli? ( dev-python/brotlipy[${PYTHON_USEDEP}] )
	>=dev-python/PySocks-1.5.8[${PYTHON_USEDEP}]
	<dev-python/PySocks-2.0[${PYTHON_USEDEP}]
	zstd? ( dev-python/zstandard[${PYTHON_USEDEP}] )
	http2? ( <dev-python/h2-5[${PYTHON_USEDEP}] )
	http2? ( >dev-python/h2-4[${PYTHON_USEDEP}] )
"
DEPEND="


	brotli? ( dev-python/brotlipy[${PYTHON_USEDEP}] )
	>=dev-python/PySocks-1.5.8[${PYTHON_USEDEP}]
	<dev-python/PySocks-2.0[${PYTHON_USEDEP}]
	zstd? ( dev-python/zstandard[${PYTHON_USEDEP}] )
	http2? ( <dev-python/h2-5[${PYTHON_USEDEP}] )
	http2? ( >dev-python/h2-4[${PYTHON_USEDEP}] )
"
IUSE="brotli http2 zstd"
S="${WORKDIR}/urllib3-2.8.0"

src_prepare() {
	default
	sed -i -e '/Free Threading/d' pyproject.toml || die
}

