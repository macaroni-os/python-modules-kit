# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="World timezone definitions, modern and historical"
HOMEPAGE="http://pythonhosted.org/pytz"
SRC_URI="https://files.pythonhosted.org/packages/14/21/d83d6ef28c4c912c4bb4d1dcf591f7b8c6bde87b9c66f9f454677314e16d/pytz-2026.5.tar.gz -> pytz-2026.5.tar.gz
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
S="${WORKDIR}/pytz-2026.5"

src_prepare() {
	default
	# configure the source code to grab zoneinfo files from /usr/share/zoneinfo by default:
	sed -i -e "/zoneinfo_dir = os.environ.get/s:None:'/usr/share/zoneinfo':" $S/pytz/__init__.py || die
	}
post_src_install() {
	# Remove all bundled zoneinfo data:
	find "$D" -type d -name zoneinfo -exec rm -rf {} \; 2>/dev/null
}

