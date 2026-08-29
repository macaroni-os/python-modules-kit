# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="standalone"
inherit distutils-r1

DESCRIPTION="Meson Python build backend (PEP 517)"
HOMEPAGE="None https://pypi.org/project/meson-python/"
SRC_URI="https://files.pythonhosted.org/packages/26/bd/fdb26366443620f1a8a4d4ec7bfa37d1fbbe7bf737b257c205bbcf95ba95/meson_python-0.18.0.tar.gz -> meson_python-0.18.0.tar.gz"

DEPEND="dev-util/meson"
RDEPEND="
	dev-util/patchelf
	dev-util/meson
	dev-python/pyproject-metadata[${PYTHON_USEDEP}]
	dev-python/tomli[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/meson_python-0.18.0"