# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="standalone"
inherit distutils-r1

DESCRIPTION="Meson Python build backend (PEP 517)"
HOMEPAGE="https://github.com/mesonbuild/meson-python https://pypi.org/project/meson-python/"
SRC_URI="https://files.pythonhosted.org/packages/72/ea/a7895f15512cae5b3b5be988d38531ad3be74b06f56f0cdcee3ffcf86108/meson_python-0.17.0.tar.gz -> meson_python-0.17.0.tar.gz"

DEPEND=""
RDEPEND="
	dev-util/patchelf
	dev-python/meson[${PYTHON_USEDEP}]
	dev-python/pyproject-metadata[${PYTHON_USEDEP}]
	dev-python/tomli[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/meson_python-0.17.0"