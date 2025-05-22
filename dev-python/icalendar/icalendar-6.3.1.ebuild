# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Package used for parsing and generating iCalendar files (RFC 2445)"
HOMEPAGE="https://github.com/collective/icalendar"
SRC_URI="https://files.pythonhosted.org/packages/08/13/e5899c916dcf1343ea65823eb7278d3e1a1d679f383f6409380594b5f322/icalendar-6.3.1.tar.gz -> icalendar-6.3.1.tar.gz"

DEPEND=""
RDEPEND="
	dev-python/python-dateutil[${PYTHON_USEDEP}]
	dev-python/pytz[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/icalendar-6.3.1"

distutils_enable_sphinx docs
python_prepare_all() {
	# reset conf.py to not read version from an installed instance
	sed -e "s:pkg_resources.get_distribution('icalendar').version:'${PV}':" \
		-i docs/conf.py || die
	distutils-r1_python_prepare_all
}
