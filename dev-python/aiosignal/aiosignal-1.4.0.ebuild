# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="aiosignal: a list of registered asynchronous callbacks"
HOMEPAGE="https://github.com/aio-libs/aiosignal"
SRC_URI="https://files.pythonhosted.org/packages/61/62/06741b579156360248d1ec624842ad0edf697050bbaf7c3e46394e106ad1/aiosignal-1.4.0.tar.gz -> aiosignal-1.4.0.tar.gz
"
LICENSE="Apache 2.0"
SLOT="0"
KEYWORDS="*"
BDEPEND="
	dev-python/frozenlist[${PYTHON_USEDEP}]
	dev-python/typing-extensions[${PYTHON_USEDEP}]
"
RDEPEND="

	dev-python/frozenlist[${PYTHON_USEDEP}]
	dev-python/typing-extensions[${PYTHON_USEDEP}]
"
S="${WORKDIR}/aiosignal-1.4.0"
