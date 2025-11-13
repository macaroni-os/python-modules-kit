# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="standalone"
inherit distutils-r1

DESCRIPTION="YAML parser and emitter for Python"
HOMEPAGE="https://pyyaml.org/"
SRC_URI="https://files.pythonhosted.org/packages/05/8e/961c0007c59b8dd7729d542c61a4d537767a59645b82a0b521206e1e25c2/pyyaml-6.0.3.tar.gz -> pyyaml-6.0.3.tar.gz
"
DEPEND="${RDEPEND}
"
RDEPEND="
	dev-libs/libyaml:=
"
BDEPEND="
	dev-python/cython[${PYTHON_USEDEP}]
	dev-python/setuptools[${PYTHON_USEDEP}]
"
IUSE="examples"
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/pyyaml-6.0.3"

src_install() {
	distutils-r1_src_install
	if use examples ; then
		dodoc -r examples
		docompress -x /usr/share/doc/${PF}
	fi
}

