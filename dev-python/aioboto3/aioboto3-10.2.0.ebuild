# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="https://github.com/terrycain/aioboto3 https://pypi.org/project/aioboto3/"
SRC_URI="https://files.pythonhosted.org/packages/e6/03/feff1f9ed62f600fd111012f2aa21a01e8fa1ae0ebc062a7ddcc6f7536b4/aioboto3-10.2.0.tar.gz -> aioboto3-10.2.0.tar.gz
"

DEPEND=""
RDEPEND="
	dev-python/aiobotocore[${PYTHON_USEDEP}]
	dev-python/pytest-runner[${PYTHON_USEDEP}]"

IUSE=""
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"
S="${WORKDIR}/aioboto3-10.2.0"