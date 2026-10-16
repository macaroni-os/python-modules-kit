# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Async http client/server framework (asyncio)"
HOMEPAGE="https://github.com/aio-libs/aiohttp"
SRC_URI="https://files.pythonhosted.org/packages/77/9a/152096d4808df8e4268befa55fba462f440f14beab85e8ad9bf990516918/aiohttp-3.13.5.tar.gz -> aiohttp-3.13.5.tar.gz
"
LICENSE="Apache-2.0 AND MIT"
SLOT="0"
KEYWORDS="*"
BDEPEND="dev-python/cython[${PYTHON_USEDEP}]
"
RDEPEND="

	dev-python/aiodns[${PYTHON_USEDEP}]
	dev-python/aiohappyeyeballs[${PYTHON_USEDEP}]
	dev-python/aiosignal[${PYTHON_USEDEP}]
	dev-python/attrs[${PYTHON_USEDEP}]
	dev-python/frozenlist[${PYTHON_USEDEP}]
	dev-python/propcache[${PYTHON_USEDEP}]
	dev-python/yarl[${PYTHON_USEDEP}]
	dev-python/multidict[${PYTHON_USEDEP}]
	dev-python/typing-extensions[${PYTHON_USEDEP}]
	dev-python/charset_normalizer[${PYTHON_USEDEP}]
"
DEPEND="

	${RDEPEND}

"
S="${WORKDIR}/aiohttp-3.13.5"
