# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2_7 )
inherit distutils-r1

DESCRIPTION="Self-service finite-state machines for the programmer on the go"
HOMEPAGE="None https://pypi.org/project/Automat/"
SRC_URI="https://files.pythonhosted.org/packages/80/c5/82c63bad570f4ef745cc5c2f0713c8eddcd07153b4bee7f72a8dc9f9384b/Automat-20.2.0.tar.gz -> Automat-20.2.0.tar.gz"

DEPEND="
	dev-python/attrs[${PYTHON_USEDEP}]
	dev-python/six[${PYTHON_USEDEP}]
	$(python_gen_cond_dep 'dev-python/m2r[${PYTHON_USEDEP}]' -2)"
RDEPEND="!<=dev-python/automat-22.10.0 
	${DEPEND}"
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/automat-20.2.0"

pkg_postinst() {
	einfo "For additional visualization functionality install these optional dependencies"
	einfo "    >=dev-python/twisted-16.1.1"
	einfo "    media-gfx/graphviz[python]"
}


post_src_install() {
	rm -rf ${D}/usr/bin
}