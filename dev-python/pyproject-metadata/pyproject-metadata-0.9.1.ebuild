# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="PEP 621 metadata parsing"
HOMEPAGE="None https://pypi.org/project/pyproject-metadata/"
SRC_URI="https://files.pythonhosted.org/packages/64/ae/5fa065b049e97f96880de0611dbba513f0ee313b6edd0a64664c7b46a8e8/pyproject_metadata-0.9.1.tar.gz -> pyproject_metadata-0.9.1.tar.gz"

DEPEND=""
RDEPEND="dev-python/packaging[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/pyproject_metadata-0.9.1"