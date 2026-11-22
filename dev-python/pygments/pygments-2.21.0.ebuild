# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="hatchling"
inherit distutils-r1

DESCRIPTION="Pygments is a syntax highlighting package written in Python."
HOMEPAGE="https://pygments.org"
SRC_URI="https://files.pythonhosted.org/packages/49/2e/ced460408999b33da6b31b0021b0f37d329e202d4169aeb164493778f25b/pygments-2.21.0.tar.gz -> pygments-2.21.0.tar.gz
"
LICENSE="BSD-2"
SLOT="0"
KEYWORDS="*"
RDEPEND="
>=dev-python/colorama-0.4.6[${PYTHON_USEDEP}]
"
DEPEND="

>=dev-python/colorama-0.4.6[${PYTHON_USEDEP}]
"
S="${WORKDIR}/pygments-2.21.0"
