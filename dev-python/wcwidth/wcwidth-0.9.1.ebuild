# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="hatchling"
inherit distutils-r1

DESCRIPTION="Measures the displayed width of unicode strings in a terminal"
HOMEPAGE="https://github.com/jquast/wcwidth"
SRC_URI="https://files.pythonhosted.org/packages/dc/ac/3a943d2792c9bb368aaa8b50121c0f778460ba2d7fbdc0a0366201d9e761/wcwidth-0.9.1.tar.gz -> wcwidth-0.9.1.tar.gz
"
LICENSE=""
SLOT="0"
KEYWORDS="*"
S="${WORKDIR}/wcwidth-0.9.1"

src_prepare() {
	distutils-r1_src_prepare
	rm README.rst
	cp docs/intro.rst README.rst
}

