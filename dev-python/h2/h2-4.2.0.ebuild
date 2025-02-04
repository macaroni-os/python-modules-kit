# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Pure-Python HTTP/2 protocol implementation"
HOMEPAGE="None https://pypi.org/project/h2/"
SRC_URI="https://files.pythonhosted.org/packages/1b/38/d7f80fd13e6582fb8e0df8c9a653dcc02b03ca34f4d72f34869298c5baf8/h2-4.2.0.tar.gz -> h2-4.2.0.tar.gz"

DEPEND=""
RDEPEND="
	dev-python/hpack[${PYTHON_USEDEP}]
	dev-python/hyperframe[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/h2-4.2.0"