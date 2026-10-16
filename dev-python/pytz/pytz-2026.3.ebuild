# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="World timezone definitions, modern and historical"
HOMEPAGE="http://pythonhosted.org/pytz"
SRC_URI="https://files.pythonhosted.org/packages/96/24/b0c591d81fdb795a3bf65a05ac6dd2a138b80dd0711b3fd84ee630f1fee4/pytz-2026.3.tar.gz -> pytz-2026.3.tar.gz
"
LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
RDEPEND="
	sys-libs/timezone-data
"
DEPEND="

	${RDEPEND}
	app-arch/unzip

"
S="${WORKDIR}/pytz-2026.3"

src_prepare() {
	default
	# configure the source code to grab zoneinfo files from /usr/share/zoneinfo by default:
	sed -i -e "/zoneinfo_dir = os.environ.get/s:None:'/usr/share/zoneinfo':" $S/pytz/__init__.py || die
	}
post_src_install() {
	# Remove all bundled zoneinfo data:
	find "$D" -type d -name zoneinfo -exec rm -rf {} \; 2>/dev/null
}

