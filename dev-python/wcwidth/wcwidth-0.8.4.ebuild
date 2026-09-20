# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="hatchling"
inherit distutils-r1

DESCRIPTION="Measures the displayed width of unicode strings in a terminal"
HOMEPAGE="https://github.com/jquast/wcwidth"
SRC_URI="https://files.pythonhosted.org/packages/3d/7a/f98d4ada7c499565ab0c0fcef28a4e54fafa72b8228a6309803c80493c92/wcwidth-0.8.4.tar.gz -> wcwidth-0.8.4.tar.gz
"
LICENSE=""
SLOT="0"
KEYWORDS="*"
S="${WORKDIR}/wcwidth-0.8.4"

src_prepare() {
	distutils-r1_src_prepare
	rm README.rst
	cp docs/intro.rst README.rst
}

