# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="flit_scm"
inherit distutils-r1

DESCRIPTION="Backport of PEP 654 (exception groups)"
HOMEPAGE="None https://pypi.org/project/exceptiongroup/"
SRC_URI="https://files.pythonhosted.org/packages/0b/9f/a65090624ecf468cdca03533906e7c69ed7588582240cfe7cc9e770b50eb/exceptiongroup-1.3.0.tar.gz -> exceptiongroup-1.3.0.tar.gz"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/exceptiongroup-1.3.0"