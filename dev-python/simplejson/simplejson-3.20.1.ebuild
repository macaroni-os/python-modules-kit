# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Simple, fast, extensible JSON encoder/decoder for Python"
HOMEPAGE="https://github.com/simplejson/simplejson https://pypi.org/project/simplejson/"
SRC_URI="https://files.pythonhosted.org/packages/af/92/51b417685abd96b31308b61b9acce7ec50d8e1de8fbc39a7fd4962c60689/simplejson-3.20.1.tar.gz -> simplejson-3.20.1.tar.gz"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/simplejson-3.20.1"