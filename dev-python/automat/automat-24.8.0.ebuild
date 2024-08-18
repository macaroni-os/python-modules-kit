# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )
inherit distutils-r1

DESCRIPTION="Self-service finite-state machines for the programmer on the go"
HOMEPAGE="None https://pypi.org/project/Automat/"
SRC_URI="https://files.pythonhosted.org/packages/60/b4/7002a0ac39e80a9e62f1228f60a8f7f4525a22cbaf804647a2ab8e0172d9/automat-24.8.0.tar.gz -> automat-24.8.0.tar.gz"

DEPEND="
	dev-python/attrs[${PYTHON_USEDEP}]
	dev-python/six[${PYTHON_USEDEP}]"
RDEPEND="
	python_targets_python2_7? ( dev-python/automat-compat )
	${DEPEND}"
IUSE="python_targets_python2_7"
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/automat-24.8.0"

src_unpack() {
	default
	mv ${WORKDIR}/A* ${S} || die
}
python_prepare_all() {
	# avoid a setuptools_scm dependency
	sed -r -i "s:use_scm_version=True:version='${PV}': ;
		s:[\"']setuptools[_-]scm[\"'](,|)::" setup.py || die
	distutils-r1_python_prepare_all
}
pkg_postinst() {
	einfo "For additional visualization functionality install these optional dependencies"
	einfo "    >=dev-python/twisted-16.1.1"
	einfo "    media-gfx/graphviz[python]"
}
