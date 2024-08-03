# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="hatchling"
inherit distutils-r1

DESCRIPTION="Classes Without Boilerplate"
HOMEPAGE="None https://pypi.org/project/attrs/"
SRC_URI="https://files.pythonhosted.org/packages/39/31/ca3e2de55503d8ad75985865629f69a2c376a44428c5df1450b749d30751/attrs-24.1.0.tar.gz -> attrs-24.1.0.tar.gz"

DEPEND="
	dev-python/hatch-vcs[${PYTHON_USEDEP}]
	dev-python/hatch-fancy-pypi-readme[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/attrs-24.1.0"