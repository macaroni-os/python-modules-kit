# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Mustache for Python"
HOMEPAGE="None https://pypi.org/project/pystache/"
SRC_URI="https://files.pythonhosted.org/packages/85/89/0a712ca22930b8c71bced8703e5bb45669c31690ea81afe15f6cb284550c/pystache-0.6.8.tar.gz -> pystache-0.6.8.tar.gz"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/pystache-0.6.8"