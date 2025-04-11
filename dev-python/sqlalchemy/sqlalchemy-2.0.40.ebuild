# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Database Abstraction Library"
HOMEPAGE="https://www.sqlalchemy.org https://pypi.org/project/SQLAlchemy/"
SRC_URI="https://files.pythonhosted.org/packages/68/c3/3f2bfa5e4dcd9938405fe2fab5b6ab94a9248a4f9536ea2fd497da20525f/sqlalchemy-2.0.40.tar.gz -> sqlalchemy-2.0.40.tar.gz"

DEPEND="dev-python/cython[${PYTHON_USEDEP}]"
RDEPEND="dev-python/typing-extensions[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/sqlalchemy-2.0.40"