# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="A tiny test runner that outputs TAP results to standard output."
HOMEPAGE="https://github.com/remko/pycotap"
SRC_URI="https://files.pythonhosted.org/packages/c9/18/b7a446204fbb25327081bba2f3d6fdcd4df848c034f8f404c5b36e0d9ef6/pycotap-1.3.1.tar.gz -> pycotap-1.3.1.tar.gz
"
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/pycotap-1.3.1"

src_prepare() {
	distutils-r1_src_prepare
	sed -i -e "/data_files =/d" setup.py || die
}

