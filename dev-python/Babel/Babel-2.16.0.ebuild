# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Internationalization utilities"
HOMEPAGE="https://babel.pocoo.org/ https://pypi.org/project/babel/"
SRC_URI="https://files.pythonhosted.org/packages/2a/74/f1bc80f23eeba13393b7222b11d95ca3af2c1e28edca18af487137eefed9/babel-2.16.0.tar.gz -> babel-2.16.0.tar.gz"

DEPEND=""
RDEPEND="dev-python/pytz[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/babel-2.16.0"