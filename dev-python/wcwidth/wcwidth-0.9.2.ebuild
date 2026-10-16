# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="hatchling"
inherit distutils-r1

DESCRIPTION="Measures the displayed width of unicode strings in a terminal"
HOMEPAGE="https://github.com/jquast/wcwidth"
SRC_URI="https://files.pythonhosted.org/packages/f0/b4/7830542634bb2d3e62aa3b586a72d5b3b6c91c3168929e7000ef3fed041d/wcwidth-0.9.2.tar.gz -> wcwidth-0.9.2.tar.gz
"
LICENSE=""
SLOT="0"
KEYWORDS="*"
S="${WORKDIR}/wcwidth-0.9.2"

src_prepare() {
	distutils-r1_src_prepare
	rm README.rst
	cp docs/intro.rst README.rst
}

