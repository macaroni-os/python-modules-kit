# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1 eutils

DESCRIPTION="A super-fast templating language that borrows the best ideas from the existing templating languages."
HOMEPAGE="https://www.makotemplates.org/ https://pypi.org/project/Mako/"
SRC_URI="https://files.pythonhosted.org/packages/62/4f/ddb1965901bc388958db9f0c991255b2c469349a741ae8c9cd8a562d70a6/mako-1.3.9.tar.gz -> mako-1.3.9.tar.gz"

DEPEND=""
RDEPEND="
	dev-python/importlib_metadata[${PYTHON_USEDEP}]
	dev-python/markupsafe[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/mako-1.3.9"

pkg_postinst() {
	elog "Optional dependencies:"
	optfeature "caching support" dev-python/beaker
}
