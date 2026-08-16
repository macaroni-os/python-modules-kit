# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="meson-python"
inherit distutils-r1

DESCRIPTION="Python library for calculating contours of 2D quadrilateral grids"
HOMEPAGE="https://github.com/contourpy/contourpy https://pypi.org/project/contourpy/"
SRC_URI="https://files.pythonhosted.org/packages/f5/f6/31a8f28b4a2a4fa0e01085e542f3081ab0588eff8e589d39d775172c9792/contourpy-1.3.0.tar.gz -> contourpy-1.3.0.tar.gz
"
RDEPEND="
>=dev-python/numpy-1.23[${PYTHON_USEDEP}]
"
BDEPEND="
	>=dev-util/meson-1.2.0
	dev-util/cmake
	>=dev-python/numpy-1.23[${PYTHON_USEDEP}]
	>=dev-python/pybind11-2.13.4[${PYTHON_USEDEP}]
"
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/contourpy-1.3.0"

DISTUTILS_ARGS=(
	-Dwerror=false
)

