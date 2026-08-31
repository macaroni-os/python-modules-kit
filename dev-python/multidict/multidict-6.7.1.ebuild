# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="multidict implementation"
HOMEPAGE="https://github.com/aio-libs/multidict"
SRC_URI="https://files.pythonhosted.org/packages/1a/c2/c2d94cbe6ac1753f3fc980da97b3d930efe1da3af3c9f5125354436c073d/multidict-6.7.1.tar.gz -> multidict-6.7.1.tar.gz
"
LICENSE="Apache License 2.0"
SLOT="0"
KEYWORDS="*"
BDEPEND="dev-python/cython[${PYTHON_USEDEP}]
"
S="${WORKDIR}/multidict-6.7.1"
