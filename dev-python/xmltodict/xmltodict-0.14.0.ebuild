# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy{,3} )
inherit distutils-r1

DESCRIPTION="A python module that makes working with XML feel like you are working with JSON"
HOMEPAGE="https://github.com/martinblech/xmltodict
"
SRC_URI="https://files.pythonhosted.org/packages/44/ea/9467a80e5d1722067ad235801883e6eb92f1665c2c629fea7d57fb52775e/xmltodict-0.14.0.tar.gz -> xmltodict-0.14.0.tar.gz"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/xmltodict-0.14.0"