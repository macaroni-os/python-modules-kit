# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="hatchling"
inherit distutils-r1

DESCRIPTION="HTTP library with thread-safe connection pooling, file post, and more."
HOMEPAGE=""
SRC_URI="https://files.pythonhosted.org/packages/5e/1d/0f3a93cca1ac5e8287842ed4eebbd0f7a991315089b1a0b01c7788aa7b63/urllib3-2.6.1.tar.gz -> urllib3-2.6.1.tar.gz
"
DEPEND="
	>=dev-python/PySocks-1.5.8[${PYTHON_USEDEP}]
	<dev-python/PySocks-2.0[${PYTHON_USEDEP}]
	zstd? ( dev-python/zstandard[${PYTHON_USEDEP}] )
	http2? ( <dev-python/h2-5[${PYTHON_USEDEP}] )
	http2? ( >dev-python/h2-4[${PYTHON_USEDEP}] )
	brotli? ( dev-python/brotlipy[${PYTHON_USEDEP}] )
"
RDEPEND="

	>=dev-python/PySocks-1.5.8[${PYTHON_USEDEP}]
	<dev-python/PySocks-2.0[${PYTHON_USEDEP}]
	zstd? ( dev-python/zstandard[${PYTHON_USEDEP}] )
	http2? ( <dev-python/h2-5[${PYTHON_USEDEP}] )
	http2? ( >dev-python/h2-4[${PYTHON_USEDEP}] )
	brotli? ( dev-python/brotlipy[${PYTHON_USEDEP}] )
"
BDEPEND="dev-python/hatch-vcs[${PYTHON_USEDEP}]
"
IUSE="brotli http2 zstd"
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/urllib3-2.6.1"
