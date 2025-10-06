# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="hatchling"
inherit distutils-r1

DESCRIPTION="HTTP library with thread-safe connection pooling, file post, and more."
HOMEPAGE=""
SRC_URI="https://files.pythonhosted.org/packages/15/22/9ee70a2574a4f4599c47dd506532914ce044817c7752a79b6a51286319bc/urllib3-2.5.0.tar.gz -> urllib3-2.5.0.tar.gz
"
DEPEND="
	http2? ( <dev-python/h2-5[${PYTHON_USEDEP}] )
	http2? ( >dev-python/h2-4[${PYTHON_USEDEP}] )
	brotli? ( dev-python/brotlipy[${PYTHON_USEDEP}] )
	>=dev-python/PySocks-1.5.8[${PYTHON_USEDEP}]
	<dev-python/PySocks-2.0[${PYTHON_USEDEP}]
	zstd? ( dev-python/zstandard[${PYTHON_USEDEP}] )
"
RDEPEND="

	http2? ( <dev-python/h2-5[${PYTHON_USEDEP}] )
	http2? ( >dev-python/h2-4[${PYTHON_USEDEP}] )
	brotli? ( dev-python/brotlipy[${PYTHON_USEDEP}] )
	>=dev-python/PySocks-1.5.8[${PYTHON_USEDEP}]
	<dev-python/PySocks-2.0[${PYTHON_USEDEP}]
	zstd? ( dev-python/zstandard[${PYTHON_USEDEP}] )
"
BDEPEND="dev-python/hatch-vcs[${PYTHON_USEDEP}]
"
IUSE="brotli http2 zstd"
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/urllib3-2.5.0"
