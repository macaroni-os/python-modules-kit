# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="flit"
inherit distutils-r1

DESCRIPTION="Core utilities for Python packages"
HOMEPAGE="https://github.com/pypa/packaging/"
SRC_URI="https://files.pythonhosted.org/packages/d0/63/68dbb6eb2de9cb10ee4c9c14a0148804425e13c4fb20d61cce69f53106da/packaging-24.2.tar.gz -> packaging-24.2.tar.gz
"
SLOT="0"
LICENSE="|| ( Apache-2.0 BSD-2 )"
KEYWORDS="*"
S="${WORKDIR}/packaging-24.2"
