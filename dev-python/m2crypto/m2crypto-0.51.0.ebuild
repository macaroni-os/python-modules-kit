# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1 toolchain-funcs

DESCRIPTION="A Python crypto and SSL toolkit"
HOMEPAGE="https://gitlab.com/m2crypto/m2crypto https://pypi.org/project/M2Crypto/"
SRC_URI="https://files.pythonhosted.org/packages/5b/d5/282d1ebd36c248cd1e4010523191a1ff59156c438cea061247ce65e53f70/m2crypto-0.51.0.tar.gz -> m2crypto-0.51.0.tar.gz
"
LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
BDEPEND="
	dev-lang/swig
"
RDEPEND="
	dev-libs/openssl:=
	virtual/python-typing[${PYTHON_USEDEP}]
"
S="${WORKDIR}/m2crypto-0.51.0"

swig_define() {
		local x
		for x; do
				if tc-cpp-is-true "defined(${x})"; then
						SWIG_FEATURES+=" -D${x}"
				fi
		done
}
python_compile() {
		local -x SWIG_FEATURES=
		swig_define __ILP32__
		swig_define __ARM_PCS_VFP
		distutils-r1_python_compile
}

