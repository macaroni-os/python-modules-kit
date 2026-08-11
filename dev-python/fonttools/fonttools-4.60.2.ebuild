# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Tools to manipulate font files"
HOMEPAGE="https://github.com/fonttools/fonttools https://pypi.org/project/fonttools/"
SRC_URI="https://files.pythonhosted.org/packages/3e/c4/db6a7b5eb0656534c3aa2596c2c5e18830d74f1b9aa5aa8a7dff63a0b11d/fonttools-4.60.2.tar.gz -> fonttools-4.60.2.tar.gz
"
RDEPEND="
lxml? ( >=dev-python/lxml-4.0[${PYTHON_USEDEP}] )
"
BDEPEND="
	dev-python/setuptools[${PYTHON_USEDEP}]
	native-extensions? ( dev-python/cython[${PYTHON_USEDEP}] )
"
IUSE="+native-extensions lxml"
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/fonttools-4.60.2"

python_compile() {
	local -x FONTTOOLS_WITH_CYTHON=$(usex native-extensions)
	distutils-r1_python_compile
}

