# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Canonical source for classifiers on PyPI (pypi.org)."
HOMEPAGE="https://github.com/pypa/trove-classifiers https://pypi.org/project/trove-classifiers/"
SRC_URI="https://files.pythonhosted.org/packages/52/db/cd8510702ed0ac1215e960ab3511a7f5750d63b56f2ae94d94fb4a6425af/trove_classifiers-2025.4.11.15.tar.gz -> trove_classifiers-2025.4.11.15.tar.gz"

DEPEND="dev-python/calver[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"
S="${WORKDIR}/trove_classifiers-2025.4.11.15"