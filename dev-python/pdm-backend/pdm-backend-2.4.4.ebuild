# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="standalone"
inherit distutils-r1

DESCRIPTION="The build backend used by PDM that supports latest packaging standards"
HOMEPAGE="None https://pypi.org/project/pdm-backend/"
SRC_URI="https://files.pythonhosted.org/packages/8d/fc/8efb0e9060167081bcbcddeb5d9e95cee6c762391c42b0c970373a7082ff/pdm_backend-2.4.4.tar.gz -> pdm_backend-2.4.4.tar.gz"

DEPEND="
	dev-python/editables[${PYTHON_USEDEP}]
	>=dev-python/packaging-24.0[${PYTHON_USEDEP}]
	dev-python/pyproject-metadata[${PYTHON_USEDEP}]
	dev-python/tomli[${PYTHON_USEDEP}]"
RDEPEND="
	dev-python/editables[${PYTHON_USEDEP}]
	>=dev-python/packaging-24.0[${PYTHON_USEDEP}]
	dev-python/pyproject-metadata[${PYTHON_USEDEP}]
	dev-python/tomli[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/pdm_backend-2.4.4"

src_prepare() {
		rm -r src/pdm/backend/_vendor || die
		find -name '*.py' -exec sed \
				-e 's:from pdm\.backend\._vendor\.:from :' \
				-e 's:from pdm\.backend\._vendor ::' \
				-e 's:import pdm\.backend\._vendor\.:import :' \
				-i {} + || die
		distutils-r1_src_prepare
}
