# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="standalone"
inherit distutils-r1

DESCRIPTION="The Python build backend for Meson projects"
HOMEPAGE="https://pypi.org/project/meson-python/"
SRC_URI="https://files.pythonhosted.org/packages/ed/f2/ab554fe4f020ec5f0ab4e4af04318e6ab99660f8d8d14e3d064db2b786a6/meson_python-0.21.1.tar.gz -> meson_python-0.21.1.tar.gz
"
LICENSE=""
SLOT="0"
KEYWORDS="*"
BDEPEND="dev-python/pyproject-metadata[${PYTHON_USEDEP}]
"
RDEPEND="
	dev-util/patchelf

	dev-python/tomli[${PYTHON_USEDEP}]
	dev-python/pyproject-metadata[${PYTHON_USEDEP}]
"
DEPEND="

	dev-util/meson

"
S="${WORKDIR}/meson_python-0.21.1"
