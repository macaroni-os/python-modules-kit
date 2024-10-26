# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="The comprehensive WSGI web application library."
HOMEPAGE="None https://pypi.org/project/Werkzeug/"
SRC_URI="https://files.pythonhosted.org/packages/d4/f9/0ba83eaa0df9b9e9d1efeb2ea351d0677c37d41ee5d0f91e98423c7281c9/werkzeug-3.0.6.tar.gz -> werkzeug-3.0.6.tar.gz"

DEPEND=""
RDEPEND="dev-python/markupsafe[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/werkzeug-3.0.6"