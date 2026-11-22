# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="flit"
inherit distutils-r1

DESCRIPTION="Python port of markdown-it. Markdown parsing, done right!"
HOMEPAGE="https://github.com/executablebooks/markdown-it-py"
SRC_URI="https://files.pythonhosted.org/packages/38/71/3b932df36c1a044d397a1f92d1cf91ee0a503d91e470cbd670aa66b07ed0/markdown-it-py-3.0.0.tar.gz -> markdown-it-py-3.0.0.tar.gz
"
LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
RDEPEND="

	>=dev-python/mdurl-0.1[${PYTHON_USEDEP}]
	<dev-python/mdurl-0.2[${PYTHON_USEDEP}]
"
DEPEND="


	>=dev-python/mdurl-0.1[${PYTHON_USEDEP}]
	<dev-python/mdurl-0.2[${PYTHON_USEDEP}]
"
S="${WORKDIR}/markdown-it-py-3.0.0"
