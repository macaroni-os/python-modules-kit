# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="standalone"
inherit distutils-r1

DESCRIPTION="Meson Python build backend (PEP 517)"
HOMEPAGE="https://pypi.org/project/meson-python/"
SRC_URI="https://files.pythonhosted.org/packages/8b/f0/d794d7ed8a843a8a8947768f3b329d1e8601222dc95d930f4a5f9706cd6c/meson_python-0.20.0.tar.gz -> meson_python-0.20.0.tar.gz
"
DEPEND="

	dev-util/meson

"
RDEPEND="
	dev-util/patchelf

	dev-python/tomli[${PYTHON_USEDEP}]
	dev-python/pyproject-metadata[${PYTHON_USEDEP}]
"
BDEPEND="dev-python/pyproject-metadata[${PYTHON_USEDEP}]
"
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/meson_python-0.20.0"
