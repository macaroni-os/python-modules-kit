# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="A Python wrapper for the MediaInfo library."
HOMEPAGE="None https://pypi.org/project/pymediainfo/"
SRC_URI="https://files.pythonhosted.org/packages/5b/d1/2776403be61945d927a03cdf794c58e51b40f8e4e3cb88ee93873b2b41f1/pymediainfo-7.0.0.tar.gz -> pymediainfo-7.0.0.tar.gz"

DEPEND="dev-python/setuptools_scm[${PYTHON_USEDEP}]"
RDEPEND="
	media-libs/libmediainfo
	$(python_gen_cond_dep 'dev-python/importlib_metadata[${PYTHON_USEDEP}]' -3)"
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/pymediainfo-7.0.0"