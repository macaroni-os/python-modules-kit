# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="World timezone definitions, modern and historical"
HOMEPAGE="http://pythonhosted.org/pytz"
SRC_URI="https://files.pythonhosted.org/packages/f5/b0/168030b0bfcc334cf09fa3313afdb888d892c8a0027324683d1de0ec277e/pytz-2026.6.tar.gz -> pytz-2026.6.tar.gz
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
S="${WORKDIR}/pytz-2026.6"

src_prepare() {
	default
	# configure the source code to grab zoneinfo files from /usr/share/zoneinfo by default:
	sed -i -e "/zoneinfo_dir = os.environ.get/s:None:'/usr/share/zoneinfo':" $S/pytz/__init__.py || die
	}
post_src_install() {
	# Remove all bundled zoneinfo data:
	find "$D" -type d -name zoneinfo -exec rm -rf {} \; 2>/dev/null
}

