# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Python bindings for the low-level FUSE API"
HOMEPAGE="https://github.com/python-llfuse/python-llfuse/"
SRC_URI="https://files.pythonhosted.org/packages/e7/21/5a4d639746cb0d32ede867012610233da947165994ff07fa9db965460aa6/llfuse-1.5.2.tar.gz -> llfuse-1.5.2.tar.gz
"
DEPEND="
	sys-apps/attr
	virtual/pkgconfig
"
RDEPEND="
	sys-fs/fuse:0
"
BDEPEND="dev-python/setuptools[${PYTHON_USEDEP}]
"
SLOT="0"
LICENSE="LGPL-2"
KEYWORDS="*"
S="${WORKDIR}/llfuse-1.5.2"
