# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Passive checker for Python programs"
HOMEPAGE="https://github.com/PyCQA/pyflakes
https://pypi.org/project/pyflakes/
"
SRC_URI="https://files.pythonhosted.org/packages/af/cc/1df338bd7ed1fa7c317081dcf29bf2f01266603b301e6858856d346a12b3/pyflakes-3.3.2.tar.gz -> pyflakes-3.3.2.tar.gz"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/pyflakes-3.3.2"