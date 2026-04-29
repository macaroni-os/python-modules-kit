# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Foreign Function Interface for Python calling C code."
HOMEPAGE=""
SRC_URI="https://files.pythonhosted.org/packages/eb/56/b1ba7935a17738ae8453301356628e8147c79dbb825bcbc73dc7401f9846/cffi-2.0.0.tar.gz -> cffi-2.0.0.tar.gz
"
DEPEND="

	virtual/libffi:=
dev-python/pycparser[${PYTHON_USEDEP}]
"
RDEPEND="${DEPEND}
"
BDEPEND="
	virtual/pkgconfig
"
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/cffi-2.0.0"
