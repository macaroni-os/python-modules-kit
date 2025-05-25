# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Extensible memoizing collections and decorators"
HOMEPAGE="https://github.com/tkem/cachetools/ https://pypi.org/project/cachetools/"
SRC_URI="https://files.pythonhosted.org/packages/c0/b0/f539a1ddff36644c28a61490056e5bae43bd7386d9f9c69beae2d7e7d6d1/cachetools-6.0.0.tar.gz -> cachetools-6.0.0.tar.gz"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/cachetools-6.0.0"