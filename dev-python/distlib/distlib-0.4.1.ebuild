# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Distribution utilities"
HOMEPAGE="https://github.com/pypa/distlib"
SRC_URI="https://files.pythonhosted.org/packages/86/b2/d6fc3f2347f43dada79e5ff118493e8109c98400a0e29a1d5264a3aa479b/distlib-0.4.1.tar.gz -> distlib-0.4.1.tar.gz
"
SLOT="0"
LICENSE="PSF-2.0"
KEYWORDS="*"
S="${WORKDIR}/distlib-0.4.1"
